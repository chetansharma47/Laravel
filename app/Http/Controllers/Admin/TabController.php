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
use App\BusinessModel\TabBusiness;
use App\Http\Controllers\Admin\ResponseController;
use App\Models\TierSetting;
use App\Models\TierCondition;
use App\User;
use Excel;
use App\Models\Venu;
use App\Models\VenueUser;

class TabController extends Controller
{

    public function tabBusiness(){
        return new TabBusiness();
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

                $count_condition = TierCondition::whereTierSettingId($tier_settings->id)->count();
            }else{
                $count_condition = 0;
            }
    		return view('admin.cust_tier_settings',compact('count_condition'));
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

        $data['customer_tier_validity_check'] = (int)str_replace(" Days", "", $data['customer_tier_validity_check']);
        $admin = Auth()->guard('admin')->user();

        $tier_find = TierSetting::whereAdminId($admin->id)->first();
        $tier_cond = null;
        if(!empty($tier_find)){

            $name_check = TierCondition::whereTierSettingId($tier_find->id)->where("unique_id_by_tier","!=", $data['unique_id_by_tier'])->whereTierName($data['tier_name'])->first();
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
        return "success";


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
        if($order == 0){
            $column = "username";
        }elseif($order == 1){
            $column = "venue_name";
        }elseif ($order == 2) {
            $column = "device_model";
        }elseif ($order == 3) {
            $column = "mac_address";
        }elseif ($order == 4) {
            $column = "authorized_status";
        }else{
            $column = "date_time";
        }

        $data = VenueUser::select("*",DB::raw("DATE_FORMAT(date_time, '%d %M %Y %h:%i %p') AS date_time"))->orderBy($column,$asc_desc);
        $total = $data->get()->count();

        $search = $request->get("search")["value"];
        $filter = $total;


        if($search){
            $data  = $data->where(function($query) use($search){
                        $query->where('username', 'Like', '%'. $search . '%');
                            $query->orWhere('venue_name', 'Like', '%' . $search . '%');
                            $query->orWhere('device_model', 'Like', '%' . $search . '%');
                            $query->orWhere('mac_address', 'Like', '%' . $search . '%');
                            $query->orWhere('authorized_status', 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("DATE_FORMAT(date_time, '%d %M %Y %h:%i %p')"), 'Like', '%' . $search . '%');
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
    		return view('admin.cash-back', compact('tier'));
    	}
    }

    public function allDataAvailability(Request $request){
    	if($request->isMethod('GET')){
            $admin = Auth()->guard('admin')->user();
            $tiers = TierSetting::whereAdminId($admin->id)->with('tierConditions')->get();

    		return view('admin.all-data-availability',compact('tiers'));
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
            if($order == 0){
                $column = "customer_id";
            }elseif($order == 1){
                $column = "mobile_number";
            }elseif ($order == 2) {
                $column = "first_name";
            }elseif ($order == 3) {
                $column = "last_name";
            }elseif ($order == 4) {
                $column = "email";
            }elseif ($order == 5) {
                $column = "nationality";
            }elseif ($order == 6) {
                $column = "dob";
            }elseif ($order == 7) {
                $column = "gender";
            }elseif ($order == 8) {
                $column = "is_active";
            }elseif ($order == 9) {
                $column = "created_at";
            }elseif ($order == 10) {
                $column = "customer_tier";
            }elseif ($order == 11) {
                $column = "wallet_cash";
            }elseif ($order == 12) {
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

                    if($request->customer_status && (int)$request->customer_status != 0){
                        $query->whereIsActive((int)$request->customer_status);
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

        $search = $request->get("search")["value"];
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
        $users = User::whereDeletedAt(null)->select('customer_id as Customer Id', 'mobile_number as Mobile Number','first_name as First Name','last_name as Last Name','email as Email Id','nationality as Nationality','dob as DOB', 'gender as Gender','is_active as Status',DB::raw("DATE_FORMAT(created_at, '%Y-%m-%d') AS Join_On"),'customer_tier as Customer Tier','wallet_cash as Wallet Cash','reference_code as Customer Referral Code','reference_by as Referral By')->get()->toArray();

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
            VenueUser::whereIn("id",$ids)->update(['authorized_status' => 'Authorized']);
        }else{
            VenueUser::whereIn("id",$ids)->update(['authorized_status' => 'Unauthorized']);
        }

        return ['status' => "success", "type" => $request->type];
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
            return view('admin.offer-settings');
        }
    }

    public function venueUser(Request $request){
        if($request->isMethod('GET')){
            return view('admin.venue-user');
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
}





