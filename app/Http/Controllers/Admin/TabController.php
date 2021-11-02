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
use App\BusinessModel\BadgeBusinessModel;
use App\BusinessModel\TabBusiness;
use App\Http\Controllers\Admin\ResponseController;
use App\Models\TierSetting;
use App\Models\TierCondition;
use App\User;
use Excel;
use App\Models\Venu;
use App\Models\VenueUser;
use App\Models\WalletCashback;
use App\Models\WalletTransaction;
use App\Models\Cashback;
use App\Models\Event;
use App\Models\Offer;
use App\Models\OfferSetting;
use App\Models\City;
use App\Models\UserAssignOffer;
use App\Models\LoginRequest;
use App\Models\Badge;
use App\Models\AssignBadge;
use App\Models\AssignUserVenue;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;
use App\Models\Country;
use Illuminate\Support\Arr;
use App\Jobs\EventNotificationJob;
use App\Mail\NewEventCreateMail;
use App\Mail\OfferAssignMail;
use App\Mail\CashbackEmail;
require_once $_SERVER['DOCUMENT_ROOT'].'/vendor/autoload.php';

class TabController extends ResponseController
{

    public function tabBusiness(){
        return new TabBusiness();
    }

    public function venueBusinessModel(){
        return new VenueBusinessModel();
    }

