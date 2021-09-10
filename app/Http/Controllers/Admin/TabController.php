<?php

namespace App\Http\Controllers\Admin;

header('Cache-Control: no-store, private, no-cache, must-revalidate');
header('Cache-Control: pre-check=0, post-check=0, max-age=0, max-stale = 0', false);
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Hash;
use Illuminate\Support\Str;
use Session;
use Artisan;
use Carbon\Carbon;
use DB;
use App\Validation;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
use Auth;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;
use Redirect;
use Illuminate\Support\Facades\Input;
use Mail;
use App\BusinessModel\AdminAuthenticateBusiness;
use App\BusinessModel\VenueBusinessModel;
use App\BusinessModel\TabBusiness;
use App\Http\Controllers\Admin\ResponseController;
use App\Models\TierSetting;
use App\Models\TierCondition;
use App\User;
use Excel;
use App\Models\Venu;
use App\Models\VenueUser;
use App\Models\WalletCashback;
use App\Models\Cashback;
use App\Models\Event;
use App\Models\Offer;
use App\Models\OfferSetting;
use App\Models\City;
use App\Models\LoginRequest;
use Illuminate\Support\Arr;

class TabController extends Controller
{

    public function tabBusiness(){
        return new TabBusiness();
    }

    public function venueBusinessModel(){
        return new VenueBusinessModel();
    }
    public function adminTabs(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.admin_tabs');
    	}
    }

    public function customerTierSettings(Request $request){
    	if($request->isMethod('GET')){
            $admin = Auth()->guard('admin')->user();
            $tier_settings = TierSetting::whereAdminId($admin->id)->whereDeletedAt(null)->first();
            if(!empty($tier_settings)){

                $last_tier_cond = TierCondition::whereTierSettingId($tier_settings->id)->orderBy("id","desc")->first();
                if(!empty($last_tier_cond)){

                    $last_tier_cond_unique_id = $last_tier_cond->unique_id_by_tier;
                }else{
                    $last_tier_cond_unique_id = 0;
                }
            }else{
                $last_tier_cond_unique_id = 0;
            }
    		return view('admin.cust_tier_settings',compact('last_tier_cond_unique_id','tier_settings'));
    	}
    }

    public function customerTierSettingsAjax(Request $request){
        $admin = Auth()->guard('admin')->user();
        $tier_settings = TierSetting::whereAdminId($admin->id)->whereDeletedAt(null)->with('tierConditions')->first();
        return $tier_settings;

    }

    public function customerTierNameRemove(Request $request){
        $admin = Auth()->guard('admin')->user();
        $tier_find = TierSetting::whereAdminId($admin->id)->first();
        if(!empty($tier_find)){

            $tier_cond_find = TierCondition::where("unique_id_by_tier","=",$request->unique_id_by_tier)->whereTierSettingId($tier_find->id)->first();

            if(!empty($tier_cond_find)){

                $tier_cond_find->deleted_at = Carbon::now();
                $tier_cond_find->update();

                $first_tier_cond = TierCondition::whereTierSettingId($tier_find->id)->whereDeletedAt(null)->first();

                if(!empty($first_tier_cond)){

                    User::whereIn('customer_tier',array($tier_cond_find->tier_name))->update(['customer_tier' => $first_tier_cond->tier_name]);
                }else{
                    User::whereIn('customer_tier',array($tier_cond_find->tier_name))->update(['customer_tier' => null]);
                }
            }
        }



        return "success";
    }

    public function addCustomerTierAjax(Request $request){
        $data = $request->all();

        $data['transaction_amount_check_last_days'] = str_replace("Last ", "", $data['transaction_amount_check_last_days']);
        $data['transaction_amount_check_last_days'] = (int)str_replace(" Days", "", $data['transaction_amount_check_last_days']);

        $data['customer_tier_validity_check'] = (int)str_replace(" Days from status change", "", $data['customer_tier_validity_check']);
        $admin = Auth()->guard('admin')->user();

        $tier_find = TierSetting::whereAdminId($admin->id)->first();
        $tier_cond = null;
        if(!empty($tier_find)){

            $name_check = TierCondition::whereTierSettingId($tier_find->id)->where("unique_id_by_tier","!=", $data['unique_id_by_tier'])->whereTierName($data['tier_name'])->whereDeletedAt(null)->first();
            if(!empty($name_check)){
                return response()->json(['tier_name_err' => "Tier name already exists."],422);
            }

            $tier_cond = TierCondition::where("unique_id_by_tier","=",$data['unique_id_by_tier'])->whereTierSettingId($tier_find->id)->first();
        }
        
        if(!empty($tier_find)){

            if(!empty($tier_cond)){

                $amount_check = TierCondition::where(function($query) use ($tier_find, $data, $tier_cond){
                                            $query->whereTierSettingId($tier_find->id);
                                            $query->whereBetween('from_amount',[$data['from_amount'],$data['to_amount']]);
                                            $query->where("unique_id_by_tier","!=",$tier_cond->unique_id_by_tier);
                                            $query->whereDeletedAt(null);
                                        })->orWhere(function($query) use ($tier_find, $data, $tier_cond){
                                            $query->whereTierSettingId($tier_find->id);
                                            $query->whereBetween('to_amount',[$data['from_amount'],$data['to_amount']]);
                                            $query->where("unique_id_by_tier","!=",$tier_cond->unique_id_by_tier);
                                            $query->whereDeletedAt(null);
                                        })
                                        ->first();
            }else{
                $amount_check = TierCondition::where(function($query) use ($tier_find, $data){
                                            $query->whereTierSettingId($tier_find->id);
                                            $query->whereBetween('from_amount',[$data['from_amount'],$data['to_amount']]);
                                            $query->whereDeletedAt(null);
                                        })->orWhere(function($query) use ($tier_find, $data){
                                            $query->whereTierSettingId($tier_find->id);
                                            $query->whereBetween('to_amount',[$data['from_amount'],$data['to_amount']]);
                                            $query->whereDeletedAt(null);
                                        })->orWhere(function($query) use ($tier_find, $data){
                                            $query->whereTierSettingId($tier_find->id);
                                            $query->where('from_amount','<=', $data['from_amount']);
                                            $query->where('to_amount','>=',$data['to_amount']);
                                            $query->whereDeletedAt(null);
                                        })
                                        ->first();
            }

            if($amount_check){
                return response()->json(['amount_err' => "Transaction amount already exists. Please enter different amount."],422);
            }
        }
        $save_tier = $this->tabBusiness()->saveTier($data, $admin, $tier_find);
        return $save_tier;


    }

    public function customerTierSettingsGold(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.cust_tier_settings2');
    	}
    }

    public function customerTierSettingsDimond(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.cust_tier_settings3');
    	}
    }

    public function addingVenueTable(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.adding_venue_table');
    	}

        if ($request->isMethod('POST')) {
            $column = "id";
            $asc_desc = $request->get("order")[0]['dir'];
         
        if($asc_desc == "asc"){
            $asc_desc = "desc";
        }else{
            $asc_desc = "asc";
        }

        $order = $request->get("order")[0]['column'];
        if($order == 1){
            $column = "username";
        }elseif($order == 2){
            $column = "venue_name";
        }elseif ($order == 3) {
            $column = "device_model";
        }elseif ($order == 4) {
            $column = "mac_address";
        }elseif ($order == 5) {
            $column = "authorized_status";
        }elseif($order == 6){
            $column = "date_time";
        }

        $data =LoginRequest::select("*",DB::raw("DATE_FORMAT(date_time, '%d %M %Y %h:%i %p') AS date_time"),DB::raw("(select username from venue_users where id = login_requests.venue_user_id) AS username"),DB::raw("(select venue_name from venus where id = login_requests.venu_id) AS venue_name"))->whereDeletedAt(null)->orderBy($column,$asc_desc);
        $total = $data->count();

        $search = $request->get("search")["value"];
        $filter = $total;


        if($search){
            $data  = $data->where(function($query) use($search){
                            
                            $query->orWhereHas('venueUser', function($insideQuery) use ($search){
                                return $insideQuery->where('username', 'like', '%'.$search.'%');
                            });

                            //$query->orWhere('venue_name', 'Like', '%' . $search . '%');
                            $query->orWhere('device_model', 'Like', '%' . $search . '%');
                            $query->orWhere('mac_address', 'Like', '%' . $search . '%');
                            $query->orWhere('authorized_status', 'Like', $search . '%');
                            $query->orWhere(DB::raw("DATE_FORMAT(date_time, '%d %M %Y %h:%i %p')"), 'Like', '%' . $search . '%');
                            $query->orWhereHas('venu', function($insideQuery) use ($search){
                                return $insideQuery->where('venue_name', 'like', '%'.$search.'%');
                            });
                    });

            $filter = $data->get()->count();
                            
        }

        $data = $data->offset($request->start);
        $data = $data->take($request->length);
        $data = $data->with('venu')->get();


        $start_from = $request->start;
        if($start_from == 0){
            $start_from  = 1;
        }
        if($start_from % 10 == 0){
            $start_from = $start_from + 1;
        }


        foreach ($data as $k => $user_select) {
                

                /*$view_user = url('admin/view_user').'/'.base64_encode($user_select->id);
                $edit_user = url('admin/edit-user').'/'.base64_encode($user_select->id);

                $block_link = url('admin/block-user').'/'.base64_encode($user_select->id);

                $delete_user = url('admin/delete-user').'/'.base64_encode($user_select->id);

                if($user_select->block == 1){
                    $hyper_link = '<a href="'.$block_link.'" class="btn btn-danger" title="Unblock user">Unblock</a>';
                }else{
                    $hyper_link = '<a href="'.$block_link.'" class="btn btn-danger" title="Block user">Block</a>';
                }

               $btn = '<a href="'.$view_user.'" class="btn btn-success" title="View user detail">View</a> <a href="'.$edit_user.'" class="btn btn-success" title="Update user detail">Edit</a>'.$hyper_link.'<a href="'.$delete_user.'" class="btn btn-danger" title="Delete user" onclick="return confirm(Do you really want to delete this user ?)">Delete</a>';


                $user_select->action = $btn;*/
                $user_select->selection = '<label class="app_checkboxes" data-id = "'.$user_select->id.'" key_type="checkbox">
                                            <input type="checkbox" class="single_checkbox" data-id = "'.$user_select->id.'" key_type="checkbox">
                                            <span class="checkmark" data-id = "'.$user_select->id.'" key_type="checkbox"></span>
                                        </label>';
                $user_select->DT_RowIndex = $start_from++;
            }


            $return_data = [
                    "data" => $data,
                    "draw" => (int)$request->draw,
                    "recordsTotal" => $total,
                    "recordsFiltered" => $filter,
                    "input" => $request->all()
            ];
            return response()->json($return_data);
        }
    }

    public function cashBack(Request $request){
    	if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $tier = TierSetting::whereAdminId($admin->id)->with('tierConditions')->first();
            $wallet_cashback = WalletCashback::whereAdminId($admin->id)->whereDeletedAt(null)->first();
            $venues = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();
            $cashback_last = Cashback::whereAdminId($admin->id)->orderBy('id','desc')->first();
            if(!empty($cashback_last)){
                $last_id = $cashback_last->unique_id_cashback;
            }else{
                $last_id = 0;
            }
    		return view('admin.cash-back', compact('tier','wallet_cashback','venues','last_id','cashback_last'));
    	}

        if($request->isMethod('POST')){
            $data = $request->all();
            $loyality_cashback = $this->tabBusiness()->loyalityCashBackPage($data);
            return $loyality_cashback;
        }
    }

    public function cashBackAccordingToVenue(Request $request){
        $venue_id = $request->venue_id;
        $venue = Venu::whereId($venue_id)->with('cashbacks')->first();
        return $venue;
    }

    public function cashbackSave(Request $request){
        $data = $request->all();
        $admin = Auth::guard('admin')->user();
        $save_cashback = $this->tabBusiness()->saveCashback($data, $admin);
        return $save_cashback;
    }

    public function deleteCashback(Request $request){
        $active_cashback_unique_id = $request->active_cashback_unique_id;
        $cashback_find = Cashback::whereUniqueIdCashback($active_cashback_unique_id)->first();
        if(!empty($cashback_find)){

            $cashback_find->deleted_at = Carbon::now();
            $cashback_find->update();
            return $cashback_find;
        }
    }

    public function allDataAvailability(Request $request){
    	if($request->isMethod('GET')){
            $admin = Auth()->guard('admin')->user();
            $tiers = TierSetting::whereAdminId($admin->id)->with('tierConditions')->get();
            $venues = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();

    		return view('admin.all-data-availability',compact('tiers','venues'));
    	}

        if ($request->isMethod('POST')) {
            $admin = Auth()->guard('admin')->user();
            $column = "id";
            $asc_desc = $request->get("order")[0]['dir'];
         
         if($asc_desc == "asc"){
             $asc_desc = "desc";
         }else{
             $asc_desc = "asc";
         }

         $order = $request->get("order")[0]['column'];
            if($order == 0){
                $column = "id";
            }elseif($order == 1){
                $column = "customer_id";
            }elseif($order == 2){
                $column = "mobile_number";
            }elseif ($order == 3) {
                $column = "first_name";
            }elseif ($order == 4) {
                $column = "last_name";
            }elseif ($order == 5) {
                $column = "email";
            }elseif ($order == 6) {
                $column = "nationality";
            }elseif ($order == 7) {
                $column = "dob";
            }elseif ($order == 8) {
                $column = "gender";
            }elseif ($order == 9) {
                $column = "is_active";
            }elseif ($order == 10) {
                $column = "created_at";
            }elseif ($order == 11) {
                $column = "customer_tier";
            }elseif ($order == 12) {
                $column = "wallet_cash";
            }elseif ($order == 13) {
                $column = "reference_code";
            }else{
                $column = "reference_by";
            }

            $tier_find = TierCondition::whereId($request->tier)->first();

            $data = User::select("*",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS full_name'),DB::raw('CONCAT(users.country_code, " ", users.mobile_number) AS country_code_with_phone_number'),DB::raw("DATE_FORMAT(dob, '%d-%M-%Y') AS dob"),DB::raw("DATE_FORMAT(created_at, '%d-%M-%Y') AS join_date"))
                ->where(function($query) use ($request, $tier_find){
                    $query->whereDeletedAt(null);
                    if($request->joined_from && $request->joined_to){
                        $query->whereBetween(DB::raw('date(created_at)'),[$request->joined_from, $request->joined_to]);
                    }else if($request->joined_from){
                        $query->where(DB::raw('date(created_at)'),'>=', $request->joined_from);
                    }else if($request->joined_to){
                        $query->where(DB::raw('date(created_at)'),'<=', $request->joined_to);
                    }

                    if($request->gender){
                        $query->whereGender($request->gender);
                    }

                    if($request->customer_status){
                        $query->whereIsActive($request->customer_status);
                    }

                    if($tier_find){
                        $query->whereCustomerTier($tier_find->tier_name);
                    }

                    if($request->email){
                        $query->where('email', 'Like', '%' . $request->email . '%');
                    }

                    if($request->mobile_number){
                        $query->where(DB::raw('CONCAT(users.country_code, " ", users.mobile_number)'), 'Like', '%' . $request->mobile_number . '%');
    
                    }
                })->orderBy($column,$asc_desc);
        $total = $data->get()->count();

        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }else{

            $search = $request->search_txt;
        }
        $filter = $total;


        if($search){
            $data  = $data->where(function($query) use($search){
                        $query->where('customer_id', 'Like', '%'. $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.country_code, " ", users.mobile_number)'), 'Like', '%' . $search . '%');
                        $query->orWhere('first_name', 'Like', '%' . $search . '%');
                        $query->orWhere('last_name', 'Like', '%' . $search . '%');
                        $query->orWhere('email', 'Like', '%' . $search . '%');
                        $query->orWhere('nationality', 'Like', '%' . $search . '%');
                        $query->orWhereDate(DB::raw("DATE_FORMAT(dob, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                        $query->orWhere('gender', 'Like', '%' . $search . '%');
                        $query->orWhere('is_active', 'Like', '%' . $search . '%');
                        $query->orWhereDate(DB::raw("DATE_FORMAT(created_at, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                        $query->orWhere('customer_tier', 'Like', '%' . $search . '%');
                        $query->orWhere('wallet_cash', 'Like', '%' . $search . '%');
                        $query->orWhere('reference_code', 'Like', '%' . $search . '%');
                        $query->orWhere('reference_by', 'Like', '%' . $search . '%');

                            // ->orWhereHas('category', function($insideQuery) use ($search){
                            //     return $insideQuery->where('category_name', 'like', '%'.$search.'%');
                            // })
                    });

            $filter = $data->get()->count();
                            
        }

        $data = $data->offset($request->start);
        $data = $data->take($request->length);
        $data = $data->get();


        $start_from = $request->start;
        if($start_from == 0){
            $start_from  = 1;
        }
        if($start_from % 10 == 0){
            $start_from = $start_from + 1;
        }


        foreach ($data as $k => $user_select) {
                

                /*$view_user = url('admin/view_user').'/'.base64_encode($user_select->id);
                $edit_user = url('admin/edit-user').'/'.base64_encode($user_select->id);

                $block_link = url('admin/block-user').'/'.base64_encode($user_select->id);

                $delete_user = url('admin/delete-user').'/'.base64_encode($user_select->id);

                if($user_select->block == 1){
                    $hyper_link = '<a href="'.$block_link.'" class="btn btn-danger" title="Unblock user">Unblock</a>';
                }else{
                    $hyper_link = '<a href="'.$block_link.'" class="btn btn-danger" title="Block user">Block</a>';
                }

               $btn = '<a href="'.$view_user.'" class="btn btn-success" title="View user detail">View</a> <a href="'.$edit_user.'" class="btn btn-success" title="Update user detail">Edit</a>'.$hyper_link.'<a href="'.$delete_user.'" class="btn btn-danger" title="Delete user" onclick="return confirm(Do you really want to delete this user ?)">Delete</a>';


                $user_select->action = $btn;*/
                $user_select->select = '<label class="app_checkboxes" data-id = "'.$user_select->id.'" key_type="checkbox">
                                            <input type="checkbox" class="single_checkbox" data-id = "'.$user_select->id.'" key_type="checkbox">
                                            <span class="checkmark" data-id = "'.$user_select->id.'" key_type="checkbox"></span>
                                        </label>';
                $user_select->password = "************";
                $user_select->DT_RowIndex = $start_from++;

                if(empty($user_select->customer_tier)){
                    $tier_setting = TierSetting::whereAdminId($admin->id)->whereDeletedAt(null)->first();
                    if(!empty($tier_setting)){
                        $tier_cond_find_data = TierCondition::whereTierSettingId($tier_setting->id)->whereDeletedAt(null)->first();
                        if($tier_cond_find_data){

                            $user_select->customer_tier = $tier_cond_find_data->tier_name;
                        }else{
                            $user_select->customer_tier = "N/A";
                        }
                    }else{
                        $user_select->customer_tier = "N/A";
                    } 
                }
            }


            $return_data = [
                    "data" => $data,
                    "draw" => (int)$request->draw,
                    "recordsTotal" => $total,
                    "recordsFiltered" => $filter,
                    "input" => $request->all()
            ];
            return response()->json($return_data);
        }
        

    }

    public function downloadUsers(Request $request){
        $users = User::whereDeletedAt(null)->select('customer_id as Customer Id', 'mobile_number as Mobile Number','first_name as First Name','last_name as Last Name','email as Email Id','nationality as Nationality','dob as DOB', 'gender as Gender','is_active as Status',DB::raw("DATE_FORMAT(created_at, '%Y-%m-%d') AS Join_On"),'customer_tier as Customer Tier','wallet_cash as Wallet Cash','reference_code as Customer Referral Code','reference_by as Referral By')->orderBy("id","desc")->get()->toArray();

        return $download =  Excel::create('export-users', function($excel) use ($users){

            $excel->sheet('export-users', function($sheet) use ($users){

                $sheet->fromArray($users);

            });

        })->download('csv');

    }

    public function updateUserData(Request $request){
        $data = $request->arrayData;
        foreach ($data as $d) {
            $user_find = User::find($d['selected_data_id']);
            $user_find->update([ $d['selected_key_name'] => $d['text'] ]);

            if(isset($d['selected_key_name']) && $d['selected_key_name'] == "first_name"){
                User::whereIn('reference_code',array($user_find->customer_id))->update(['reference_by' => $user_find->first_name . " " . $user_find->last_name]);
            }else if(isset($d['selected_key_name']) && $d['selected_key_name'] == "last_name"){
                User::whereIn('reference_code',array($user_find->customer_id))->update(['reference_by' => $user_find->first_name . " " . $user_find->last_name]);
            }
        }

        return "success";

    }

    public function blockUsers(Request $request){
        $ids = explode(",", $request->ids);
        User::whereIn("id", $ids)->update(['is_block' => 1]);
        return "success";

    }

    public function unBlockUsers(Request $request){
        $ids = explode(",", $request->ids);
        User::whereIn("id", $ids)->update(['is_block' => 0]);
        return "success";
    }

    public function authorizedUnauthorized(Request $request){
        $ids = explode(",", $request->ids);
        if($request->type == "authorized"){
            LoginRequest::whereIn("id",$ids)->update(['authorized_status' => 'Authorized']);
        }else{
            LoginRequest::whereIn("id",$ids)->update(['authorized_status' => 'Unauthorized']);
        }

        return ['status' => "success", "type" => $request->type, 'ids' => $ids];
    }

    public function addingVenue(Request $request){
        if($request->isMethod('GET')){
            return view('admin.adding-venue');
        }
    }

    public function addingEvents(Request $request){
        if($request->isMethod('GET')){
            return view('admin.adding-events');
        }
    }

    public function offerSettings(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $venu = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();
            return view('admin.offer-settings',compact('venu'));
        }
    }

    public function venueUser(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $venulist = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();
            return view('admin.venue-user',compact('venulist'));
        }
    }

    public function notificationSetting(Request $request){
        if($request->isMethod('GET')){
            return view('admin.notifications-settings');
        }
    }

    public function adminUser(Request $request){
        if($request->isMethod('GET')){
            return view('admin.admin-user');
        }
    }

    public function performanceDashboard(Request $request){
        if($request->isMethod('GET')){
            return view('admin.performance-dashboard');
        }
    }

    public function crossVerificationSales(Request $request){
        if($request->isMethod('GET')){
            return view('admin.cross-verification-sales');
        }
    }

    public function generalSettings(Request $request){
        if($request->isMethod('GET')){
            return view('admin.general-settings');
        }
    }

    public function CreateVenue(Request $request){
        if($request->isMethod('POST')){

            $admin = Auth::guard('admin')->user();

            $checkUser = VenueUser::whereUsername($request->v_user)->first();

            if(!empty($checkUser)){
                return response()->json(['username_err' => 'Username already exists.'],422);
            }

            $hashpassword = Hash::make($request->v_password);

            $venuecreate = new VenueUser;
            $venuecreate->username = $request->v_user;
            $venuecreate->password = $hashpassword;
            $venuecreate->venu_id = $request->v_name;
            $venuecreate->status = $request->v_status;
            $venuecreate->date_time = Carbon::now();
            $venuecreate->created_by = "Admin";
            $venuecreate->updated_by = "Admin";
            $venuecreate->save();

            if($venuecreate){
                return response()->json(['message' => 'Venue user added successfully.']);
            }

                return response()->json(['username_err' => 'Something went wrong.'],422);
        }

        if($request->isMethod('GET')){
            if($request->ajax()){
                return Datatables()->of(VenueUser::query())->make(true);
            }
        }
    }

    public function venueTableRecords(Request $request){

        if($request->isMethod('POST')){
            $admin_id = Auth::guard('admin')->user()->id;
            $asc_desc = $request->get('order')[0]['dir'];
            $column_id = $request->get('order')[0]['column'];
            $search = $request->get("search")["value"];
            $colname = $request->get('columns');

            $column = "id";

            $order = $request->get("order")[0]['column'];

            if($order == 1){
                $column = "username";
            }else if($order == 2){
                $column = "password";
            }else if($order == 3){
                $column = "venue_name";
            }else if($order == 4){
                $column = "status";
            }else if($order == 5){
                $column = "created_at";
            }else if($order == 6){
                $column = "created_by";
            }else if($order == 7){
                $column = "updated_at";
            }else if($order == 8) {
                $column = "updated_by";
            }

            $data = VenueUser::select('*',DB::raw("(select venue_name from venus where id = venue_users.venu_id) AS venue_name"))->whereDeletedAt(null)->orderBy($column,$asc_desc);
            $total = $data->count();
            $filter = $total;

            if($search){
                 $data  = $data->where(function($query) use($search){
                        $query->where('username', 'Like', '%'. $search . '%');
                        $query->orWhereHas('venu', function($query) use ($search){
                                $query->where('venue_name', 'like', '%'.$search.'%');
                            });
                        $query->orWhere('status', 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(created_at, '%Y %M %d %H:%i:%s %p')"), 'Like', '%' . $search . '%');
                        $query->orWhere('status', 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(updated_at, '%Y %M %d %H:%i:%s %p')"), 'Like', '%' . $search . '%');
                    });
            


                $filter = $data->get()->count();
            }

            $data = $data->offset($request->start);
            $data = $data->take($request->length);
            $data = $data->get();

            $start_from = $request->start;
            if($start_from == 0){
                $start_from  = 1;
            }
            if($start_from % 10 == 0){
                $start_from = $start_from + 1;
            }

            foreach($data as $da){
                $da->password = "******";
                $da->DT_RowIndex = $start_from++;
            }

            $return_data = [
                    "data" => $data,
                    "draw" => (int)$request->draw,
                    "recordsTotal" => $total,
                    "recordsFiltered" => $filter,
                    "input" => $request->all(),
            ];

            return response()->json($return_data);

        }
    }

    public function editVenueTable(Request $request){
        if($request->isMethod('POST')){
            $allData = $request->arr;

            foreach ($allData as $v) {

                if($v['key_type'] == "username"){

                    $venu_user_duplicate = VenueUser::where('id','!=', $v['data_id'])->where('username','=', $v['text'])->first();
                    if($venu_user_duplicate){
                        
                        return response()->json(['venue_username_err' => "Username already exists."], 422);
                    }
                }
            }

            foreach($allData as $val){
                $venu = VenueUser::find($val['data_id']);

                if($val['key_type'] == 'password'){
                    $hash = Hash::make($val['text']);
                    $venu->update([ $val['key_type'] => $hash ]);
                }else{

                    $venu->update([ $val['key_type'] => $val['text'] ]);
                }
            }

            return response()->json(['msg' => 'Users has been updated successfully.']);
        }
    }


    public function venueList(Request $request){
        if($request->isMethod('GET')){
            $auth = Auth::guard('admin')->user();
            $last_venue = Venu::whereAdminId($auth->id)->orderBy('unique_id','desc')->first();
            $vlist = Venu::whereAdminId($auth->id)->whereDeletedAt(null)->orderBy('unique_id','asc')->get();
            return response()->json(['list' => $vlist,'last_venue' => $last_venue]);
        }
    }

    public function venueRemove(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $vlist = Venu::whereAdminId($admin->id)->whereUniqueId($request->elem_id)->whereDeletedAt(null)->first();
            if(!empty($vlist)){

                $count_event = Event::whereVenuId($vlist->id)->whereDeletedAt(null)->count();

                $count_offer = Offer::whereVenuId($vlist->id)->where('offer_type','!=','BirthdayOffer')->whereDeletedAt(null)->count();

                if($count_event > 0 || $count_offer > 0){
                    return response()->json(['remove_venue_err' => "You can not delete this venue because of some offers and events associated with it."],422);
                }

                $vlist->deleted_at = Carbon::now();
                $vlist->update();

                VenueUser::whereIn('venu_id',[$vlist->id])->update(['deleted_at' => Carbon::now()]);
                LoginRequest::whereIn('venu_id',[$vlist->id])->update(['deleted_at' => Carbon::now()]);
                return response()->json('Venue deleted successfully.');
            }
        }
    }

    public function venuSave(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $data = $request->all();

            $check_venue = Venu::whereDeletedAt(null)->where('unique_id','!=',$data['uniq'])->whereVenueName($data['vname'])->first();

            if(!empty($check_venue)){
                return response()->json(['venue_name_err' => "Venue name already exists."],422);
            }
            $saveVenu = $this->venueBusinessModel()->VenueCreate($data,$admin);
            return response()->json($saveVenu);
        }
    }

    Public function allVenuEvents(Request $request){
        if($request->isMethod('GET')){
             $admin = Auth::guard('admin')->user();
             $vlist = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();
             if($vlist){
                return response()->json(['message' => 200 , 'venulist' => $vlist]);
             }
                return response()->json(['message' => 404]);
        }
    }

    public function ParticularVenu(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
             $venuelist = Venu::whereAdminId($admin->id)->whereId($request->venu_id)->first();
             if($venuelist){
                return response()->json(['message' => 200 ,'venuls' => $venuelist]);
             }
                return response()->json(['message' => 404]);
        }
    }

    public function SaveEvent(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $data = $request->all();


            $check_event = Event::whereDeletedAt(null)->where('unique_id','!=',$data['uniq'])->where('venu_id','=', $data['eventvenueid'])->whereEventName($data['eventname'])->first();

            if(!empty($check_event)){
                return response()->json(['event_name_err' => "Event name already exists."],422);
            }

            $saveEvent = $this->venueBusinessModel()->eventCreate($data,$admin);
            if($saveEvent){
                return response()->json($saveEvent);
            }
            return response()->json(['message' => 404]);
        }
    }

    public function eventsallData(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $venu_list = Venu::whereDeletedAt(null)->get();
            $last_event = Event::whereAdminId($admin->id)->orderBy("unique_id","desc")->first();
            $eventlist = Event::whereAdminId($admin->id)->whereDeletedAt(null)->orderBy('unique_id','asc')->with('venu','venueAll')->get();
            return response()->json(['list' => $eventlist,'last_event' => $last_event]);
        }
    }


    public function eventRemove(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $event_remove = Event::whereAdminId($admin->id)->whereUniqueId($request->uniq_id)->first();

            if(!empty($event_remove)){
                $event_remove->deleted_at = Carbon::now();
                $event_remove->update();
                return response()->json('Event deleted successfully.');
            }
        }
    }


    public function venuSelect(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $venuOffers = Venu::whereAdminId($admin->id)->whereId($request->venuid)->whereDeletedAt(null)->first();
            $cityall = City::all();

            if($venuOffers){
                return response()->json(['message' => 200 , 'venuOffers' => $venuOffers,'cityall' => $cityall]);
            }
                return response()->json(['message' => 404]);

        }
    }
    public function saveOffers(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $data = $request->all();

                $check_offer = Offer::whereDeletedAt(null)->where('unique_id','!=',$data['uniq_id'])->whereOfferName($data['offer_name'])->whereVenuId($data['venu_id'])->first();

                if(!empty($check_offer)){
                    return response()->json(['offer_name_err' => "Offer name already exists."],422);
                }

            $saveOffer = $this->venueBusinessModel()->offersCreate($data,$admin);
            if($saveOffer){
                return response()->json($saveOffer);
            }
                return response()->json('Something went wrong.');
            
        }
    }

    public function AllOffers(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $last_offer = Offer::whereAdminId($admin->id)->orderBy("unique_id","desc")->first();
            $offer = Offer::whereAdminId($admin->id)->whereDeletedAt(null)->orderBy('unique_id','asc')->with(['offerSetting','venu','offerSetting.city'])->get();
            $cityall = City::all();
            return ['offer' => $offer, 'cityall' => $cityall,'last_offer' => $last_offer];
        }
    }

    public function offerRemove(Request $request){
         if($request->isMethod('POST')){
             $admin = Auth::guard('admin')->user();
             $data = $request->all();
             $offer_remove = Offer::whereAdminId($admin->id)->whereUniqueId($request->uniq_id)->first();

            if(!empty($offer_remove)){
                $offer_remove->deleted_at = Carbon::now();
                $offer_remove->update();
                return response()->json('Offer deleted successfully.');
            }
         }
    }


    public function activateUsers(Request $request){
        $ids = explode(",", $request->ids);
        User::whereIn("id", $ids)->update(['is_active' => "Active",'is_block' => 0]);
        return ['status' => "success","ids" => $ids];
    }

    public function deactivateUsers(Request $request){
        $ids = explode(",", $request->ids);
        User::whereIn("id", $ids)->update(['is_active' => "Inactive", 'is_block' => 1]);
        return ['status' => "success","ids" => $ids];
    }

    public function totalTransactionAmountForDays(Request $request){
        $days = $request->transaction_amount_check_last_days;
        $admin = Auth::guard('admin')->user();
        TierSetting::whereAdminId($admin->id)->update(['transaction_amount_check_last_days' => $days]);
        return "success";
    }

    public function totalValidateCheckForDays(Request $request){

        $days = $request->customer_tier_validity_check;
        $admin = Auth::guard('admin')->user();
        TierSetting::whereAdminId($admin->id)->update(['customer_tier_validity_check' => $days]);
        return "success";

    }
}