    public function badgeBusinessModel(){
        return new BadgeBusinessModel();
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
            $first_tier_unique_id = "";
            if(!empty($tier_settings)){

                $last_tier_cond = TierCondition::whereTierSettingId($tier_settings->id)->orderBy("id","desc")->first();
                if(!empty($last_tier_cond)){

                    $last_tier_cond_unique_id = $last_tier_cond->unique_id_by_tier;
                }else{
                    $last_tier_cond_unique_id = 0;
                }
                $first_tier = TierCondition::whereDeletedAt(null)->first();
                $first_tier_unique_id = $first_tier->unique_id_by_tier;
            }else{
                $last_tier_cond_unique_id = 0;
            }
    		return view('admin.cust_tier_settings',compact('last_tier_cond_unique_id','tier_settings','first_tier_unique_id'));
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


                

                $transaction_amount_check_last_days = 30;
                $customer_tier_validity_check = 30;
                $tier_setting = TierSetting::first();
                if(!empty($tier_setting)){
                    $transaction_amount_check_last_days = $tier_setting->transaction_amount_check_last_days;
                    $customer_tier_validity_check = $tier_setting->customer_tier_validity_check;
                }
                $last_30_days_transaction_amount = Carbon::now()->subDays($transaction_amount_check_last_days);

                $last_validity_check_days = Carbon::now()->subDays($customer_tier_validity_check);
                $first_tier_cond = TierCondition::whereTierSettingId($tier_find->id)->whereDeletedAt(null)->first();

                if(!empty($first_tier_cond)){

                    $users_get_accroding_to_tier = User::whereIn('customer_tier',array($tier_cond_find->tier_name))->get();
                    foreach ($users_get_accroding_to_tier as $user_find) {

                        $total_amount_transaction = WalletTransaction::where(function($query) use ($transaction_amount_check_last_days,$customer_tier_validity_check, $user_find, $last_30_days_transaction_amount, $last_validity_check_days){
                                $query->whereUserId($user_find->id);
                                $query->whereDate('created_at','<=',Carbon::now()->toDateString());
                                $query->whereDate('created_at','>=',$last_30_days_transaction_amount->toDateString());
                            })->sum('total_bill_amount');

                        $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('from_amount', '<=', $total_amount_transaction)->where('to_amount', '>=', $total_amount_transaction)->first();

                        if(empty($amount_between_tier_find)){

                            //preveious tier found according to total amount transaction
                            $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','<=', $total_amount_transaction)->orderBy('to_amount','desc')->first();


                            
                            if(!empty($amount_between_tier_find)){

                                $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                $user_find->tier_update_date = Carbon::now()->toDateString();
                                $user_find->update();
                            }
                            

                            if(empty($amount_between_tier_find)){

                                //next tier found according to transaction amount total
                                $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','>=', $total_amount_transaction)->orderBy('to_amount','asc')->first();

                                if(!empty($amount_between_tier_find)){

                                    $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                    $user_find->tier_update_date = Carbon::now()->toDateString();
                                    $user_find->update();
                                }
                            }


                        }else{
                            $user_find->customer_tier = $amount_between_tier_find->tier_name;
                            $user_find->tier_update_date = Carbon::now()->toDateString();
                            $user_find->update();
                        }
                    }

                    // User::whereIn('customer_tier',array($tier_cond_find->tier_name))->update(['customer_tier' => $first_tier_cond->tier_name]);
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
            $offers = Offer::whereAdminId($admin->id)->whereDeletedAt(null)->get();
            $venue_users = VenueUser::whereDeletedAt(null)->get();

            return view('admin.all-data-availability',compact('tiers','venues','offers','venue_users'));
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
                        $query->orWhere('customer_id', 'Like', '%'. $search . '%');
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
                
                $user_select->wallet_cash = round($user_select->wallet_cash,2);
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

    public function walletTransactions(Request $request){

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
            $column = "description";
        }elseif ($order == 4) {
            $column = "cashback_earned";
        }elseif ($order == 5) {
            $column = "wallet_cash";
        }else {
            $column = "date_and_time";
        }


        $data = WalletTransaction::select("id","description","cashback_earned",DB::raw("DATE_FORMAT(date_and_time, '%d-%M-%Y %H:%i %p') AS date_and_time"),DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_transactions.user_id) AS mobile_number"),DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS wallet_cash"))->where('venue_user_id','!=',null)->orderBy($column,$asc_desc);

            
        $total = $data->get()->count();

        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }else{

            $search = $request->search_txt;
        }
        $filter = $total;

        if($search){
            $data  = $data->where(function($query) use($search){
                        $query->orWhere(DB::raw("(select customer_id from users where id = wallet_transactions.user_id)"), 'Like', '%'. $search . '%');
                        $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere('description', 'Like', '%' . $search . '%');
                        $query->orWhere('cashback_earned', 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(date_and_time, '%d-%M-%Y %H:%i %p')"), 'Like', '%' . $search . '%');
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
                
            $user_select->DT_RowIndex = $start_from++;

            $user_select->wallet_cash = round($user_select->wallet_cash,2);
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

    public function downloadUsers(Request $request){
        $users = User::whereDeletedAt(null)->select('customer_id as Customer Id', 'mobile_number as Mobile Number','first_name as First Name','last_name as Last Name','email as Email Id','nationality as Nationality','dob as DOB', 'gender as Gender','is_active as Status',DB::raw("DATE_FORMAT(created_at, '%Y-%m-%d') AS Join_On"),'customer_tier as Customer Tier','wallet_cash as Wallet Cash','reference_code as Customer Referral Code','reference_by as Referral By')->orderBy("id","desc")->get()->toArray();

        return $download =  Excel::create('export-users', function($excel) use ($users){

            $excel->sheet('export-users', function($sheet) use ($users){

                $sheet->fromArray($users);

            });

        })->download('csv');

    }

    public function downloadWalletTransactions(Request $request){
        $wallet_transactions = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_transactions.user_id) AS 'Mobile Number'"),"description AS Description","cashback_earned AS Cashback Earned",DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Wallet Cash'"),DB::raw("DATE_FORMAT(date_and_time, '%d-%M-%Y %H:%i %p') AS 'Date Added'"))->where('venue_user_id','!=',null)->get()->toArray();
        return $download =  Excel::create('export-wallet-transactions', function($excel) use ($wallet_transactions){

            $excel->sheet('export-wallet-transactions', function($sheet) use ($wallet_transactions){

                $sheet->fromArray($wallet_transactions);

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

            // $user_find = User::find(5);
            // $find_event = Event::find(9);
            // $admin_event_notification = AdminNotification::find(5);

            // try{
            //     \Mail::to($user_find->email)->send(new NewEventCreateMail($admin_event_notification, $user_find, $find_event));
            // }catch(\Exception $ex){
            //     return $ex->getMessage();
            // }

            return view('admin.adding-events');
        }
    }

    public function offerSettings(Request $request){
        if($request->isMethod('GET')){

            // $user_find = User::find(1);
            // $admin_offer_notification = AdminNotification::find(6);
            // $offer_assign = Offer::find(2);
            // try{
            //     \Mail::to($user_find->email)->send(new OfferAssignMail($admin_offer_notification, $user_find, $offer_assign));
            // }catch(\Exception $ex){
            //     return $ex->getMessage();
            // }

            $admin = Auth::guard('admin')->user();
            $venu = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();
            return view('admin.offer-settings',compact('venu'));
        }
    }

    public function venueUser(Request $request){
        if($request->isMethod('GET')){

            //DB::raw("(select venue_name from venus where id = assign_user_venues.venu_id) AS venue_name")

           // return $data = VenueUser::select('*',DB::raw("(select venue_name from venus where id = venue_users.venu_id) AS venue_name"))->whereDeletedAt(null)->with('assignUserVenues')->get();

            // return $data = VenueUser::select('*',DB::raw("GROUP_CONCAT((select venu_id from assign_user_venues where id = assign_user_venues.venue_user_id) SEPARATOR ',')"))->whereDeletedAt(null)->get();
            $admin = Auth::guard('admin')->user();
            $venulist = Venu::whereAdminId($admin->id)->whereDeletedAt(null)->get();
            return view('admin.venue-user',compact('venulist'));
        }
    }

    public function notificationSetting(Request $request){
        if($request->isMethod('GET')){
            $city = City::get();
            $country = Country::orderBy("name","asc")->get();
            return view('admin.notifications-settings',compact('city','country'));
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

            $venuecreate = new VenueUser();
            $venuecreate->username = $request->v_user;
            $venuecreate->password = $hashpassword;
            //$venuecreate->venu_id = $request->v_name;
            $venuecreate->status = $request->v_status;
            $venuecreate->date_time = Carbon::now();
            $venuecreate->created_by = "Admin";
            $venuecreate->updated_by = "Admin";
            $venuecreate->save();

            $venue_ids = explode(",", $request->v_name);

            foreach ($venue_ids as $venue_id) {
                $assign_user_venue = new AssignUserVenue();
                $assign_user_venue->venue_user_id = $venuecreate->id;
                $assign_user_venue->venu_id = $venue_id;
                $assign_user_venue->save();
            }


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

    // public function venueTableRecords(Request $request){

    //     if($request->isMethod('POST')){
    //         $admin_id = Auth::guard('admin')->user()->id;
    //         $asc_desc = $request->get('order')[0]['dir'];
    //         $column_id = $request->get('order')[0]['column'];
    //         $search = $request->get("search")["value"];
    //         $colname = $request->get('columns');


    //         if($asc_desc == "asc"){
    //             $asc_desc = "desc";
    //         }else{
    //             $asc_desc = "asc";
    //         }

    //         $order = $request->get("order")[0]['column'];

    //         $column = "id";

    //         $order = $request->get("order")[0]['column'];

    //         if($order == 1){
    //             $column = "username";
    //         }else if($order == 2){
    //             $column = "password";
    //         }else if($order == 3){
    //             $column = "venue_name";
    //         }else if($order == 4){
    //             $column = "status";
    //         }else if($order == 5){
    //             $column = "created_at";
    //         }else if($order == 6){
    //             $column = "created_by";
    //         }else if($order == 7){
    //             $column = "updated_at";
    //         }else if($order == 8) {
    //             $column = "updated_by";
    //         }

    //         $pluck_venueuser_in_ids = VenueUser::whereDeletedAt(null)->pluck('id');

    //         $data = AssignUserVenue::select('*',DB::raw("(select venue_name from venus where id = assign_user_venues.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = assign_user_venues.venue_user_id) AS username"),DB::raw("(select password from venue_users where id = assign_user_venues.venue_user_id) AS password"),DB::raw("(select status from venue_users where id = assign_user_venues.venue_user_id) AS status"),DB::raw("(select created_at from venue_users where id = assign_user_venues.venue_user_id) AS created_at"),DB::raw("(select updated_at from venue_users where id = assign_user_venues.venue_user_id) AS updated_at"),DB::raw("(select created_by from venue_users where id = assign_user_venues.venue_user_id) AS created_by"),DB::raw("(select updated_by from venue_users where id = assign_user_venues.venue_user_id) AS updated_by"))->whereDeletedAt(null)->orderBy($column,$asc_desc);
    //         $total = $data->count();
    //         $filter = $total;

    //         if($search){
    //              $data  = $data->where(function($query) use($search){
    //                     $query->orWhere(DB::raw("(select username from venue_users where id = assign_user_venues.venue_user_id)"), 'Like', '%'. $search . '%');
    //                     $query->orWhere(DB::raw("(select venue_name from venus where id = assign_user_venues.venu_id)"), 'Like', '%'. $search . '%');
                       
    //                     $query->orWhere(DB::raw("(select status from venue_users where id = assign_user_venues.venue_user_id)"), 'Like', '%' . $search . '%');
    //                    /* $query->orWhere(DB::raw("DATE_FORMAT((select created_at from venue_users where id = assign_user_venues.venue_user_id),'%Y %M %d %H:%i:%s %p')"), 'Like', '%' . $search . '%');
    //                     $query->orWhere(DB::raw("DATE_FORMAT((select updated_at from venue_users where id = assign_user_venues.venue_user_id),'%Y %M %d %H:%i:%s %p')"), 'Like', '%' . $search . '%');*/

    //                      $query->orWhere(DB::raw("(select created_at from venue_users where id = assign_user_venues.venue_user_id)"), 'Like', '%' . $search . '%');
    //                     $query->orWhere(DB::raw("(select updated_at from venue_users where id = assign_user_venues.venue_user_id)"), 'Like', '%' . $search . '%');
                        
    //                     $query->orWhere(DB::raw("(select created_by from venue_users where id = assign_user_venues.venue_user_id)"), 'Like', '%'. $search . '%');
    //                     $query->orWhere(DB::raw("(select updated_by from venue_users where id = assign_user_venues.venue_user_id)"), 'Like', '%'. $search . '%');
    //                 });
            


    //             $filter = $data->get()->count();
    //         }

    //         $data = $data->offset($request->start);
    //         $data = $data->take($request->length);
    //         $data = $data->get();

    //         $start_from = $request->start;
    //         if($start_from == 0){
    //             $start_from  = 1;
    //         }
    //         if($start_from % 10 == 0){
    //             $start_from = $start_from + 1;
    //         }

    //         foreach($data as $da){
    //             $da->password = "******";
    //             $da->DT_RowIndex = $start_from++;
    //         }

    //         $return_data = [
    //                 "data" => $data,
    //                 "draw" => (int)$request->draw,
    //                 "recordsTotal" => $total,
    //                 "recordsFiltered" => $filter,
    //                 "input" => $request->all(),
    //         ];

    //         return response()->json($return_data);

    //     }
    // }


    public function venueTableRecords(Request $request){

        if($request->isMethod('POST')){
            $admin_id = Auth::guard('admin')->user()->id;
            $asc_desc = $request->get('order')[0]['dir'];
            $column_id = $request->get('order')[0]['column'];
            $search = $request->get("search")["value"];
            $colname = $request->get('columns');


            if($asc_desc == "asc"){
                $asc_desc = "desc";
            }else{
                $asc_desc = "asc";
            }

            $order = $request->get("order")[0]['column'];

            $column = "id";

            $order = $request->get("order")[0]['column'];

            if($order == 1){
                $column = "username";
            }else if($order == 2){
                $column = "password";
            }else if($order == 3){
                $column = "id";
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

            $data = $data = VenueUser::whereDeletedAt(null)->with('assignUserVenues')->orderBy($column,$asc_desc);
            $total = $data->count();
            $filter = $total;

            if($search){
                 $data  = $data->where(function($query) use($search){
                        $query->orWhere('username', 'Like', '%'. $search . '%');
                        //$query->orWhere(DB::raw("(select venue_name from venus where id = venue_users.venu_id)"), 'Like', '%'. $search . '%');
                        $query->orWhereHas('assignUserVenues', function($insideQuery) use ($search){
                            $insideQuery->whereHas('venu', function($insideQuery2) use ($search){
                                return $insideQuery2->where('venue_name', 'like', '%'.$search.'%');
                            });
                        });
                        $query->orWhere('status', 'Like', '%' . $search . '%');
                        $query->orWhere("created_at", 'Like', '%' . $search . '%');
                       // $query->orWhere('status', 'Like', '%' . $search . '%');
                        $query->orWhere("updated_at", 'Like', '%' . $search . '%');
                        $query->orWhere('created_by', 'Like', '%'. $search . '%');
                        $query->orWhere('updated_by', 'Like', '%'. $search . '%');
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
                $pluck_venu_ids = Arr::pluck($da->assignUserVenues, 'venu_id');
                $pluck_venue_name = Venu::whereIn('id', $pluck_venu_ids)->pluck('venue_name')->toArray();
                $da->venue_name = implode(", ", $pluck_venue_name);
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

            $pos_venue_id = $request->pos_venue_id;

            if(!empty($pos_venue_id)){

                $check_pos_id = Venu::whereDeletedAt(null)->where('unique_id','!=',$data['uniq'])->wherePosVenueId($pos_venue_id)->first();
            }

            if(!empty($check_pos_id)){
                return response()->json(['venue_name_err' => "Venue POS ID already exists."],422);
            }

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
            if($saveEvent['data']){

                $admin_event_notification = AdminNotification::where("uniq_id","=",5)->first();

                $find_event = Event::whereId($saveEvent['data']['id'])->first();

                if(!empty($admin_event_notification)){


                    $today_day = Carbon::now()->format("l");
                    $array_event_days = explode(",", $saveEvent['data']['when_day']);
                    if($saveEvent['message'] == "Event added successfully."){
                        if($saveEvent['data']['from_date'] <= Carbon::now()->toDateString() && $saveEvent['data']['to_date'] >= Carbon::now()->toDateString() && $saveEvent['data']['status'] == "Active" && in_array($today_day, $array_event_days)){

                            $users = User::whereDeletedAt(null)->where('is_block','=',0)->get();

                            foreach ($users as $user_find) {


                                //Push Notification

                                if($admin_event_notification->push_type == 1){

                                    if($user_find->device_type == 'Android'){
                                        if($user_find->device_token && strlen($user_find->device_token) > 20){
                                           $android_notify =  $this->send_android_notification_new($user_find->device_token, "What's Happening Today: Enjoy ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,"Event Create Notification", $noti_type = 5, $event_id = $find_event->id);

                                            $criteria_data = [
                                                'user_id'   => $user_find->id,
                                                'message'   => "What's Happening Today: Enjoy ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,
                                                'noti_type' => 5,
                                                'event_id'  => $find_event->id
                                            ];
                                            AdminCriteriaNotification::create($criteria_data);
                                       
                                       }
                                    }

                                    if($user_find->device_type == 'Ios' && strlen($user_find->device_token) > 20){
                                        if($user_find->device_token){
                                            $ios_notify =  $this->iphoneNotification($user_find->device_token, "What's Happening Today: Enjoy ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,"Event Create Notification", $noti_type = 5, $event_id = $find_event->id);

                                            $criteria_data = [
                                                'user_id'   => $user_find->id,
                                                'message'   => "What's Happening Today: Enjoy ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,
                                                'noti_type' => 5,
                                                'event_id'  => $find_event->id
                                            ];
                                            AdminCriteriaNotification::create($criteria_data);
                                        
                                       }
                                    }

                                }

                                if($admin_event_notification->sms_type == 1){
                                    \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                                    $sms = new \SMSGlobal\Resource\Sms();
                                    $message = "What's Happening Today: Enjoy ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message;
                                    try {
                                        $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message,'AD-Mociety');
                                    } catch (\Exception $e) {
                                        continue;
                                    }
                                }


                                if($admin_event_notification->email_type == 1){

                                    $notificationJob = (new EventNotificationJob($admin_event_notification, $user_find, $find_event))->delay(Carbon::now()->addSeconds(3));
                                    dispatch($notificationJob);
                                }
                            }
                            
                        }
                    }


                    
                }

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
                //return $data['pos_product_id'];
                $check_pos_id = null;
                if(!empty($data['pos_product_id'])){

                    $check_pos_id = Offer::whereDeletedAt(null)->whereOfferType('Normal')->where('unique_id','!=',$data['uniq_id'])->where('pos_product_id',$data['pos_product_id'])->first();
                }

                if(!empty($check_pos_id)){
                    return response()->json(['offer_name_err' => "Offer POS Product ID already exists."],422);
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
             $user_assign_offer = UserAssignOffer::whereOfferId($offer_remove->id)->get();
             
             foreach ($user_assign_offer as $key => $value){
                $value->deleted_at = Carbon::now();
                $value->update();
             }
             
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

    public function badges(Request $request){

        $admin = Auth()->guard('admin')->user();
        $badges = Badge::whereAdminId($admin->id)->whereDeletedAt(null)->orderBy("id","desc")->get();
        return view('admin.badges',compact('badges'));
    }

    public function assignBadges(Request $request){
        $admin = Auth()->guard('admin')->user();
        $badges = Badge::whereAdminId($admin->id)->whereDeletedAt(null)->orderBy("id","desc")->get();
        $current_date = Carbon::now()->toDateString();
        return view('admin.assign_badges',compact('badges','current_date'));
    }

    public function searchAssignBadges(Request $request){

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
            $column = "customer_name";
        }elseif ($order == 3) {
            $column = "country_code_with_phone_number";
        }

        //$have_badges_not_in_user_ids = AssignBadge::whereDeletedAt(null)->pluck('user_id');
        $data = User::select("id","customer_id",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS customer_name'),DB::raw('CONCAT(users.country_code, " ", users.mobile_number) AS country_code_with_phone_number'))->whereId("kk")->orderBy($column,$asc_desc);

        $total = $data->get()->count();

        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }else{

            $search = $request->search_for_table1;
        }
        $filter = $total;


        if($search){
            $data  = User::select("id","customer_id",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS customer_name'),DB::raw('CONCAT(users.country_code, " ", users.mobile_number) AS country_code_with_phone_number'))->whereDeletedAt(null)
                //->whereNotIn('id', $have_badges_not_in_user_ids)
                ->orderBy($column,$asc_desc)
                ->where(function($query) use($search){
                        $query->where('customer_id', 'Like', '%'. $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.country_code, " ", users.mobile_number)'), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.first_name, " ", users.last_name)'), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.country_code, " ", users.mobile_number)'), 'Like', '%' . $search . '%');
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


    public function badgeAssignListUsers(Request $request){

        $admin = Auth()->guard('admin')->user();
        $customer_id = $request->customer_id;
        $find_user = User::whereCustomerId($customer_id)->first();
        $badge_ids = [];
        $user_id = [];
        if(!empty($find_user)){

            $badge_ids = AssignBadge::whereUserId($find_user->id)->pluck('badge_id');
            $user_id[] = $find_user->id; 
        }
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
            $column = "badge_name";
        }elseif ($order == 3) {
            $column = "status";
        }elseif ($order == 3) {
            $column = "from_date";
        }elseif ($order == 3) {
            $column = "to_date";
        }elseif ($order == 3) {
            $column = "from_time";
        }elseif ($order == 3) {
            $column = "to_time";
        }elseif ($order == 3) {
            $column = "created_by";
        }elseif ($order == 3) {
            $column = "created_at";
        }elseif ($order == 3) {
            $column = "updated_by";
        }elseif ($order == 3) {
            $column = "updated_at";
        }

        $data = AssignBadge::select("id",DB::raw("(select customer_id from users where id = assign_badges.user_id) AS customer_id"),DB::raw("(select badge_name from badges where id = assign_badges.badge_id) AS badge_name"),DB::raw("(select status from badges where id = assign_badges.badge_id) AS badge_status"),DB::raw("DATE_FORMAT(from_date, '%d-%M-%Y') AS from_date"),DB::raw("DATE_FORMAT(to_date, '%d-%M-%Y') AS to_date"),DB::raw("DATE_FORMAT(from_time, '%h:%i %p') AS from_time"), DB::raw("DATE_FORMAT(to_time, '%h:%i %p') AS to_time"),"created_by","updated_by","created_at","updated_at")->whereIn('badge_id',$badge_ids)->whereIn('user_id', $user_id)->whereDeletedAt(null)->orderBy($column,$asc_desc);

        $total = $data->get()->count();

        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }else{

            $search = $request->search_txt;
        }
        $filter = $total;


        if($search){
            $data  = $data->where(function($query) use($search){
                            // $query->orWhereHas('user', function($insideQuery) use ($search){
                            //     return $insideQuery->where('customer_id', 'like', '%'.$search.'%');
                            // });
                            // $query->whereHas('badge', function($insideQuery) use ($search){
                            //     return $insideQuery->where('badge_name', 'like', '%'.$search.'%');
                            // });

                            $query->orWhere(DB::raw("(select customer_id from users where id = assign_badges.user_id)"), 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("(select badge_name from badges where id = assign_badges.badge_id)"), 'Like', '%' . $search . '%');

                            $query->orWhere('status', 'like', $search.'%');
                            $query->orWhere(DB::raw("DATE_FORMAT(from_date, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("DATE_FORMAT(to_date, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("DATE_FORMAT(from_time, '%h:%i %p')"), 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("DATE_FORMAT(to_time, '%h:%i %p')"), 'Like', '%' . $search . '%');
                            $query->orWhere('created_by', 'like', '%'.$search.'%');
                            $query->orWhere('updated_by', 'like', '%'.$search.'%');
                            $query->orWhere('created_at', 'like', '%'.$search.'%');
                            $query->orWhere('updated_at', 'like', '%'.$search.'%');
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

    public function addOrUpdateBadgeAssign(Request $request){
        $data = $request->all();
        $data['from_time'] = date("H:i:s", strtotime($data['from_time']));
        $data['to_time'] = date("H:i:s", strtotime($data['to_time']));
        $find_user = User::whereCustomerId($data['customer_id'])->first();

        if($data['action_type'] == "add"){
            $find_assign_badge = AssignBadge::whereUserId($find_user->id)->whereBadgeId($data['badge_id'])->whereDeletedAt(null)->first();
            if(!empty($find_assign_badge)){
                return response()->json(['badge_found_err' => "Selected badge already assigned to the selected Customer ID."],422);
            }
        }else{
            //for update case check
            $find_assign_badge = AssignBadge::whereUserId($find_user->id)->whereBadgeId($data['badge_id'])->first();
            if(empty($find_assign_badge)){
                return response()->json(['badge_not_found_err' => "Badge not found for selected Customer ID & Badge Name."],422);
            }
        }
        $addOrUpdate = $this->venueBusinessModel()->addOrUpdateBadgeAssignInTable($data);
        $addOrUpdate->from_time = Carbon::parse(Carbon::now()->toDateString()." ".$addOrUpdate->from_time)->format('g:i A');
        $addOrUpdate->to_time = Carbon::parse(Carbon::now()->toDateString(). " " . $addOrUpdate->to_time)->format("g:i A");
        return ['status' => 'true','action_type' => $data['action_type'],'assigned_badge' => $addOrUpdate];
    }

    public function findBadge(Request $request){
        $customer_id = $request->customer_id;
        $assign_id = $request->assign_id;
        $user_find = User::whereCustomerId($customer_id)->first();
        $assign_badge_find = AssignBadge::whereUserId($user_find->id)->whereId($assign_id)->first();
        $bage_find = Badge::whereId($assign_badge_find->badge_id)->first();
        $assign_badge_find->customer_id = $user_find->customer_id;
        $assign_badge_find->badge_name = $bage_find->badge_name;
        $assign_badge_find->from_time = Carbon::parse(Carbon::now()->toDateString()." ".$assign_badge_find->from_time)->format('g:i A');
        $assign_badge_find->to_time = Carbon::parse(Carbon::now()->toDateString(). " " . $assign_badge_find->to_time)->format("g:i A");
        return ['data' => $assign_badge_find,'status' => "true"];

    }

    public function deleteAssignBadge(Request $request){
        $user_find = User::whereCustomerId($request->customer_id)->first();
        $badge_id = $request->badge_id;

        $find_assign_badge = AssignBadge::whereUserId($user_find->id)->whereBadgeId($badge_id)->whereDeletedAt(null)->with('user','badge')->first();
        if(empty($find_assign_badge)){
            return response()->json(['badge_not_found_err' => "Badge not found for selected Customer ID & Badge Name."],422);
        }

        $find_assign_badge->deleted_at = Carbon::now();
        $find_assign_badge->update();
        return $find_assign_badge;
        //return "success";
    }

    public function AddNewBadge(Request $request){
        $admin = Auth::guard('admin')->user();
        $data = $request->all();

        $badge_checkname_exists = Badge::whereBadgeName($data['badge_name'])->whereDeletedAt(null)->first();

        if(!empty($badge_checkname_exists)){
            return response()->json(['badge_name_error' => "Badge name already exists."],422);
        }

        $add_badge = $this->badgeBusinessModel()->addBadge($data,$admin);

        if($add_badge){
            return response()->json($add_badge);
        }
    }

    public function BadgesList(Request $request){
        $admin_id = Auth::guard('admin')->user()->id;
        $asc_desc = $request->get('order')[0]['dir'];
        $column_id = $request->get('order')[0]['column'];
        $search = $request->get("search")["value"];
        $colname = $request->get('columns');

        if($asc_desc == "asc"){
            $asc_desc = "desc";
        }else{
            $asc_desc = "asc";
        }

        $order = $request->get("order")[0]['column'];

        $column = "id";

        $order = $request->get("order")[0]['column'];

        if($order == 1){
            $column = "badge_name";
        }else if($order == 2){
            $column = "status";
        }else if($order == 3){
            $column = "created_by";
        }else if($order == 4){
            $column = "created_at";
        }else if($order == 5){
            $column = "updated_by";
        }else if($order == 6) {
            $column = "updated_at";
        }

        $data = Badge::whereDeletedAt(null)->orderBy($column,$asc_desc);
        $total = $data->count();
        $filter = $total;

        if($search){
             $data = $data->where(function($query) use($search){
                    $query->orWhere('badge_name', 'Like', '%'. $search . '%');
                    $query->orWhere('status', 'Like', $search . '%');
                    $query->orWhere("created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("updated_at", 'Like', '%' . $search . '%');
                    $query->orWhere('created_by', 'Like', '%'. $search . '%');
                    $query->orWhere('updated_by', 'Like', '%'. $search . '%');
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
            $da->selection = '<label class="app_checkboxes" data-id = "'.$da->id.'" key_type="checkbox">
                <input type="checkbox" class="single_checkbox" data-id = "'.$da->id.'" key_type="checkbox">
                <span class="checkmark" data-id = "'.$da->id.'" key_type="checkbox"></span>
            </label>';
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

    public function editBadges(Request $request){
        
        $admin = Auth::guard('admin')->user();
        $data = $request->all();

        $badge_checkname_exists = Badge::whereBadgeName($data['badge_name'])->where('id','!=', $data['badge_id'])->whereDeletedAt(null)->first();

        if(!empty($badge_checkname_exists)){
            return response()->json(['badge_name_error' => "Badge name already exists."],422);
        }

        $update_badge = $this->badgeBusinessModel()->updateBadge($data,$admin);

        if($update_badge){
            return response()->json($update_badge);
        }
    }


    public function assignUserList(Request $request){

        $badge_id = $request->badge_id;
        $asc_desc = $request->get('order')[0]['dir'];
        $column_id = $request->get('order')[0]['column'];
        $search = $request->get("search")["value"];
        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }else{

            $search = $request->search_for_table2;
        }
        $colname = $request->get('columns');

        if($asc_desc == "asc"){
            $asc_desc = "desc";
        }else{
            $asc_desc = "asc";
        }

        $order = $request->get("order")[0]['column'];

        $column = "id";

        $order = $request->get("order")[0]['column'];

        if($order == 1){
            $column = "customer_id";
        }else if($order == 2){
            $column = "full_name";
        }else if($order == 3){
            $column = "mobile_number";
        }else if($order == 4){
            $column = "badge_name";
        }else if($order == 5){
            $column = "status";
        }else if($order == 6){
            $column = "from_date";
        }else if($order == 7) {
            $column = "to_date";
        }else if($order == 8) {
            $column = "from_time";
        }else if($order == 9) {
            $column = "to_time";
        }else if($order == 10) {
            $column = "created_by";
        }else if($order == 11) {
            $column = "created_at";
        }else if($order == 12) {
            $column = "updated_by";
        }else if($order == 13) {
            $column = "updated_at";
        }

       $data = AssignBadge::select('*',DB::raw("(select customer_id from users where id = assign_badges.user_id) AS customer_id"),DB::raw("(select badge_name from badges where id = assign_badges.badge_id) AS badge_name"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = assign_badges.user_id) AS mobile_number"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = assign_badges.user_id) AS full_name"),DB::raw("DATE_FORMAT(from_date, '%Y-%M-%d') AS from_date"), DB::raw("DATE_FORMAT(to_date, '%Y-%M-%d') AS to_date"),DB::raw("DATE_FORMAT(from_time, '%h:%i %p') AS from_time"),DB::raw("DATE_FORMAT(to_time, '%h:%i %p') AS to_time"))->whereIn('badge_id', [$badge_id])->whereDeletedAt(null)->orderBy($column,$asc_desc);
        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere(DB::raw("(select customer_id from users where id = assign_badges.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select badge_name from badges where id = assign_badges.id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = assign_badges.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) AS full_name from users where id = assign_badges.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere('status', 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("DATE_FORMAT(from_date, '%Y-%M-%d')"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("DATE_FORMAT(to_date, '%Y-%M-%d')"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("DATE_FORMAT(from_time, '%h:%i %p')"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("DATE_FORMAT(to_time, '%h:%i %p')"), 'Like', '%' . $search . '%');
                    $query->orWhere("created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("updated_at", 'Like', '%' . $search . '%');
                    $query->orWhere('created_by', 'Like', '%' . $search . '%');
                    $query->orWhere('updated_by', 'Like', '%' . $search . '%');
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

    public function downloadBadgeAssignUsers(Request $request, $badge_id){
        $badge_id = base64_decode($badge_id);
        $search = $request->search_txt;

        if(!empty($search)){
            $data_get = AssignBadge::whereDeletedAt(null)
                    ->whereBadgeId($badge_id)
                    ->where(function($query) use($search){
                        $query->orWhere(DB::raw("(select customer_id from users where id = assign_badges.user_id)"), 'like', '%'.$search.'%');
                        $query->orWhere(DB::raw("(select badge_name from badges where id = assign_badges.id)"), 'like', '%'.$search.'%');
                        $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = assign_badges.user_id)"), 'like', '%'.$search.'%');
                        $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) AS full_name from users where id = assign_badges.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere('status', 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(from_date, '%Y-%M-%d')"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(to_date, '%Y-%M-%d')"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(from_time, '%h:%i %p')"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(to_time, '%h:%i %p')"), 'Like', '%' . $search . '%');
                        $query->orWhere("created_at", 'Like', '%' . $search . '%');
                        $query->orWhere("updated_at", 'Like', '%' . $search . '%');
                        $query->orWhere('created_by', 'Like', '%' . $search . '%');
                        $query->orWhere('updated_by', 'Like', '%' . $search . '%');
                    })->pluck("id");
        }else{
            $data_get = AssignBadge::whereDeletedAt(null)
                    ->whereBadgeId($badge_id)->pluck("id");
        }

        $data = AssignBadge::select(DB::raw("(select customer_id from users where id = assign_badges.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = assign_badges.user_id) AS Name"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = assign_badges.user_id) AS 'Mobile Number'"),DB::raw("(select badge_name from badges where id = assign_badges.badge_id) AS 'Badge Name'"),"status as Status","from_date as From Date","to_date as To Date","from_time as From Time","to_time as To Time","created_by as Created By","updated_by as Updated By","created_at as Created On","updated_at as Updated On")->whereIn("id", $data_get)->orderBy('id','desc')->get()->toArray();

        return $download =  Excel::create('badge_assign_users', function($excel) use ($data){

            $excel->sheet('badge_assign_users', function($sheet) use ($data){

                $sheet->fromArray($data);

            });

        })->download('csv');

    }

    public function deleteBadge(Request $request){
        $ids = explode(",", $request->ids);
        Badge::whereIn("id", $ids)->update(['deleted_at' => Carbon::now()]);
        AssignBadge::whereIn('badge_id',$ids)->update(['deleted_at' => Carbon::now()]);
        if(count($ids) <= 1){
            return response()->json(['message' => 'Badge has been deleted successfully.']);
        }else{

            return response()->json(['message' => 'Badges has been deleted successfully.']);
        }

    }

    public function findBadgeById(Request $request){
        $badge_id = $request->badge_id;
        $badge = Badge::find($badge_id);
        return $badge;
    }

    public function SaveNotificationMessage(Request $request){

        $message_type = $request->type_message;
        
        if(in_array('push', $message_type)){
            $push_type = 1;
        }else{
            $push_type = 0;
        }
        if(in_array('sms', $message_type)){
            $sms_type = 1;
        }else{
            $sms_type = 0;
        }
        if(in_array('email', $message_type)){
            $email_type = 1;
        }else{
            $email_type = 0;
        }

        $uniq_id = $request->uniq_id;
        if($uniq_id == 1){
            $notification_type = 'Transaction';
        }else if($uniq_id == 2){
            $notification_type = 'Cashback';
        }else if($uniq_id == 3){
            $notification_type = 'Welcome Bonus';
        }else if($uniq_id == 4){
            $notification_type = 'Referral Bonus';
        }else if($uniq_id == 5){
            $notification_type = 'Event';
        }else if($uniq_id == 6){
            $notification_type = 'Specific Customer';
        }


        $check_notification = AdminNotification::whereUniqId($uniq_id)->first();

        if(empty($check_notification)){
            $check_notification = new AdminNotification();
            $check_notification->uniq_id = $request->uniq_id;
            $check_notification->message = $request->message;
            $check_notification->push_type = $push_type;
            $check_notification->sms_type = $sms_type;
            $check_notification->email_type = $email_type;
            $check_notification->notification_type = $notification_type;
            $check_notification->save();

            if($check_notification){
               return response()->json(['message' => $notification_type.' notification message added successfully.']);
            }

        }else{
            $check_notification->message = $request->message;
            $check_notification->push_type = $push_type;
            $check_notification->sms_type = $sms_type;
            $check_notification->email_type = $email_type;
            $check_notification->notification_type = $notification_type;
            $check_notification->update();

            if($check_notification){
               return response()->json(['message' => $notification_type.' notification message updated successfully.']);
            }
        }

    }


    public function SaveNotificationMessageEmail(Request $request){
        $request->uniq_id = 7;
        $imageName = '';
        $extension = '';
        $file_original_name = '';
        if(empty($request->img_upload2)){

            if($request->hasfile('img_upload')){
                $file_original_name = $request->file('img_upload')->getClientOriginalName();
                $extension = $request->file('img_upload')->getClientOriginalExtension();
                $file = $request->file('img_upload');
                $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
                $imageName = date('mdYHis') . rand(10,100) . uniqid(). '.' . $extension;
                $file->move($destinationPath, $imageName);
            }

        }else{
            $imageName = null;
            $extension = null;
        }

        // $imgoriginalname = $request->attachment_hidden;
        // if(empty($attachment_hidden_value2)){
        //     if(!empty($request->attachment_hidden) && !empty($request->attachment_hidden_src)){
        //         $extension = pathinfo($imgoriginalname)['extension'];
        //         if($extension == 'png' || $extension == "jpg" || $extension == "jpeg"){
        //             $image1 = str_replace('data:image/png;base64,', '', $request->attachment_hidden_src);
        //             $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
        //             $imageName = date('mdYHis') . rand(10,100) . uniqid().'.'.$extension;
        //         }else if($extension=='.docx'){
        //             $image1 = str_replace('data:application/vnd.openxmlformats-officedocument.wordprocessingml.document;base64,', '', $request->attachment_hidden_src);
        //             $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
        //             $imageName = date('mdYHis') . rand(10,100) . uniqid().'.docx';
        //         }else if($extension=='xlsx'){
        //             $image1 = str_replace('application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,', '', $request->attachment_hidden_src);
        //             $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
        //             $imageName = date('mdYHis') . rand(10,100) . uniqid().'.xlsx';
        //         }else if($extension=='pdf'){
        //             $image1 = str_replace('data:application/pdf;base64,', '', $request->attachment_hidden_src);
        //             $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
        //             $imageName = date('mdYHis') . rand(10,100) . uniqid().'.pdf';
        //         }else if($extension=='csv'){
        //             $image1 = str_replace('data:text/csv;base64,', '', $request->attachment_hidden_src);
        //             $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
        //             $imageName = date('mdYHis') . rand(10,100) . uniqid().'.'.$extension;
        //         }
                
        //         file_put_contents($destinationPath. '/' . $imageName, base64_decode($image1));
        //     }else{
        //         $imageName = null;
        //         $extension = null;
        //     }
        // }

        $check_notification_email = AdminNotification::whereUniqId($request->uniq_id)->first();

        if(empty($check_notification_email)){
            $check_notification_email = new AdminNotification();
            $check_notification_email->uniq_id = $request->uniq_id;
            $check_notification_email->title = $request->title;
            $check_notification_email->message = $request->welcome_message;
            $check_notification_email->image = $imageName ? $imageName : null;
            $check_notification_email->image_type = $extension ? $extension : null;
            $check_notification_email->name_of_file_show = $file_original_name ? $file_original_name : null;
            $check_notification_email->push_type = 0;
            $check_notification_email->sms_type = 0;
            $check_notification_email->email_type = 1;
            $check_notification_email->notification_type = 'Welcome Email';
            $check_notification_email->save();

            if($check_notification_email){
               return response()->json(['message' => 'Welcome email notification message added successfully.']);
            }

        }else{
            $check_notification_email->title = $request->title ? $request->title : $check_notification_email->title;
            $check_notification_email->message = $request->welcome_message;

            if(!empty($imageName)){

                $check_notification_email->image = $imageName ? $imageName : null;
                $check_notification_email->image_type = $extension ? $extension : null;
                $check_notification_email->name_of_file_show = $file_original_name ? $file_original_name : null;
            }
            $check_notification_email->update();

            if($check_notification_email){
               return response()->json(['message' =>'Welcome email notification message updated successfully.']);
            }
        }
        
    }



   public function SaveCriteriaMessage(Request $request){



        ($request->msg_type == "Push") ? $push_type = 1 : $push_type = 0;  
        ($request->msg_type == "Sms") ? $sms_type = 1 : $sms_type = 0;  

        if($request->gender == "All"){

            $users_notify = User::whereCityOfResidence($request->city_name)->where('is_block','=',0)->get();
        }else{
            $users_notify = User::whereCityOfResidence($request->city_name)->whereGender($request->gender)->where('is_block','=',0)->get();
        }

        $data = [
            'city_id' => $request->city_id,
            'city_name' => $request->city_name,
            'message' => $request->specific_criteria_message,
            'push_type' => $push_type,
            'sms_type' => $sms_type,
            'gender' => $request->gender,
            'nationality' => $request->nationality,
            'txn_start_period' => $request->txn_start_date,
            'txn_end_period' => $request->txn_end_date,
            'txn_amount_condition' => $request->txn_amount_condition,
            'from_price' => $request->txn_from_price,
            'to_price' => $request->txn_to_price,
            'noti_type' => 7
        ];

        $message_success = '';

        if(!empty($users_notify)){
            if($request->msg_type == "Push"){
                
                foreach ($users_notify as $user){
                    $is_send = 1;
                    if(!empty($request->txn_start_date) && !empty($request->txn_end_date) && !empty($request->txn_amount_condition) && !empty($request->txn_from_price)){
                        $is_send = 0;
                        $wallet_transactions = WalletTransaction::whereUserId($user->id)->whereDate('created_at','>=',$request->txn_start_date)->whereDate('created_at','<=',$request->txn_end_date)->first();
                        
                        if(!empty($wallet_transactions)){
                            if($request->txn_amount_condition == 'Greater Than'){
                        
                                if($wallet_transactions->pay_bill_amount >= $request->txn_from_price){
                                    $is_send = 1;
                                }
                            }else if($request->txn_amount_condition == 'Between'){

                                if(!empty($request->txn_to_price)){

                                    if($request->txn_from_price <= $wallet_transactions->pay_bill_amount && $request->txn_to_price >= $wallet_transactions->pay_bill_amount){
                                            $is_send = 1;
                                        }
                                }
                            }
                        }
                    }

                    if($is_send == 1){
                        if($user->device_type == 'Android'){
                           if($user->device_token && strlen($user->device_token) > 20){
                           $android_notify =  $this->send_android_notification_new($user->device_token, $request->specific_criteria_message, $notmessage = "Admin Send notification message", $noti_type = 7);
                           if($android_notify){
                              (!empty($wallet_transactions->user_id)) ? $data['user_id'] = $wallet_transactions->user_id : $data['user_id'] = $user->id;
                              $save_notification =  AdminCriteriaNotification::create($data);
                            }
                           }
                        }

                        if($user->device_type == 'Ios' && strlen($user->device_token) > 20){
                            if($user->device_token){
                           $ios_notify =  $this->iphoneNotification($user->device_token, $request->specific_criteria_message, $notmessage = "Admin Send notification message", $noti_type = 7);
                            if($ios_notify){
                               (!empty($wallet_transactions->user_id)) ? $data['user_id'] = $wallet_transactions->user_id : $data['user_id'] = $user->id;
                                $save_notification = AdminCriteriaNotification::create($data);
                             }
                           }
                        }
                    }
                }

                return response()->json(['message' => $request->msg_type.' notification send successfully.']);
                
            }

            if($request->msg_type == "Sms"){
                 foreach ($users_notify as $user){
                    $is_send = 1;
                    if(!empty($request->txn_start_date) && !empty($request->txn_end_date) && !empty($request->txn_amount_condition) && !empty($request->txn_from_price)){
                        $is_send = 0;
                        $wallet_transactions = WalletTransaction::whereUserId($user->id)->whereDate('created_at','>=',$request->txn_start_date)->whereDate('created_at','<=',$request->txn_end_date)->first();
                        
                        if(!empty($wallet_transactions)){
                            if($request->txn_amount_condition == 'Greater Than'){
                        
                                if($wallet_transactions->pay_bill_amount >= $request->txn_from_price){
                                    $is_send = 1;
                                }
                            }else if($request->txn_amount_condition == 'Between'){

                                if(!empty($request->txn_to_price)){

                                    if($request->txn_from_price <= $wallet_transactions->pay_bill_amount && $request->txn_to_price >= $wallet_transactions->pay_bill_amount){
                                            $is_send = 1;
                                        }
                                }
                            }
                        }
                    }

                    if($is_send == 1){

                        \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));

                        $sms = new \SMSGlobal\Resource\Sms();

                        $message = $request->specific_criteria_message;

                        try {
                            $response = $sms->sendToOne($user->country_code.$user->mobile_number, $message,'AD-MSociety');
                        } catch (\Exception $e) {
                            continue;
                        }
                        (!empty($wallet_transactions->user_id)) ? $data['user_id'] = $wallet_transactions->user_id : $data['user_id'] = $user->id;
                        $save_notification = AdminCriteriaNotification::create($data);
                    }
                }
                
                

                return response()->json(['message' => $request->msg_type.' notification send successfully.']);
                
            }
        }else{
            return response()->json(['message' => $request->msg_type.' notification criteria not match with any user.']);
        }

    }


    public function getAdminNotifications(Request $request){
        $admin_notifications = AdminNotification::orderBy('uniq_id','asc')->get();
        return response()->json($admin_notifications);
    }

    public function notificationHistory(Request $request){
        // $badge_id = $request->badge_id;
        $asc_desc = $request->get('order')[0]['dir'];
        $column_id = $request->get('order')[0]['column'];
        $search = $request->get("search")["value"];
        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }
        $colname = $request->get('columns');

        if($asc_desc == "asc"){
            $asc_desc = "desc";
        }else{
            $asc_desc = "asc";
        }

        $order = $request->get("order")[0]['column'];

        $column = "id";

        $order = $request->get("order")[0]['column'];

        if($order == 1){
            $column = "message";
        }else if($order == 2){
            $column = "created_at";
        }else if($order == 3){
            $column = "sent_by";
        }else if($order == 4){
            $column = "gender";
        }

       $data = AdminCriteriaNotification::select("*",DB::raw('CONCAT(admin_criteria_notifications.gender,", ",admin_criteria_notifications.city_name,", ",admin_criteria_notifications.nationality,", ",case admin_criteria_notifications.push_type when "1" then "Push notification" else "Push sms" end) AS criteria'))->whereDeletedAt(null)->whereNotiType(7)->orderBy($column,$asc_desc);

        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere("message", 'Like', '%' . $search . '%');
                    $query->orWhere("sent_by", 'Like', '%' . $search . '%');
                    $query->orWhere("created_at", 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw('CONCAT(admin_criteria_notifications.gender,", ",admin_criteria_notifications.city_name,", ",admin_criteria_notifications.nationality,", ",case admin_criteria_notifications.push_type when "1" then "Push notification" else "Push sms" end)'), 'Like', '%' . $search . '%');
                });

            $filter = $data->get()->count();
        }

        $data = $data->offset($request->start);
        $data = $data->take($request->length);
        $data = $data->get();

        $return_data = [
            "data" => $data,
            "draw" => (int)$request->draw,
            "recordsTotal" => $total,
            "recordsFiltered" => $filter,
            "input" => $request->all(),
        ];

        return response()->json($return_data);
    }

    public function AnalyticsDashboard(Request $request){

        $customer_registrations_trends = User::selectRaw("COUNT(*) y, DATE_FORMAT(created_at, '%Y-%m-%e') x")
            ->whereDate('created_at','>=',$request->from_date)
            ->whereDate('created_at','<=',$request->to_date)
            ->groupBy('x')
            ->get();

        $customer_dirshams_wallet_cash_trends = User::selectRaw("SUM(wallet_cash) y, DATE_FORMAT(created_at, '%Y-%m-%e') x")->whereDate('created_at','>=',$request->from_date)
            ->whereDate('created_at','<=',$request->to_date)
            ->groupBy('x')
            ->get();

        $totalsales_amount_trends = WalletTransaction::selectRaw("SUM(pay_bill_amount) y, DATE_FORMAT(created_at, '%Y-%m-%e') x")->whereDate('created_at','>=',$request->from_date)
            ->whereDate('created_at','<=',$request->to_date)
            ->groupBy('x')
            ->get();

        $redeemed_amount_trends = WalletTransaction::selectRaw("SUM(redeemed_amount) y, DATE_FORMAT(created_at, '%Y-%m-%e') x")->whereDate('created_at','>=',$request->from_date)
            ->whereDate('created_at','<=',$request->to_date)
            ->groupBy('x')
            ->get();

        $users = User::whereDate('created_at','>=',$request->from_date)
            ->whereDate('created_at','<=',$request->to_date);
        $get_all_customers = $users->pluck('id');
        $customer_dirhams_wallet = $users->sum('wallet_cash');


        $customer_registrations = $users->count();
        $customer_referal = $users->whereNotNull('reference_by')->count();

        $user_ids_from_wallet_transactions = WalletTransaction::whereDate('created_at','>=',$request->from_date)
                ->whereDate('created_at','<=',$request->to_date)->pluck('user_id');

        $referral_first_transaction_done = User::whereIn("id", $user_ids_from_wallet_transactions)->where('refer_amount_used', '=', 1)->count();

        $total_sales = WalletTransaction::whereDate('created_at','>=',$request->from_date)
                ->whereDate('created_at','<=',$request->to_date)->sum('pay_bill_amount');
        $cashback_earned = WalletTransaction::whereDate('created_at','>=',$request->from_date)
                ->whereDate('created_at','<=',$request->to_date)->sum('cashback_earned');
        $redeemed_amount = WalletTransaction::whereDate('created_at','>=',$request->from_date)
                ->whereDate('created_at','<=',$request->to_date)->sum('redeemed_amount');

        $repeat_customers = WalletTransaction::select(DB::raw('COUNT(user_id) count'))->whereDate('created_at','>=',$request->from_date)->whereDate('created_at','<=',$request->to_date)->groupBy('user_id')->havingRaw('COUNT(user_id) > 1')->count();

        $wallet_transactions_offers = WalletTransaction::whereDeletedAt(null)
                                    ->whereDate('created_at','>=',$request->from_date)
                                    ->whereDate('created_at','<=',$request->to_date)
                                    ->pluck('offer_product_ids')->toArray();

        $implode_wallet_transactions_offers = implode(",", $wallet_transactions_offers);
        $explode_wallet_transactions_offers = explode(",", $implode_wallet_transactions_offers);

        $offers_for_bar_graph = Offer::select("id","offer_name as label")->whereIn("id", $explode_wallet_transactions_offers)->get();

        foreach ($offers_for_bar_graph as $offer) {
            $offer->y = WalletTransaction::whereRaw("FIND_IN_SET(?, offer_product_ids) > 0", [$offer->id])->whereDeletedAt(null)->count();
            unset($offer->id);
        }

        $data = [
            'customer_registrations' => $customer_registrations,
            'customer_registrations_trends' => $customer_registrations_trends,
            'customer_referal' => $customer_referal,
            'total_sales' => $total_sales,
            'cashback_earned' => $cashback_earned,
            'redeemed_amount' => $redeemed_amount,
            'referral_first_transaction_done' => $referral_first_transaction_done,
            'totalsales_amount_trends' => $totalsales_amount_trends,
            'redeemed_amount_trends' => $redeemed_amount_trends,
            'repeat_customers' => $repeat_customers,
            'customer_dirhams_wallet' => $customer_dirhams_wallet,
            'customer_dirshams_wallet_cash_trends' => $customer_dirshams_wallet_cash_trends,
            'offers_for_bar_graph' => $offers_for_bar_graph
        ];


        return response()->json($data);

    }

    public function getSingleVenueUser(Request $request){
        $venue_user_id = VenueUser::whereId($request->venue_user_id)->with('assignUserVenues')->first();

        return $venue_user_id;

    }

    public function updateVenueUser(Request $request){
        $venue_selection = explode(",", $request->v_name);
        $delete_assign_user_venue = AssignUserVenue::whereVenueUserId($request->v_updateid)->delete();
        $find_venue_user = VenueUser::whereId($request->v_updateid)->first();
        $find_venue_user->username = $request->v_user ? $request->v_user : $find_venue_user->username;
        $find_venue_user->password = $request->v_password ? Hash::make($request->v_password) : $find_venue_user->password;
        $find_venue_user->status = $request->v_status ? $request->v_status : $find_venue_user->status;
        $find_venue_user->update();

        foreach ($venue_selection as $venue_select_id) {
            $assign_user_venue = new AssignUserVenue();
            $assign_user_venue->venue_user_id = $find_venue_user->id;
            $assign_user_venue->venu_id = $venue_select_id;
            $assign_user_venue->save();
        }

        return $find_venue_user;
    }

    public function CrossVerificationSalesDashboard(Request $request){

        $asc_desc = $request->get('order')[0]['dir'];
        $column_id = $request->get('order')[0]['column'];
        $search = $request->get("search")["value"];
        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }
        $colname = $request->get('columns');

        if($asc_desc == "asc"){
            $asc_desc = "desc";
        }else{
            $asc_desc = "asc";
        }

        $order = $request->get("order")[0]['column'];

        $column = "wallet_transactions.id";

        $order = $request->get("order")[0]['column'];

        if($order == 1){
            $column = "customer_id";
        }elseif($order == 2){
            $column = "mobile_number";
        }elseif ($order == 3) {
            $column = "wallet_transactions.invoice_number";
        }elseif ($order == 4) {
            $column = "wallet_transactions.total_bill_amount";
        }elseif ($order == 5) {
            $column = "wallet_transactions.check_amount_pos";
        }elseif ($order == 6) {
            $column = "wallet_transactions.txn_status";
        }elseif ($order == 7) {
            $column = "wallet_transactions.cashback_percentage";
        }elseif ($order == 8) {
            $column = "wallet_cash";
        }elseif ($order == 9) {
            $column = "wallet_transactions.redeemed_amount";
        }elseif ($order == 10) {
            $column = "venue_name";
        }elseif ($order == 12) {
            $column = "wallet_transactions.date_and_time";
        }elseif ($order == 13) {
            $column = "wallet_transactions.updated_at";
        }elseif ($order == 14) {
            $column = "wallet_transactions.updated_by";
        }elseif ($order == 15) {
            $column = "username";
        }

        $data = WalletTransaction::select("wallet_transactions.*",DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS wallet_cash"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS mobile_number"),DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' else 'Mismatch' end) AS txn_status"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS username"),DB::raw("(select offer_redeem from user_assign_offers where id = wallet_transactions.offer_product_ids) AS offer_redeem"))
        ->where('wallet_transactions.is_cross_verify','!=',1)
        ->where('wallet_transactions.deleted_at','=',null)
        ->with('offerProductIds')->orderBy($column,$asc_desc);

        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere(DB::raw("(select customer_id from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere("wallet_transactions.invoice_number", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.total_bill_amount", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.check_amount_pos", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.redeemed_amount", 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' else 'Mismatch' end)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select users.customer_id from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select venue_users.username from venue_users where id = wallet_transactions.venue_user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select venus.venue_name from venus where id = wallet_transactions.venu_id)"), 'like', '%'.$search.'%');
                    $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.updated_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.updated_by", 'Like', '%' . $search . '%');
                });

        }
            $filter = $data->get()->count();

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
            $da->DT_RowIndex = $start_from++;

             $da->selection = '<label class="app_checkboxes" data-id = "'.$da->id.'" key_type="checkbox">
                <input type="checkbox" class="single_checkbox delete_selected_txn" data-id = "'.$da->id.'" key_type="checkbox">
                <span class="checkmark" data-id = "'.$da->id.'" key_type="checkbox"></span>
            </label>';

            if($da->offer_product_ids){
                $pluck_offer_ids = explode(",", $da->offer_product_ids);
                $pluck_offer_name = Offer::whereIn('id', $pluck_offer_ids)->pluck('offer_name')->toArray();
                $da->offer_name = implode(", ", $pluck_offer_name);
                $da->offer_redeem = 'Redeemed';
            }else{
                $da->offer_name = 'N/A';
                $da->offer_redeem = 'N/A';
            }
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

    public function ExcelVerifyTransaction(Request $request){

        if($request->hasFile('img_upload')){
            $file_original_name = $request->file('img_upload')->getClientOriginalName();
            $path = $request->file('img_upload')->getRealPath();
        }else{
            return response()->json(['message'=>'Please upload file for verify transactions.'],422);
        }

        if(!$request->file('img_upload')->isValid()){
            return response()->json(['message'=>'Please upload valid file for verify transactions.'],422);
        }
        $data = Excel::load($path)->select(array("date","outlet_name","check_no","check_total","status"))->get();

        if(count($data) == 0){
            return response()->json(['message'=>'No data found in selected file.']);
        }

        $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();

        $wallet_transactions_count = WalletTransaction::where('is_cross_verify','!=',1)->whereDeletedAt(null)->count();

        if($wallet_transactions_count == 0){
            return response()->json(['message'=>'No data exists to verify transactions.'],422);
        }

       if(count($data) > 0){
        $ids_data = [];
            foreach ($data->toArray() as $val){
                $db_array_keys = ["date","outlet_name","check_no","check_total"];
                $array_keys =  array_keys($val);
                $array_diff = array_diff($array_keys,$db_array_keys);

                if(count($array_diff) > 0){
                    return response()->json(['message'=>'Columns name not matched with original format.']);
                }

                $outlet_id = Venu::whereVenueName($val['outlet_name'])->first();
                if(!empty($outlet_id->id)){
                    $wallet_txn = WalletTransaction::where('is_cross_verify','!=',1)->whereInvoiceNumber($val['check_no'])->WhereDate('date_and_time','=',$val['date'])->whereDeletedAt(null)->whereVenuId($outlet_id->id)->first();

                    if(!empty($wallet_txn)){
                        $users = User::select('customer_id')->whereId($wallet_txn->user_id)->first();
                        // if($outlet_name->venue_name === $val['outlet_name']){
                            if(!empty($val['check_total'])){
                                if($wallet_txn->total_bill_amount == $val['check_total']){
                                    $wallet_txn->is_cross_verify = 1;
                                    $wallet_txn->check_amount_pos = $val['check_total'];
                                    $wallet_txn->total_bill_amount = $val['check_total'];
                                    $wallet_txn->update();
                                    array_push($ids_data, $wallet_txn->id);
                                    $this->transferToWalletForUploadVerify($wallet_txn);

                                }else{
                                    $wallet_txn->is_cross_verify = 2;
                                    $wallet_txn->check_amount_pos = $val['check_total'];
                                    $wallet_txn->update();
                                } 
                            }
                        // }
                    }
                }
                
        }
            return response()->json(['message' => "File has been uploaded successfully.", 'ids_data' => $ids_data]);
       }     

    }

    public function donwloadSalesVerifyAfterSuccessfullyUplodedFile(Request $request, $ids_data){

        $ids_data = explode(",", base64_decode($request->ids_data));
        $data_ecxel = DB::table("wallet_transactions")
                ->select(DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Outlet Name'"),"wallet_transactions.invoice_number AS Check No",DB::raw('(CASE WHEN wallet_transactions.total_bill_amount = 0 THEN "0" ELSE wallet_transactions.total_bill_amount END) AS "Check Total" '),DB::raw('(CASE WHEN wallet_transactions.is_cross_verify = 1 THEN "Verified" ELSE "Mismatch" END) AS Status'),"wallet_transactions.id")
                ->groupBy("wallet_transactions.id")
                ->join("venus","venus.id","=","wallet_transactions.venu_id")
                ->orderBy('id','desc')
                ->where('wallet_transactions.deleted_at','=',null)
                ->whereIn('wallet_transactions.id',$ids_data)
                ->where('is_cross_verify','!=',0)
                ->get()->toArray();
                    
            foreach ($data_ecxel as $key => $value) {
                unset($value->id);
            }

            $data_ecxel = json_decode(json_encode($data_ecxel), true);
            return $download =  Excel::create('POS Sales Export Verified File', function($excel) use ($data_ecxel){
                $excel->sheet('POS Sales Export Verified File', function($sheet) use ($data_ecxel){
                    $sheet->fromArray($data_ecxel);

                });
            })->download('xlsx');
    }

    public function ExportCrossVerificationSales(Request $request){

        $data = DB::table("wallet_transactions")
                ->select(DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Outlet Name'"),"wallet_transactions.invoice_number AS Check No",DB::raw('(CASE WHEN wallet_transactions.total_bill_amount = 0 THEN "0" ELSE wallet_transactions.total_bill_amount END) AS "Check Total" '),"wallet_transactions.id")
                ->groupBy("wallet_transactions.id")
                ->join("venus","venus.id","=","wallet_transactions.venu_id")
                ->where('wallet_transactions.is_cross_verify','!=',1)
                ->orderBy('id','desc')
                ->where('wallet_transactions.deleted_at','=',null)
                ->get()->toArray();
                
        foreach ($data as $key => $value) {
            unset($value->id);
        }

       $data = json_decode( json_encode($data), true);
       // if(count($data) > 0){
        return $download =  Excel::create('POS Sales Export File', function($excel) use ($data){
            $excel->sheet('POS Sales Export File', function($sheet) use ($data){
                $sheet->fromArray($data);

            });
        })->download('xlsx');
       // }else{
       //  return back();
       // }
    }

    public function ForceVerifyAllPendingSales(Request $request){

        $wallet_txn_ids = WalletTransaction::whereIsCrossVerify(0)->whereDeletedAt(null)->get()->toArray();
        $wallet_arr_ids_pluck = Arr::pluck($wallet_txn_ids,'id');
        if(empty($wallet_arr_ids_pluck)){
            return response()->json(['txn_verify_err' => "No data found to verify all pending sales transactions."],422);
        }else{
            $wallet_txn = WalletTransaction::whereIn('id',$wallet_arr_ids_pluck)->get();

            foreach ($wallet_txn as $key => $value) {
                $user_wallet_txn = WalletTransaction::whereId($value->id)->first();
                $user_wallet_txn->is_cross_verify = 1;
                $user_wallet_txn->check_amount_pos = $user_wallet_txn->total_bill_amount;
                $user_wallet_txn->update();
            }

            $wallet_transaction_verified = WalletTransaction::whereIn('id',$wallet_arr_ids_pluck)->whereIsCrossVerify(1)->get();

            if(!empty($wallet_transaction_verified)){
                $this->transferToWallet($wallet_transaction_verified);

                return response()->json(['msg' => 'Force verified the all pending sales transaction successfully.']);
            }
        }  
    }

    public function DeleteSelectedTransactions(Request $request){
        $request_ids = explode(',',$request->delete_selected_checkboxes);
        $wallet_transaction_delete = WalletTransaction::whereIn('id',$request_ids)->update(['deleted_at' => Carbon::now()]);

        if(!empty($wallet_transaction_delete)){
            return response()->json(['msg' => 'Transactions has been deleted successfully.']);
        }else{
            return response()->json(['delete_txn_err' => "Something went wrong."],422);
        }
    }

    public function VerifySelectTransactions(Request $request){

        $request_ids = explode(',',$request->verify_selected_checkboxes);

        $wallet_transaction_verify = WalletTransaction::whereIn('id',$request_ids)->get();

        foreach ($wallet_transaction_verify as $key => $value) {
            $user_wallet_txn = WalletTransaction::whereId($value->id)->first();
            if($user_wallet_txn->is_cross_verify == 2){
                $user_wallet_txn->is_cross_verify = 1;
                $user_wallet_txn->total_bill_amount = $user_wallet_txn->check_amount_pos;
                $user_wallet_txn->update();
            }else{
                $user_wallet_txn = WalletTransaction::whereId($value->id)->first();
                $user_wallet_txn->is_cross_verify = 1;
                $user_wallet_txn->check_amount_pos = $user_wallet_txn->total_bill_amount;
                $user_wallet_txn->update();
            }
        }

        $wallet_transaction_verified = WalletTransaction::whereIn('id',$request_ids)->whereIsCrossVerify(1)->get();

        $cashback_transferToWallet = $this->transferToWallet($wallet_transaction_verified);

        if(!empty($cashback_transferToWallet)){
            return response()->json(['msg' => 'Transactions has been verified successfully.']);
        }else{
            return response()->json(['msg' => 'Something went wrong.']);
        }
    }

    public function EndUserCustomerTransactions(Request $request){

        $asc_desc = $request->get('order')[0]['dir'];
        $column_id = $request->get('order')[0]['column'];
        $search = $request->get("search")["value"];
        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }
        $colname = $request->get('columns');

        if($asc_desc == "asc"){
            $asc_desc = "desc";
        }else{
            $asc_desc = "asc";
        }

        $order = $request->get("order")[0]['column'];

        $column = "customer_id";

        $order = $request->get("order")[0]['column'];

        if($order == 1){
            $column = "mobile_number";
        }elseif ($order == 2) {
            $column = "wallet_transactions.invoice_number";
        }elseif ($order == 3) {
            $column = "wallet_transactions.total_bill_amount";
        }elseif ($order == 4) {
            $column = "wallet_transactions.check_amount_pos";
        }elseif ($order == 5) {
            $column = "wallet_transactions.txn_status";
        }elseif ($order == 6) {
            $column = "wallet_transactions.cashback_percentage";
        }elseif ($order == 7) {
            $column = "wallet_cash";
        }elseif ($order == 8) {
            $column = "wallet_transactions.redeemed_amount";
        }elseif ($order == 9) {
            $column = "venue_name";
        }elseif ($order == 11) {
            $column = "wallet_transactions.date_and_time";
        }elseif ($order == 12) {
            $column = "wallet_transactions.updated_at";
        }elseif ($order == 13) {
            $column = "wallet_transactions.updated_by";
        }elseif ($order == 14) {
            $column = "username";
        }

        $offer_product_name = Offer::whereOfferName($request->offer_name)->first();

        $data = WalletTransaction::select("wallet_transactions.*",DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS wallet_cash"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS mobile_number"),DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' else 'Mismatch' end) AS txn_status"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS username"),DB::raw("(select offer_redeem from user_assign_offers where id = wallet_transactions.offer_product_ids) AS offer_redeem"))
        // ->whereUserId($user_id->id)
        ->where(function($query) use ($request){

                if($request->joined_from && $request->joined_to){
                    $query->whereBetween(DB::raw('date(created_at)'),[$request->joined_from, $request->joined_to]);
                }else if($request->joined_from){
                    $query->where(DB::raw('date(created_at)'),'>=', $request->joined_from);
                }else if($request->joined_to){
                    $query->where(DB::raw('date(created_at)'),'<=', $request->joined_to);
                }

                if($request->venue_id_wallet){
                    $query->where('wallet_transactions.venu_id',$request->venue_id_wallet);
                }

                if($request->txn_status_wallet == 'verified'){
                    $query->where('wallet_transactions.is_cross_verify',1);
                }else if($request->txn_status_wallet == 'not_verified'){
                    $query->where('wallet_transactions.is_cross_verify',0);
                }

                if($request->mobile_number){
                    $query->where(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->mobile_number . '%');
                }

                if($request->email){
                    $query->where(DB::raw("(select email from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->email . '%');
                }

                if($request->invoice_number_wallet){
                    $query->where('invoice_number','=',$request->invoice_number_wallet);
                }

                if($request->venu_username_id_wallet){
                    $query->where('wallet_transactions.venue_user_id',$request->venu_username_id_wallet);
                }

                if($request->offers_product_wallet_id){
                    $query->whereRaw("FIND_IN_SET(?, offer_product_ids) > 0", [$request->offers_product_wallet_id]);
                }
        })->where('wallet_transactions.deleted_at',null)->with('offerProductIds')->orderBy($column,$asc_desc);


        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere(DB::raw("(select customer_id from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere("wallet_transactions.invoice_number", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.total_bill_amount", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.check_amount_pos", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.redeemed_amount", 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' else 'Mismatch' end)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select users.customer_id from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select venue_users.username from venue_users where id = wallet_transactions.venue_user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select venus.venue_name from venus where id = wallet_transactions.venu_id)"), 'like', '%'.$search.'%');
                    $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.updated_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.updated_by", 'Like', '%' . $search . '%');
                });

        }
            $filter = $data->get()->count();

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
            if($da->offer_product_ids){
                $pluck_offer_ids = explode(",", $da->offer_product_ids);
                $pluck_offer_name = Offer::whereIn('id', $pluck_offer_ids)->pluck('offer_name')->toArray();
                $da->offer_name = implode(", ", $pluck_offer_name);
                $da->offer_redeem = 'Redeemed';
            }else{
                $da->offer_name = 'N/A';
                $da->offer_redeem = 'N/A';
            }
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

     public function ExcelDownloadCustomerTransactions(Request $request){

       $data = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer id'"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Mobile Number'"),"wallet_transactions.invoice_number AS Invoice Number","wallet_transactions.total_bill_amount AS Check Amount","wallet_transactions.check_amount_pos AS Check Amount POS",DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' else 'Mismatch' end) AS 'Transaction Status'"),"wallet_transactions.id","wallet_transactions.cashback_percentage AS Cashback Percentage",DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Redeemed Wallet'"),"wallet_transactions.redeemed_amount AS Redemption From Loylaty","wallet_transactions.id",DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant User'"),DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"))->whereDeletedAt(null)->get()->toArray();
                
        foreach ($data as $key => $value) {
            unset($value->id);
        }

       $data = json_decode( json_encode($data), true);
        return $download =  Excel::create('Customer Wallet Transations', function($excel) use ($data){
            $excel->sheet('Customer Wallet Transations', function($sheet) use ($data){
                $sheet->fromArray($data);

            });
        })->download('xlsx');
    }
}





