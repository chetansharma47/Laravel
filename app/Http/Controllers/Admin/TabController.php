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
use App\Jobs\CashbackEmailJob;
use App\Jobs\UserAssignBadgeJob;
use App\Jobs\ReferMailSend;
use App\Jobs\UserResetPasswordMail;
use App\Mail\NewEventCreateMail;
use App\Mail\OfferAssignMail;
use App\Mail\CashbackEmail;
use App\Mail\ReferralEmail;
use App\Models\WalletDetail;
use App\Models\NotiRecord;
use App\Models\ApplicationData;
use App\Models\ApplicationImage;
use App\Models\GeneralSetting;
use Image;
use App\Models\Admin;
use DateTime;
use DateTimeZone;
use App\Mail\AssignBadgeMail;
require_once $_SERVER['DOCUMENT_ROOT'].'/vendor/autoload.php';
date_default_timezone_set('Asia/Dubai');
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
            // return WalletDetail::all();
            return view('admin.admin_tabs');
        }
    }

    public function customerTierSettings(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth()->guard('admin')->user();

            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            $tier_settings = TierSetting::whereDeletedAt(null)->first();
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
        $tier_settings = TierSetting::whereDeletedAt(null)->with('tierConditions')->first();
        return $tier_settings;

    }

    public function customerTierNameRemove(Request $request){
        $admin = Auth()->guard('admin')->user();
        $tier_find = TierSetting::first();
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

        $tier_find = TierSetting::first();
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
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
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
            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            $tier = TierSetting::with('tierConditions')->first();
            $wallet_cashback = WalletCashback::whereDeletedAt(null)->first();
            $venues = Venu::whereDeletedAt(null)->get();
            $cashback_last = Cashback::orderBy('id','desc')->first();
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
        if($save_cashback['message'] == 'Please upload valid image.'){
            return response()->json(['image_name_err' => 'Please upload valid image.'],422);
        }
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
            // $data = DB::table("wallet_transactions")
            //     ->select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer id'"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Mobile Number'"),"wallet_transactions.invoice_number AS Invoice Number","wallet_transactions.total_bill_amount AS Check Amount","wallet_transactions.check_amount_pos AS Check Amount POS",DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' else 'Mismatch' end) AS 'Transaction Status'"),"wallet_transactions.id","wallet_transactions.cashback_percentage AS Cashback Percentage",DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Redeemed Wallet'"),"wallet_transactions.redeemed_amount AS Redemption From Loylty",DB::raw("GROUP_CONCAT(offers.offer_name) AS 'Offers Product Name'"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant User'"),DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"))
            //     ->join("offers",DB::raw("FIND_IN_SET(offers.id,wallet_transactions.offer_product_ids)"),">",DB::raw("'0'"))
            //     ->groupBy("wallet_transactions.id")
            //     ->join("users","users.id","=","wallet_transactions.user_id")
            //     ->join("venus","venus.id","=","wallet_transactions.venu_id")
            //     ->join("venue_users","venue_users.id","=","wallet_transactions.venue_user_id")
            //     ->orderBy('id','desc')
            //     ->where('wallet_transactions.deleted_at','=',null)
            //     ->get();

            /*$data = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer id'"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Mobile Number'"),"wallet_transactions.invoice_number AS Invoice Number","wallet_transactions.total_bill_amount AS Check Amount","wallet_transactions.check_amount_pos AS Check Amount POS",DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' else 'Mismatch' end) AS 'Transaction Status'"),"wallet_transactions.id","wallet_transactions.cashback_percentage AS Cashback Percentage",DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Redeemed Wallet'"),DB::raw("CONCAT(case wallet_transactions.redeemed_amount when wallet_transactions.redeemed_amount IS NOT NULL then wallet_transactions.redeemed_amount else '0' end) AS 'Redemption From Loylaty'") ,"wallet_transactions.id",DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant User'"),DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"))->whereDeletedAt(null)->get();

                return $data;*/

            $admin = Auth()->guard('admin')->user();
            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            $tiers = TierSetting::with('tierConditions')->get();
            $venues = Venu::whereDeletedAt(null)->get();
            $offers = Offer::whereDeletedAt(null)->get();
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

            $data = User::select("*",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS full_name'),DB::raw('CONCAT(users.country_code,users.mobile_number) AS country_code_with_phone_number'),DB::raw("DATE_FORMAT(dob, '%d-%M-%Y') AS dob"),DB::raw("DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS join_date"), DB::raw("DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS created_at"))
                ->where(function($query) use ($request, $tier_find){
                    $query->whereDeletedAt(null);
                    if($request->joined_from && $request->joined_to){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                        // $query->whereBetween(DB::raw('date(created_at + interval 4 hour)'),[$request->joined_from, $request->joined_to]);
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
                    }else if($request->joined_from){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                    }else if($request->joined_to){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
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
                        $query->where(DB::raw('CONCAT(users.country_code,users.mobile_number)'), 'Like', '%' . $request->mobile_number . '%');
    
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
                        $query->orWhere(DB::raw('CONCAT(users.country_code,users.mobile_number)'), 'Like', '%' . $search . '%');
                        $query->orWhere('first_name', 'Like', '%' . $search . '%');
                        $query->orWhere('last_name', 'Like', '%' . $search . '%');
                        $query->orWhere('email', 'Like', '%' . $search . '%');
                        $query->orWhere('nationality', 'Like', '%' . $search . '%');
                        $query->orWhereDate(DB::raw("DATE_FORMAT(dob, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                        $query->orWhere('gender', 'Like', '%' . $search . '%');
                        $query->orWhere('is_active', 'Like', '%' . $search . '%');
                        $query->orWhereDate(DB::raw('date(created_at + interval 4 hour)'), 'Like', '%' . $search . '%');
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

            // $user_select->created_at =  $this->convert_to_user_date($user_select->created_at, 'Y-m-d H:i:s');
                

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
                    $tier_setting = TierSetting::whereDeletedAt(null)->first();
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


            if($request->first_time == 'true' && empty($search)){
                $return_data = [
                        "data" => [],
                        "draw" => (int)$request->draw,
                        "recordsTotal" => 0,
                        "recordsFiltered" => 0,
                        "input" => $request->all()
                ];
            }else{
                $return_data = [
                        "data" => $data,
                        "draw" => (int)$request->draw,
                        "recordsTotal" => $total,
                        "recordsFiltered" => $filter,
                        "input" => $request->all()
                ];
            }
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
            $column = "full_name";
        }elseif($order == 3){
            $column = "mobile_number";
        }elseif($order == 4){
            $column = "email";
        }elseif ($order == 5) {
            $column = "description";
        }elseif ($order == 6) {
            $column = "cashback_earned";
        }elseif ($order == 7) {
            $column = "redeemed_amount";
        }elseif ($order == 8) {
            $column = "user_wallet_cash";
        }else {
            $column = "date_and_time";
        }

        $selected_ids = explode(',', $request->selected_wallet_id);
        

        $data = WalletDetail::select("id","description","cashback_earned","redeemed_amount","user_wallet_cash",DB::raw("DATE_FORMAT(date_and_time  + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS date_and_time"),DB::raw("(select customer_id from users where id = wallet_details.user_id) AS customer_id"),DB::raw("(select email from users where id = wallet_details.user_id) AS email"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where id = wallet_details.user_id) AS mobile_number"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_details.user_id) AS full_name"))->whereIn('wallet_details.user_id',$selected_ids)
            ->where(function($query) use ($request){

                if($request->joined_from && $request->joined_to){
                    $query->whereBetween(DB::raw('date(created_at + interval 4 hour)'),[$request->joined_from, $request->joined_to]);
                }else if($request->joined_from){
                    $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                }else if($request->joined_to){
                    $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
                }

                if($request->mobile_number){
                    $query->where(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_details.user_id)"), 'Like', '%' . $request->mobile_number . '%');
                }

                if($request->customer_name_wallet){
                    $query->where(DB::raw("(select CONCAT(users.first_name,' ',users.last_name) from users where users.id = wallet_details.user_id)"), 'Like', '%' . $request->customer_name_wallet . '%');
                }

                if($request->email){
                    $query->where(DB::raw("(select email from users where users.id = wallet_details.user_id)"), 'Like', '%' . $request->email . '%');
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
                        $query->orWhere(DB::raw("(select customer_id from users where id = wallet_details.user_id)"), 'Like', '%'. $search . '%');
                        $query->orWhere(DB::raw("(select email from users where id = wallet_details.user_id)"), 'Like', '%'. $search . '%');
                        $query->orWhere(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where id = wallet_details.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_details.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere('description', 'Like', '%' . $search . '%');
                        $query->orWhere('cashback_earned', 'Like', '%' . $search . '%');
                        $query->orWhere('redeemed_amount', 'Like', '%' . $search . '%');
                        $query->orWhere('user_wallet_cash', 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(date_and_time  + interval 4 hour, '%Y-%m-%d  %H:%i:%s')"), 'Like', '%' . $search . '%');
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

            $user_select->user_wallet_cash = round($user_select->user_wallet_cash,2);
            $user_select->cashback_earned = round($user_select->cashback_earned,2);
            // $user_select->date_and_time =  $this->convert_to_user_date($user_select->date_and_time, 'Y-m-d H:i:s');
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
        $tier_find = TierCondition::whereId($request->tier)->first();

        $data = User::select("*",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS full_name'),DB::raw('CONCAT(users.country_code, " ", users.mobile_number) AS country_code_with_phone_number'),DB::raw("DATE_FORMAT(dob, '%d-%M-%Y') AS dob"),DB::raw("DATE_FORMAT(created_at  + interval 4 hour, '%d-%M-%Y %H:%i:%s') AS join_date"))
                ->where(function($query) use ($request, $tier_find){
                    $query->whereDeletedAt(null);
                    if($request->joined_from && $request->joined_to){
                        $query->whereBetween(DB::raw('date(created_at + interval 4 hour)'),[$request->joined_from, $request->joined_to]);
                    }else if($request->joined_from){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                    }else if($request->joined_to){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
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
                });


        if(!empty($request->search_txt)){
            $search = $request->search_txt;

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

                $data = $data->get()->pluck('id');
                                
            }
        }else{
            $data = $data->get()->pluck('id');

        }

        return response()->json(['ids_data' => $data]);

        // $users = User::whereDeletedAt(null)->select('customer_id as Customer Id', 'mobile_number as Mobile Number','first_name as First Name','last_name as Last Name','email as Email Id','nationality as Nationality','dob as DOB', 'gender as Gender','is_active as Status',DB::raw("DATE_FORMAT(created_at, '%Y-%m-%d') AS Join_On"),'customer_tier as Customer Tier','wallet_cash as Wallet Cash','reference_code as Customer Referral Code','reference_by as Referral By')->orderBy("id","desc")->get()->toArray();

        // return $download =  Excel::create('export-users', function($excel) use ($users){

        //     $excel->sheet('export-users', function($sheet) use ($users){

        //         $sheet->fromArray($users);

        //     });

        // })->download('csv');

    }

    public function downloadUserAfterCriteria(Request $request,$ids_data){
        $ids_data = explode(",", base64_decode($request->ids_data));
        $users = User::whereDeletedAt(null)->select('customer_id as Customer ID', DB::raw('CONCAT(users.country_code, users.mobile_number) AS "Mobile Number"'),'first_name as First Name','last_name as Last Name','email as Email ID','nationality as Nationality','dob as DOB', 'gender as Gender','is_active as Status',DB::raw("DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS Join_On"),'customer_tier as Customer Tier',DB::raw("ROUND(wallet_cash,2) AS 'Wallet Cash'"),'reference_code as Customer Referral Code','reference_by as Referral By')->orderBy("id","desc")->whereIn('users.id',$ids_data)->get()->toArray();

         return $download =  Excel::create('export-users', function($excel) use ($users){

            $excel->sheet('export-users', function($sheet) use ($users){

                $sheet->fromArray($users);

            });

        })->download('csv');


    }

    public function downloadWalletTransactions(Request $request){

        $selected_ids = explode(',', $request->selected_user);

       $wallet_transactions = WalletDetail::select(DB::raw("(select customer_id from users where id = wallet_details.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_details.user_id) AS 'Customer Name'"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where id = wallet_details.user_id) AS 'Mobile Number'"),DB::raw("(select email from users where id = wallet_details.user_id) AS 'Email'"),"description as Description","cashback_earned as Cashback Earn","user_wallet_cash as Wallet Cash",DB::raw("DATE_FORMAT(date_and_time  + interval 4 hour, '%d-%M-%Y %H:%i:%s') AS 'Date and Time Added'"),"id")->whereIn('wallet_details.user_id',$selected_ids)
           ->where(function($query) use ($request){

                    if($request->joined_from && $request->joined_to){
                        $query->whereBetween(DB::raw('date(created_at + interval 4 hour)'),[$request->joined_from, $request->joined_to]);
                    }else if($request->joined_from){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                    }else if($request->joined_to){
                        $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
                    }

                    if($request->mobile_number){
                        $query->where(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_details.user_id)"), 'Like', '%' . $request->mobile_number . '%');
                    }

                    if($request->customer_name_wallet){
                        $query->where(DB::raw("(select CONCAT(users.first_name,' ',users.last_name) from users where users.id = wallet_details.user_id)"), 'Like', '%' . $request->customer_name_wallet . '%');
                    }

                    if($request->email){
                        $query->where(DB::raw("(select email from users where users.id = wallet_details.user_id)"), 'Like', '%' . $request->email . '%');
                    }

            });
       
       if(!empty($request->search_txt)){
            $search = $request->search_txt;

           if($search){
                $wallet_transactions  = $wallet_transactions->where(function($query) use($search){
                            $query->orWhere(DB::raw("(select customer_id from users where id = wallet_details.user_id)"), 'Like', '%'. $search . '%');
                            $query->orWhere(DB::raw("(select email from users where id = wallet_details.user_id)"), 'Like', '%'. $search . '%');
                            $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_details.user_id)"), 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_details.user_id)"), 'Like', '%' . $search . '%');
                            $query->orWhere('description', 'Like', '%' . $search . '%');
                            $query->orWhere('cashback_earned', 'Like', '%' . $search . '%');
                            $query->orWhere('redeemed_amount', 'Like', '%' . $search . '%');
                            $query->orWhere('user_wallet_cash', 'Like', '%' . $search . '%');
                            $query->orWhere(DB::raw("DATE_FORMAT(date_and_time  + interval 4 hour, '%d-%M-%Y %H:%i:%s')"), 'Like', '%' . $search . '%');
                        });

                $wallet_transactions = $wallet_transactions->get()->pluck('id');               
            }
       }else{
            $wallet_transactions = $wallet_transactions->get()->pluck('id');
       }

       return response()->json(['ids_data' => $wallet_transactions]);
    }

    public function downloadWalletTransactionsAfterSelectedUser(Request $request,$ids_data){
        $ids_data = explode(",", base64_decode($request->ids_data));
        $wallet_transactions = WalletDetail::select(DB::raw("(select customer_id from users where id = wallet_details.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_details.user_id) AS 'Customer Name'"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where id = wallet_details.user_id) AS 'Mobile Number'"),DB::raw("(select email from users where id = wallet_details.user_id) AS 'Email ID'"),"description as Description",DB::raw("ROUND(cashback_earned,2) AS 'Cashback Earned'"),DB::raw("ROUND(redeemed_amount,2) AS 'Redeemed Amount'"),DB::raw('ROUND(user_wallet_cash,2) as "Wallet Cash"'),DB::raw("DATE_FORMAT(date_and_time  + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS 'Date and Time Added'"))->orderBy("wallet_details.id","desc")->whereIn('wallet_details.id',$ids_data)->get();

        foreach ($wallet_transactions as $value) {
            // $value['Date and Time Added'] =  $this->convert_to_user_date($value['Date and Time Added'], 'Y-m-d H:i:s');
            $value['Wallet Cash'] = round($value['Wallet Cash'],2);
        }

        return $download =  Excel::create('selected-customer-transactions', function($excel) use ($wallet_transactions){

            $excel->sheet('selected-customer-transactions', function($sheet) use ($wallet_transactions){

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
                User::whereIn('reference_code',array($user_find->self_reference_code))->update(['reference_by' => $user_find->first_name . " " . $user_find->last_name]);
            }else if(isset($d['selected_key_name']) && $d['selected_key_name'] == "last_name"){
                User::whereIn('reference_code',array($user_find->self_reference_code))->update(['reference_by' => $user_find->first_name . " " . $user_find->last_name]);
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
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
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
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }

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
            if($admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            $venu = Venu::whereDeletedAt(null)->get();
            return view('admin.offer-settings',compact('venu'));
        }
    }

    public function venueUser(Request $request){
        if($request->isMethod('GET')){

            //DB::raw("(select venue_name from venus where id = assign_user_venues.venu_id) AS venue_name")

           // return $data = VenueUser::select('*',DB::raw("(select venue_name from venus where id = venue_users.venu_id) AS venue_name"))->whereDeletedAt(null)->with('assignUserVenues')->get();

            // return $data = VenueUser::select('*',DB::raw("GROUP_CONCAT((select venu_id from assign_user_venues where id = assign_user_venues.venue_user_id) SEPARATOR ',')"))->whereDeletedAt(null)->get();
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            $venulist = Venu::whereDeletedAt(null)->get();
            return view('admin.venue-user',compact('venulist'));
        }
    }

    public function notificationSetting(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Managment" || $admin->role_type == "Staff" || $admin->role_type == "Marketing"){
                return redirect()->route('admin.adminTabs');
            }
            $city = City::get();
            $country = Country::orderBy("name","asc")->get();
            return view('admin.notifications-settings',compact('city','country'));
        }
    }

    public function adminUser(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            return view('admin.admin-user');
        }
    }

    public function performanceDashboard(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            return view('admin.performance-dashboard');
        }
    }

    public function crossVerificationSales(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();

        //     $data = DB::table("wallet_transactions")
        //         ->select(DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Outlet Name'"),"wallet_transactions.invoice_number AS Check No",DB::raw('(CASE WHEN wallet_transactions.total_bill_amount = 0 THEN "0" ELSE wallet_transactions.total_bill_amount END) AS "Check Total" '),"wallet_transactions.id")
        //         ->groupBy("wallet_transactions.id")
        //         ->join("venus","venus.id","=","wallet_transactions.venu_id")
        //         ->where('wallet_transactions.is_cross_verify','!=',1)
        //         ->orderBy('id','desc')
        //         ->where('wallet_transactions.deleted_at','=',null)
        //         ->get()->toArray();


            if($admin->role_type == "Admin" || $admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
            return view('admin.cross-verification-sales');
        }
    }

    public function generalSettings(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            if($admin->role_type == "Marketing" || $admin->role_type == "Managment" || $admin->role_type == "Staff"){
                return redirect()->route('admin.adminTabs');
            }
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
            $venuecreate->created_by = $admin->name;
            $venuecreate->updated_by = $admin->name;
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
                        // $query->orWhere('created_by', 'Like', '%'. $search . '%');
                        // $query->orWhere('updated_by', 'Like', '%'. $search . '%');
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
            $last_venue = Venu::orderBy('unique_id','desc')->first();
            $vlist = Venu::whereDeletedAt(null)->orderBy('unique_id','asc')->get();
            return response()->json(['list' => $vlist,'last_venue' => $last_venue]);
        }
    }

    public function venueRemove(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $vlist = Venu::whereUniqueId($request->elem_id)->first();

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

    public function venuSave(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $data = $request->all();

            $find_venue = Venu::where('unique_id','!=',$data['uniq'])->first();


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
            if($saveVenu['message'] == "Please upload valid image."){
                return response()->json(['venue_name_err' => $saveVenu['message'] ],422);
            }
            return response()->json($saveVenu);
        }
    }

    Public function allVenuEvents(Request $request){
        if($request->isMethod('GET')){
             $admin = Auth::guard('admin')->user();
             $vlist = Venu::whereDeletedAt(null)->get();
             if($vlist){
                return response()->json(['message' => 200 , 'venulist' => $vlist]);
             }
                return response()->json(['message' => 404]);
        }
    }

    public function ParticularVenu(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
             $venuelist = Venu::whereId($request->venu_id)->first();
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
            if(!empty($saveEvent['data'])){
                return response()->json($saveEvent);
            }
            if($saveEvent['message'] == "Please upload valid image."){
                return response()->json(['event_name_err' => $saveEvent['message']],422);
            }
            return response()->json(['message' => 404]);
        }
    }

    public function eventsallData(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $venu_list = Venu::whereDeletedAt(null)->get();
            $last_event = Event::orderBy("unique_id","desc")->first();
            $eventlist = Event::whereDeletedAt(null)->orderBy('unique_id','asc')->with('venu')->get();
            return response()->json(['list' => $eventlist,'last_event' => $last_event, 'venue_all' => $venu_list]);
        }
    }


    public function eventRemove(Request $request){
        if($request->isMethod('POST')){
            $admin = Auth::guard('admin')->user();
            $event_remove = Event::whereUniqueId($request->uniq_id)->first();

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
            $venuOffers = Venu::whereId($request->venuid)->whereDeletedAt(null)->first();
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
            if($saveOffer['message'] == "Please upload valid image."){
                return response()->json(['offer_name_err' => $saveOffer['message']],422);
            }
            if($saveOffer){
                return response()->json($saveOffer);
            }
                return response()->json('Something went wrong.');
            
        }
    }

    public function AllOffers(Request $request){
        if($request->isMethod('GET')){
            $admin = Auth::guard('admin')->user();
            $last_offer = Offer::orderBy("unique_id","desc")->first();
            $offer = Offer::whereDeletedAt(null)->orderBy('unique_id','asc')->with(['offerSetting','venu','offerSetting.city'])->get();
            $cityall = City::all();
            return ['offer' => $offer, 'cityall' => $cityall,'last_offer' => $last_offer];
        }
    }

    public function offerRemove(Request $request){
         if($request->isMethod('POST')){
             $admin = Auth::guard('admin')->user();
             $data = $request->all();
             $offer_remove = Offer::whereUniqueId($request->uniq_id)->first();
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
        $check_activated_user = User::whereIn("id", $ids)->where("is_active", "=", 'Active')->where("is_block", "=", 0)->first();

        if(!empty($check_activated_user)){
            return response()->json(['user_action_err' => 'Selected user has been already activated.'],422);
        }
        User::whereIn("id", $ids)->update(['is_active' => "Active",'is_block' => 0]);
        return ['status' => "success","ids" => $ids];
    }

    public function deactivateUsers(Request $request){
        $ids = explode(",", $request->ids);

        $check_deactivated_user = User::whereIn("id", $ids)->where("is_active", "=", 'Inactive')->where("is_block", "=", 1)->first();

        if(!empty($check_deactivated_user)){
            return response()->json(['user_action_err' => 'Selected user has been already deactivated.'],422);
        }
        User::whereIn("id", $ids)->update(['is_active' => "Inactive", 'is_block' => 1]);
        return ['status' => "success","ids" => $ids];
    }

    public function resetPasswordSendLink(Request $request){
        $ids = explode(",", $request->ids);

        $check_deactivated_user = User::where(function($query) use ($ids){
                                        $query->whereIn("id", $ids);
                                        $query->where("is_active", "=", "Inactive");
                                    })->orWhere(function($query) use ($ids){
                                        $query->whereIn("id", $ids);
                                        $query->where("is_block", "=", 1);
                                    })->first();

        if(!empty($check_deactivated_user)){
            return response()->json(['user_action_err' => 'Selected user has been already deactivated or blocked by admin.'],422);
        }

        $users = User::whereIn("id", $ids)->get();

        foreach ($users as $value) {
            $user_id = $value->id;
            $reset_password_token = str_random(64);
            $link = url("reset-password/$reset_password_token") . "/" . base64_encode($user_id);

            $resetPasswordJob = (new UserResetPasswordMail($value, $link))
                            ->delay(Carbon::now()->addSeconds(3));
            dispatch($resetPasswordJob);

            DB::table('password_resets')->whereEmail($value->email)->delete();

            DB::table('password_resets')->insert(['email' => $value->email, 'token' => $reset_password_token,
                    'created_at' => Carbon::now()]);

            $message_text = "We have received a request to reset your Capital Motion account password associated with this mobile number. ".$link;

            \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
            $sms = new \SMSGlobal\Resource\Sms();
            // $message = $admin_transaction_notification->message;
            try {
                $response = $sms->sendToOne($value->country_code.$value->mobile_number,$message_text,'CM-Society');
            } catch (\Exception $e) {
                continue;
            }
        }

        return ['status' => "success","message" => 'A reset password link has been sent to user registered email address and mobile number.'];
    }

    public function totalTransactionAmountForDays(Request $request){
        $days = $request->transaction_amount_check_last_days;
        $admin = Auth::guard('admin')->user();
        $tierSetting = TierSetting::first();
        $tierSetting->transaction_amount_check_last_days = $days;
        $tierSetting->update();
        return "success";
    }

    public function totalValidateCheckForDays(Request $request){

        $days = $request->customer_tier_validity_check;
        $admin = Auth::guard('admin')->user();
        $tierSetting = TierSetting::first();
        $tierSetting->customer_tier_validity_check = $days;
        $tierSetting->update();
        return "success";
    }

    public function badges(Request $request){

        // $general_setting = GeneralSetting::all();

        // return $general_setting[1];

        $admin = Auth()->guard('admin')->user();
        if($admin->role_type == "Marketing" || $admin->role_type == "Managment"){
            return redirect()->route('admin.adminTabs');
        }
        $badges = Badge::whereDeletedAt(null)->orderBy("id","desc")->get();
        return view('admin.badges',compact('badges'));
    }

    public function assignBadges(Request $request){
        $admin = Auth::guard('admin')->user();
        if($admin->role_type == "Marketing" || $admin->role_type == "Managment"){
            return redirect()->route('admin.adminTabs');
        }
        $badges = Badge::whereDeletedAt(null)->orderBy("id","desc")->get();
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
        $data = User::select("id","customer_id",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS customer_name'),DB::raw('CONCAT(users.country_code,users.mobile_number) AS country_code_with_phone_number'))->whereId("kk")->orderBy($column,$asc_desc);

        $total = $data->get()->count();

        if(!empty($request->get("search")["value"])){
            $search = $request->get("search")["value"];
        }else{

            $search = $request->search_for_table1;
        }
        $filter = $total;


        if($search){
            $data  = User::select("id","customer_id",DB::raw('CONCAT(users.first_name, " ", users.last_name) AS customer_name'),DB::raw('CONCAT(users.country_code,users.mobile_number) AS country_code_with_phone_number'))->whereDeletedAt(null)
                //->whereNotIn('id', $have_badges_not_in_user_ids)
                ->orderBy($column,$asc_desc)
                ->where(function($query) use($search){
                        $query->where('customer_id', 'Like', '%'. $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.country_code,users.mobile_number)'), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.first_name, " ", users.last_name)'), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw('CONCAT(users.country_code,users.mobile_number)'), 'Like', '%' . $search . '%');
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

        $admin = Auth::guard('admin')->user();

        // $check_badge_deleted = Badge::whereId($request->badge_id)->where('deleted_at','!=',null)->first();

       $check_badge_deleted = Badge::where(function($query) use ($request){
                                    $query->where("deleted_at", "!=", null);
                                })->orWhere(function($query) use ($request){
                                    $query->where("status", "=", 'Inactive');
                                })->whereId($request->badge_id)->first();

        if(!empty($check_badge_deleted)){
            return response()->json(['badge_found_err' => 'Selected badge has been deleted or inactive by admin or super admin.'],422);
        }
        $data = $request->all();
        $data['from_time'] = date("H:i:s", strtotime($data['from_time']));
        $data['to_time'] = date("H:i:s", strtotime($data['to_time']));
        $find_user = User::whereCustomerId($data['customer_id'])->where("is_active", "=", 'Active')->where("is_block", "=", 0)->first();

        if(empty($find_user)){
            return response()->json(['badge_found_err' => "Selected customer has been blocked or inactive by admin."],422);
        }

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

        $find_user = User::whereCustomerId($data['customer_id'])->first();
        $find_badge = Badge::whereId($request->badge_id)->first();
        $find_badge_assign = AssignBadge::whereUserId($find_user->id)->whereBadgeId($data['badge_id'])->first();

        if(empty($find_badge_assign)){

            $assign_badge = new AssignBadge();
            $assign_badge->user_id = $find_user->id;
            $assign_badge->badge_id = $data['badge_id'];
            $assign_badge->comment = $data['comment'];
            $assign_badge->status = $data['status'];
            $assign_badge->when_day = $data['when'];
            $assign_badge->from_date = $data['from_date'];
            $assign_badge->to_date = $data['to_date'];
            $assign_badge->from_time = $data['from_time'];
            $assign_badge->to_time = $data['to_time'];
            $assign_badge->created_by = $admin->name;
            $assign_badge->updated_by = $admin->name;
            $assign_badge->save();
            $assign_badge_find = AssignBadge::whereId($assign_badge->id)->with('user','badge')->first();
            $find_assign_badge = AssignBadge::whereId($assign_badge->id)->first();

            // $assign_badge_mail = (new UserAssignBadgeJob($find_assign_badge, $find_user, $find_badge))->delay(Carbon::now()->addSeconds(3));
            // dispatch($assign_badge_mail);

            if($data['status'] != 'Inactive'){
                try{
                    \Mail::to($find_user->email)->send(new AssignBadgeMail($find_assign_badge, $find_user, $find_badge));
                }catch(\Exception $ex){
                    // return $ex->getMessage();
                }

                // if($admin_cashback_notification_find->push_type == 1){

                    $noti_record_find = NotiRecord::whereUserId($find_user->id)->first();

                    if(empty($noti_record_find)){
                        $save_noti_record = new NotiRecord();
                        $save_noti_record->user_id = $find_user->id;
                        $save_noti_record->normal = 1;
                        $save_noti_record->save();

                    }else{
                        $noti_record_find->normal = $noti_record_find->normal + 1;
                        $noti_record_find->update();
                    }
                    if($find_user->device_type == 'Android'){
                        if($find_user->device_token && strlen($find_user->device_token) > 20){


                            $total_noti_record = NotiRecord::whereUserId($find_user->id)->sum(DB::raw('wallet + offer + event + normal'));

                            $message = "The ".$find_badge->badge_name." badge has been assigned to you.";
                            try{
                               $android_notify =  $this->send_android_notification_new($find_user->device_token, $message, $notmessage = "Assign Badge Notification", $noti_type = 8,null,null,$total_noti_record);
                            } catch (\Exception $e) {
                                // continue;
                            }

                            $criteria_data = [
                                'user_id'   => $find_user->id,
                                'message'   => $message,
                                'noti_type' => 8,
                            ];
                            // AdminCriteriaNotification::create($criteria_data);
                       
                       }
                    }

                    if($find_user->device_type == 'Ios' && strlen($find_user->device_token) > 20){
                        if($find_user->device_token){


                            $total_noti_record = NotiRecord::whereUserId($find_user->id)->sum(DB::raw('wallet + offer + event + normal'));
                            $message = "The ".$find_badge->badge_name." badge has been assigned to you.";
                            try{
                            $ios_notify =  $this->iphoneNotification($find_user->device_token, $message, $notmessage = "Assign Badge Notification", $noti_type = 8,null,null,$total_noti_record);
                            } catch (\Exception $e) {
                                // continue;
                            }
                            $criteria_data = [
                                'user_id'   => $find_user->id,
                                'message'   => $message,
                                'noti_type' => 8,
                            ];
                        
                       }
                    }
                        AdminCriteriaNotification::create($criteria_data);
                
            // }


                }



        }else{
            $find_badge_assign->badge_id = $data['badge_id'];
            $find_badge_assign->comment = $data['comment'];
            $find_badge_assign->status = $data['status'];
            $find_badge_assign->when_day = $data['when'];
            $find_badge_assign->from_date = $data['from_date'];
            $find_badge_assign->to_date = $data['to_date'];
            $find_badge_assign->from_time = $data['from_time'];
            $find_badge_assign->to_time = $data['to_time'];
            $find_badge_assign->updated_by = $admin->name;
            $find_badge_assign->deleted_at = null;
            $find_badge_assign->update();
            $assign_badge_find = AssignBadge::whereId($find_badge_assign->id)->with('user','badge')->first();
        }

        $addOrUpdate = $assign_badge_find;

        // $addOrUpdate = $this->venueBusinessModel()->addOrUpdateBadgeAssignInTable($data);
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
        if($admin->role_type == 'Staff'){
            return response()->json(['badge_name_error' => "Staff cannot be add new badge."],422);
        }
        $data = $request->all();

        $badge_checkname_exists = Badge::whereBadgeName($data['badge_name'])->whereDeletedAt(null)->first();

        if(!empty($badge_checkname_exists)){
            return response()->json(['badge_name_error' => "Badge name already exists."],422);
        }

        $add_badge = $this->badgeBusinessModel()->addBadge($data,$admin);

        if($add_badge['message'] == "Please upload valid image."){
            return response()->json(['badge_name_error' => $add_badge['message']],422);
        }
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
        if($admin->role_type == 'Staff'){
            return response()->json(['badge_name_error' => "Staff cannot be update badge."],422);
        }
        $data = $request->all();

        $badge_checkname_exists = Badge::whereBadgeName($data['badge_name'])->where('id','!=', $data['badge_id'])->whereDeletedAt(null)->first();

        if(!empty($badge_checkname_exists)){
            return response()->json(['badge_name_error' => "Badge name already exists."],422);
        }

        $update_badge = $this->badgeBusinessModel()->updateBadge($data,$admin);
        if($update_badge['message'] == "Please upload valid image."){
            return response()->json(['badge_name_error' => $update_badge['message']],422);
        }
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

       $data = AssignBadge::select('*',DB::raw("(select customer_id from users where id = assign_badges.user_id) AS customer_id"),DB::raw("(select badge_name from badges where id = assign_badges.badge_id) AS badge_name"),DB::raw("(select CONCAT(users.country_code,users.mobile_number) from users where id = assign_badges.user_id) AS mobile_number"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = assign_badges.user_id) AS full_name"),DB::raw("DATE_FORMAT(from_date, '%d-%M-%Y') AS from_date"), DB::raw("DATE_FORMAT(to_date, '%d-%M-%Y') AS to_date"),DB::raw("DATE_FORMAT(from_time, '%h:%i %p') AS from_time"),DB::raw("DATE_FORMAT(to_time, '%h:%i %p') AS to_time"))->whereIn('badge_id', [$badge_id])->whereDeletedAt(null)->orderBy($column,$asc_desc);
        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere(DB::raw("(select customer_id from users where id = assign_badges.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select badge_name from badges where id = assign_badges.id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select CONCAT(users.country_code,users.mobile_number) from users where id = assign_badges.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) AS full_name from users where id = assign_badges.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere('status', 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("DATE_FORMAT(from_date, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("DATE_FORMAT(to_date, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
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
                        $query->orWhere(DB::raw("DATE_FORMAT(from_date, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("DATE_FORMAT(to_date, '%d-%M-%Y')"), 'Like', '%' . $search . '%');
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
        $admin = Auth::guard('admin')->user();
        if($admin->role_type == 'Staff'){
            return response()->json(['badge_name_error' => "Staff cannot be delete badge."],422);
        }
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
        if(!empty($message_type)){
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
        }else{
            $push_type = 0;
            $sms_type = 0;
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
                try{
                    $file_original_name = $request->file('img_upload')->getClientOriginalName();
                    $extension = $request->file('img_upload')->getClientOriginalExtension();
                    $file = $request->file('img_upload');
                    $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('ATTACHMENT_MAIL_STORAGE');
                    $imageName = date('mdYHis') . rand(10,100) . uniqid(). '.' . $extension;
                    $img_new = Image::make($file)->stream($extension, 50);
            
                    file_put_contents($destinationPath. '/' . $imageName, $img_new);
                    
                    //$file->move($destinationPath, $imageName);
                }catch(\Exception $ex){
                    return response()->json(['message' => 'Please upload valid file.']);
                }
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
            $check_notification_email->is_title = (isset($request->welcome_title_checkbox)) ? 1: 0;
            $check_notification_email->is_attachment = (isset($request->app_checkboxes_upload)) ? 1: 0;
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
            $check_notification_email->is_title = (isset($request->welcome_title_checkbox)) ? 1: 0;
            $check_notification_email->is_attachment = (isset($request->app_checkboxes_upload)) ? 1: 0;

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

        $admin = Auth()->guard('admin')->user();

         date_default_timezone_set("UTC");
         
        ($request->msg_type == "Push") ? $push_type = 1 : $push_type = 0;  
        ($request->msg_type == "Sms") ? $sms_type = 1 : $sms_type = 0;  

        if($request->gender == "All"){

            if(!empty($request->nationality) && !empty($request->city_name)){

                $users_notify = User::whereCityOfResidence($request->city_name)->whereNationality($request->nationality)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
                
            }else if(!empty($request->city_name)){
                $users_notify = User::whereCityOfResidence($request->city_name)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }else if(!empty($request->nationality)){
                $users_notify = User::whereNationality($request->nationality)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }else{
                $users_notify = User::where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }
        }else{

            if(!empty($request->nationality) && !empty($request->city_name)){

                $users_notify = User::whereCityOfResidence($request->city_name)->whereGender($request->gender)->whereNationality($request->nationality)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();

            }else if(!empty($request->city_name)){

                $users_notify = User::whereCityOfResidence($request->city_name)->whereGender($request->gender)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }else if(!empty($request->nationality)){
                $users_notify = User::whereNationality($request->nationality)->whereGender($request->gender)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }else{
                $users_notify = User::whereGender($request->gender)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }
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
            'noti_type' => 7,
            'sent_by' => $admin->name
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
                        $noti_record_find = NotiRecord::whereUserId($user->id)->first();

                        if(empty($noti_record_find)){
                            $save_noti_record = new NotiRecord();
                            $save_noti_record->user_id = $user->id;
                            $save_noti_record->normal = 1;
                            $save_noti_record->save();

                        }else{
                            $noti_record_find->normal = $noti_record_find->normal + 1;
                            $noti_record_find->update();
                        }


                        if($user->device_type == 'Android'){
                           if($user->device_token && strlen($user->device_token) > 20){


                            $total_noti_record = NotiRecord::whereUserId($user->id)->sum(DB::raw('wallet + offer + event + normal'));
                            try{
                           $android_notify =  $this->send_android_notification_new($user->device_token, $request->specific_criteria_message, $notmessage = "Admin Send notification message", $noti_type = 7, null, null, $total_noti_record);
                           } catch (\Exception $e) {
                                continue;
                            }
                           if($android_notify){
                              (!empty($wallet_transactions->user_id)) ? $data['user_id'] = $wallet_transactions->user_id : $data['user_id'] = $user->id;
                              // $save_notification =  AdminCriteriaNotification::create($data);
                            }
                           }
                        }

                        if($user->device_type == 'Ios' && strlen($user->device_token) > 20){
                            if($user->device_token){
                            $total_noti_record = NotiRecord::whereUserId($user->id)->sum(DB::raw('wallet + offer + event + normal'));
                            try{
                            $ios_notify =  $this->iphoneNotification($user->device_token, $request->specific_criteria_message, $notmessage = "Admin Send notification message", $noti_type = 7, null , null , $total_noti_record);
                            } catch (\Exception $e) {
                                continue;
                            }
                            if($ios_notify){
                               (!empty($wallet_transactions->user_id)) ? $data['user_id'] = $wallet_transactions->user_id : $data['user_id'] = $user->id;
                                // $save_notification = AdminCriteriaNotification::create($data);
                             }
                           }
                        }
                                $save_notification = AdminCriteriaNotification::create($data);
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
                            $response = $sms->sendToOne($user->country_code.$user->mobile_number, $message,'CM-Society');
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


        // return $customer_registrations_trends = User::select(DB::raw("DATE_FORMAT(created_at, '%Y-%m-%e') as x"),DB::raw('COUNT(*) as y'))
        //     // ->whereDate('created_at','>=',$request->from_date)
        //     // ->whereDate('created_at','<=',$request->to_date)
        //     // ->orderBy('created_at','ASC')
        //     ->groupBy('x')
        //     ->get();

            // selectRaw("DATE_FORMAT(created_at, '%Y-%m-%e') x, COUNT(*) y")

        $customer_registrations_trends = User::selectRaw("DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d') x, COUNT(*) y")
            ->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
            ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)
            ->groupBy('x')
            ->orderBy('x', 'asc')
            ->get();

        $customer_dirshams_wallet_cash_trends = User::selectRaw("SUM(wallet_cash) y, DATE_FORMAT(created_at, '%Y-%m-%d') x")
            // ->whereDate('created_at','>=',$request->from_date)
            // ->whereDate('created_at','<=',$request->to_date)
            ->groupBy('x')
            ->orderBy('x', 'asc')
            ->get();


        // $totalsales_amount_trends_ids = WalletTransaction::where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
        //     ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)
        //     ->whereIn('is_cross_verify',[1,3])
        //     ->pluck('id');

        $totalsales_amount_trends = WalletTransaction::selectRaw("SUM(total_bill_amount) y, DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d') x")->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
            ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)
            ->groupBy('x')
            ->orderBy('x', 'asc')
            ->whereIn('is_cross_verify',[1,3])
            ->get();

        $redeemed_amount_trends = WalletTransaction::selectRaw("SUM(redeemed_amount) y, DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d') x")->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
            ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)
            ->groupBy('x')
            ->orderBy('x', 'asc')
            ->get();

        $users = User::where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
            ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date);
        $get_all_customers = $users->pluck('id');


        $customer_dirhams_wallet = round(User::sum('wallet_cash'),2);


        $customer_registrations = $users->count();
        $customer_referal = $users->whereNotNull('reference_by')->count();

        $user_ids_from_wallet_transactions = WalletTransaction::where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
                ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->pluck('user_id');

        $referral_first_transaction_done = User::whereIn("id", $user_ids_from_wallet_transactions)->where('refer_amount_used', '=', 1)->count();

        $total_sales = WalletTransaction::where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->whereIn('is_cross_verify',[1,3])->sum('total_bill_amount');

        // $cashback_earned = WalletTransaction::whereIn('is_cross_verify',[1,3])->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
        //         ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->sum(DB::raw('ROUND(cashback_earned,2)'));

        $cashback_earned_pluck_id = WalletTransaction::where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->groupBy('user_id')->get(['user_id'])->pluck('user_id');

        $cashback_earned = WalletDetail::whereIn('user_id',$cashback_earned_pluck_id)->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
                ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->sum(DB::raw('ROUND(cashback_earned,2)'));

        $cashback_earnings_trends = WalletDetail::selectRaw("SUM(cashback_earned) y, DATE_FORMAT(created_at + interval 4 hour, '%Y-%m-%d') x")->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
            ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)
            ->groupBy('x')
            ->orderBy('x', 'asc')
            ->whereIn('user_id',$cashback_earned_pluck_id)
            ->get();

        $redeemed_amount = WalletTransaction::where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
                ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->sum('redeemed_amount');

       $repeat_customers = WalletTransaction::select('user_id',DB::raw('COUNT(user_id) count'))->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->groupBy('user_id')->havingRaw('COUNT(count) > 1')->get()->count();

      $fraud_check = WalletTransaction::select('user_id',DB::raw('COUNT(user_id) count'))->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)->groupBy('user_id')->havingRaw('COUNT(count) > 1')->orderBy('count','desc')->first();

      if($fraud_check != null){
        $fraud_check = $fraud_check->count;
      }else{
        $fraud_check = 0;
      }
      
        $wallet_transactions_offers = WalletTransaction::whereDeletedAt(null)
                                    ->where(DB::raw('date(created_at + interval 4 hour)'),'>=',$request->from_date)
                                    ->where(DB::raw('date(created_at + interval 4 hour)'),'<=',$request->to_date)
                                    ->pluck('offer_product_ids')->toArray();

        $implode_wallet_transactions_offers = implode(",", $wallet_transactions_offers);
        $explode_wallet_transactions_offers = explode(",", $implode_wallet_transactions_offers);

        $offers_for_bar_graph = Offer::select("id","offer_name as label")->whereIn("id", $explode_wallet_transactions_offers)->get();

        foreach ($offers_for_bar_graph as $offer) {
            $offer->y = WalletTransaction::whereRaw("FIND_IN_SET(?, offer_product_ids) > 0", [$offer->id])->whereDeletedAt(null)->count();
            unset($offer->id);
        }

        $data = [
            'cashback_earnings_trends' => $cashback_earnings_trends,
            'customer_registrations' => $customer_registrations,
            'customer_registrations_trends' => $customer_registrations_trends,
            'customer_referal' => $customer_referal,
            'total_sales' => round($total_sales,2),
            'cashback_earned' => round($cashback_earned,2),
            'redeemed_amount' => round($redeemed_amount,2),
            'referral_first_transaction_done' => $referral_first_transaction_done,
            'totalsales_amount_trends' => $totalsales_amount_trends,
            'redeemed_amount_trends' => $redeemed_amount_trends,
            'repeat_customers' => $repeat_customers,
            'fraud_check' => round($fraud_check),
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
        $admin = auth()->guard('admin')->user();

        $venue_selection = explode(",", $request->v_name);

        $checkUser = VenueUser::where('id','!=',$request->v_updateid)->whereUsername($request->v_user)->first();

        if(!empty($checkUser)){
            return response()->json(['username_err' => 'Username already exists.'],422);
        }
        
        $delete_assign_user_venue = AssignUserVenue::whereVenueUserId($request->v_updateid)->delete();
        $find_venue_user = VenueUser::whereId($request->v_updateid)->first();
        $find_venue_user->username = $request->v_user ? $request->v_user : $find_venue_user->username;
        $find_venue_user->password = $request->v_password ? Hash::make($request->v_password) : $find_venue_user->password;
        $find_venue_user->status = $request->v_status ? $request->v_status : $find_venue_user->status;
        $find_venue_user->updated_by = $admin->name;
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
            $column = "full_name";
        }elseif($order == 3){
            $column = "mobile_number";
        }elseif($order == 4){
            $column = "email";
        }elseif ($order == 5) {
            $column = "wallet_transactions.invoice_number";
        }elseif ($order == 6) {
            $column = "wallet_transactions.total_bill_amount";
        }elseif ($order == 7) {
            $column = "wallet_transactions.check_amount_pos";
        }elseif ($order == 8) {
            $column = "wallet_transactions.txn_status";
        }elseif ($order == 9) {
            $column = "wallet_transactions.cashback_percentage";
        }elseif ($order == 10) {
            $column = "wallet_cash";
        }elseif ($order == 11) {
            $column = "wallet_transactions.redeemed_amount";
        }elseif ($order == 12) {
            $column = "venue_name";
        }elseif ($order == 14) {
            $column = "wallet_transactions.date_and_time";
        }elseif ($order == 15) {
            $column = "wallet_transactions.updated_at";
        }elseif ($order == 16) {
            $column = "wallet_transactions.updated_by";
        }elseif ($order == 17) {
            $column = "username";
        }

        $data = WalletTransaction::select("wallet_transactions.*",DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS email"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id) AS full_name"),DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS wallet_cash"),DB::raw("(select CONCAT(users.country_code,users.mobile_number) from users where users.id = wallet_transactions.user_id) AS mobile_number"),DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' else 'Mismatch' end) AS txn_status"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS username"),DB::raw("(select offer_redeem from user_assign_offers where id = wallet_transactions.offer_product_ids) AS offer_redeem"))
        ->where('wallet_transactions.is_cross_verify','!=',1)
        ->where('wallet_transactions.is_cross_verify','!=',3)
        ->where('wallet_transactions.deleted_at','=',null)
        // ->where('wallet_transactions.check_amount_pos','!=',0)
        ->with('offerProductIds')->orderBy($column,$asc_desc);

        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere(DB::raw("(select customer_id from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select email from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select CONCAT(users.country_code,users.mobile_number) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
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

            $da['wallet_cash'] = round($da['wallet_cash'],2);

            $da->date_and_time =  $this->convert_to_user_date($da->date_and_time, 'Y-m-d H:i:s');
            $da->updated_at =  $this->convert_to_user_date($da->updated_at, 'Y-m-d H:i:s');

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
        // date_default_timezone_set('UTC');
        $admin_user = Auth::guard('admin')->user();

        if($request->hasFile('img_upload')){
            $file_original_name = $request->file('img_upload')->getClientOriginalName();
            $path = $request->file('img_upload')->getRealPath();
        }else{
            return response()->json(['message'=>'Please upload file for verify transactions.'],422);
        }

        if(!$request->file('img_upload')->isValid()){
            return response()->json(['message'=>'Please upload valid file for verify transactions.'],422);
        }
        // $data = Excel::load($path)->select(array("date","outlet_name","check_no","check_total","status"))->get();
       $data = Excel::load($path)->select(array("date","restaurant_name","check_no.","check_amount","transaction_status"))->get();

        if(count($data) == 0){
            return response()->json(['message'=>'No data found in selected file.']);
        }

        $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();

        $wallet_transactions_count = WalletTransaction::where('is_cross_verify','!=',1)->where('is_cross_verify','!=',3)->whereDeletedAt(null)->count();

        if($wallet_transactions_count == 0){
            return response()->json(['message'=>'No data exists to verify transactions.'],422);
        }

        $admin_refer_notification = AdminNotification::where("uniq_id","=",4)->first();
        if(count($data) > 0){
            $ids_data = [];
            foreach ($data->toArray() as $val){
                // $db_array_keys = ["date","outlet_name","check_no","check_total"];
                $db_array_keys = ["date","restaurant_name","check_no.","check_amount","transaction_status"];
                $array_keys =  array_keys($val);
                $array_diff = array_diff($array_keys,$db_array_keys);

                if(count($array_diff) > 0){
                    return response()->json(['message'=>'Columns name not matched with original format.']);
                }



                $outlet_id = Venu::whereVenueName($val['restaurant_name'])->first();
                if(!empty($outlet_id->id)){
                    $txn_time_convert = new DateTime($val['date'],new DateTimeZone('Asia/Dubai'));
                    $txn_time_convert->setTimeZone(new DateTimeZone('UTC'));
                    $txn_time_convert->format('Y-m-d H:i:s');
                    $wallet_txn = WalletTransaction::where('is_cross_verify','!=',1)->where('is_cross_verify','!=',3)->whereInvoiceNumber($val['check_no.'])->WhereDate('date_and_time','=',$txn_time_convert)->whereDeletedAt(null)->whereVenuId($outlet_id->id)->first();
                    // return $wallet_txn;
                    if(!empty($wallet_txn)){
                        // $users = User::select('customer_id')->whereId($wallet_txn->user_id)->first();
                        $users = User::whereId($wallet_txn->user_id)->first();
                        $user_find = $users;
                        // if($outlet_name->venue_name === $val['outlet_name']){
                            if(!empty($val['check_amount'])){
                                if($wallet_txn->total_bill_amount == $val['check_amount']){
                                    $wallet_txn->is_cross_verify = 1;
                                    $wallet_txn->check_amount_pos = $val['check_amount'];
                                    $wallet_txn->total_bill_amount = $val['check_amount'];
                                    $wallet_txn->updated_by = $admin_user->name;
                                    $wallet_txn->update();
                                    array_push($ids_data, $wallet_txn->id);

                                    $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();

                                    if(!empty($admin_cashback_notification_find)){
                                        // $find_user = User::whereId($val->user_id)->where('is_block','=',0)->first();
                                        $user_find->wallet_cash = $user_find->wallet_cash + $wallet_txn->cashback_earned;
                                        $user_find->update();

                                        $wallet_detail2 = new WalletDetail();
                                        $wallet_detail2->user_id = $user_find->id;
                                        $wallet_detail2->description = "Cash Back Earnings";
                                        $wallet_detail2->cashback_earned = $wallet_txn->cashback_earned;
                                        $wallet_detail2->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
                                        $wallet_detail2->type_of_transaction = "Cashback";
                                        $wallet_detail2->user_wallet_cash = $user_find->wallet_cash;
                                        $wallet_detail2->save();

                                        if($wallet_txn->cashback_earned > 0 || $wallet_txn->redeemed_amount > 0){

                                            //If Cashback or Redeem amout is there

                                            if($wallet_txn->cashback_earned > 0 && $wallet_txn->redeemed_amount > 0) {
                                                $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_txn->cashback_earned." AED. Your wallet usage is ".$wallet_txn->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                                            }else if($wallet_txn->cashback_earned > 0 && $wallet_txn->redeemed_amount == 0) {
                                                $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_txn->cashback_earned." AED. ".$admin_cashback_notification_find->message;
                                            }else if($wallet_txn->cashback_earned == 0 && $wallet_txn->redeemed_amount > 0) {
                                                $admin_cashback_notification_find->message = "Your wallet usage is ".$wallet_txn->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                                            }

                                        }else{
                                            //Only Cashback Admin Message will go

                                            if (!empty($admin_cashback_notification_find->message)) {
                                                $admin_cashback_notification_find->message = $admin_cashback_notification_find->message;
                                            }else{
                                                $admin_cashback_notification_find->push_type = 0; 
                                            }
                                        }

                                        // if($wallet_txn->cashback_earned > 0){
                                        //     if($wallet_txn->redeemed_amount > 0){
                                        //         if(!empty($admin_cashback_notification_find->message)){
                                        //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_txn->cashback_earned." AED. Your wallet usage is ".$wallet_txn->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                                        //         }else{
                                        //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_txn->cashback_earned." AED. Your wallet usage is ".$wallet_txn->redeemed_amount." AED. ";
                                        //         }
                                        //     }else{
                                        //         if(!empty($admin_cashback_notification_find->message)){
                                        //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_txn->cashback_earned." AED. ".$admin_cashback_notification_find->message;
                                        //         }else{
                                        //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_txn->cashback_earned." AED. ";
                                        //         }
                                        //     }
                                        // }else{
                                        //     $admin_cashback_notification_find->message = $admin_cashback_notification_find->message;
                                        //     if(empty($admin_cashback_notification_find->message)){
                                        //         $admin_cashback_notification_find->push_type = 0; 
                                        //     }
                                        // }


                                        if($admin_cashback_notification_find->push_type == 1){

                                            $noti_record_find = NotiRecord::whereUserId($user_find->id)->first();

                                            if(empty($noti_record_find)){
                                                $save_noti_record = new NotiRecord();
                                                $save_noti_record->user_id = $user_find->id;
                                                $save_noti_record->wallet = 1;
                                                $save_noti_record->save();

                                            }else{
                                                $noti_record_find->wallet = $noti_record_find->wallet + 1;
                                                $noti_record_find->update();
                                            }
                                            if($user_find->device_type == 'Android'){
                                                if($user_find->device_token && strlen($user_find->device_token) > 20){

                                                    $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                                    try{
                                                       $android_notify =  $this->send_android_notification_new($user_find->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2,null,null,$total_noti_record);
                                                    } catch (\Exception $e) {
                                                        continue;
                                                    }
                                                    $criteria_data = [
                                                        'user_id'   => $user_find->id,
                                                        'message'   => $admin_cashback_notification_find->message,
                                                        'noti_type' => 2,
                                                        'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                                        'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                                    ];
                                                    // AdminCriteriaNotification::create($criteria_data);
                                               
                                               }
                                            }

                                            if($user_find->device_type == 'Ios' && strlen($user_find->device_token) > 20){
                                                if($user_find->device_token){

                                                    $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                                    try{
                                                    $ios_notify =  $this->iphoneNotification($user_find->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2,null,null,$total_noti_record);
                                                    } catch (\Exception $e) {
                                                        continue;
                                                    }
                                                    $criteria_data = [
                                                        'user_id'   => $user_find->id,
                                                        'message'   => $admin_cashback_notification_find->message,
                                                        'noti_type' => 2,
                                                        'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                                        'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
                                                    ];
                                                    // AdminCriteriaNotification::create($criteria_data);
                                                
                                               }
                                            }
                                                    AdminCriteriaNotification::create($criteria_data);

                                        }

                                        if($admin_cashback_notification_find->email_type == 1){
                                            $show_message_cashback  = $admin_cashback_notification_find->message;

                                            if(!empty($show_message_cashback)){
                                                $cashbackNotificationJob = (new CashbackEmailJob($admin_cashback_notification_find, $user_find, $show_message_cashback))->delay(Carbon::now()->addSeconds(3));
                                                dispatch($cashbackNotificationJob);
                                            }
                                        }

                                        if($admin_cashback_notification_find->sms_type == 1){
                                            \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                                            $sms = new \SMSGlobal\Resource\Sms();
                                            $message = $admin_cashback_notification_find->message;
                                            if(!empty($message)){
                                                try {
                                                    $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message,'CM-Society');
                                                } catch (\Exception $e) {
                                                    // return $e->getMessage();
                                                }
                                            }
                                        }
                                    }

                                    // $this->transferToWalletForUploadVerify($wallet_txn);

                                    $refer_user_find = null;

                                    $tier_find = TierCondition::whereTierName($user_find->customer_tier)->whereDeletedAt(null)->first();
                                    if(empty($tier_find)){
                                        $tier_find = TierCondition::whereDeletedAt(null)->first();
                                    }
                                    $transaction_amount_check_last_days = 30;
                                    $customer_tier_validity_check = 30;
                                    if(!empty($tier_setting)){
                                        $transaction_amount_check_last_days = $tier_setting->transaction_amount_check_last_days;
                                        $customer_tier_validity_check = $tier_setting->customer_tier_validity_check;
                                    }

                                    $last_30_days_transaction_amount = Carbon::now()->subDays($transaction_amount_check_last_days);

                                    $last_validity_check_days = Carbon::now()->subDays($customer_tier_validity_check);

                                    $total_amount_transaction = WalletTransaction::where(function($query) use ($transaction_amount_check_last_days,$customer_tier_validity_check, $user_find, $last_30_days_transaction_amount, $last_validity_check_days){
                                                                $query->whereUserId($user_find->id);
                                                                $query->whereDate('created_at','<=',Carbon::now()->toDateString());
                                                                $query->whereDate('created_at','>=',$last_30_days_transaction_amount->toDateString());
                                                                $query->whereIsCrossVerify(1);
                                                            })->sum('total_bill_amount');

                                     $total_amount_transaction = $total_amount_transaction;

                                     $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('from_amount', '<=', 
                                    $total_amount_transaction)->where('to_amount', '>=', $total_amount_transaction)->first();
                                    if(empty($amount_between_tier_find)){

                                        //preveious tier found according to total amount transaction
                                        $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','<=', $total_amount_transaction)->orderBy('to_amount','desc')->first();

                                        if(!empty($amount_between_tier_find)){
                                            
                                            $last_tier_update_date = Carbon::parse($user_find->tier_update_date);
                                            $diffrence_in_days_for_tier = $last_tier_update_date->diffInDays(Carbon::now());

                                            if($tier_find->to_amount >= $amount_between_tier_find->to_amount){

                                                if($diffrence_in_days_for_tier >= $customer_tier_validity_check){
                                                    $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                                    $user_find->tier_update_date = Carbon::now()->toDateString();
                                                    $user_find->update();
                                                }
                                            }else{
                                                $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                                $user_find->tier_update_date = Carbon::now()->toDateString();
                                                $user_find->update();
                                            }
                                        }

                                        if(empty($amount_between_tier_find)){

                                            //next tier found according to transaction amount total
                                            $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','>=', $total_amount_transaction)->orderBy('to_amount','desc')->first();

                                            if(empty($amount_between_tier_find)){

                                                // return $this->responseWithErrorCode("No tier add from admin.",400);
                                            }

                                            $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                            $user_find->tier_update_date = Carbon::now()->toDateString();
                                            $user_find->update();
                                        }


                                    }else{
                                        $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                        $user_find->tier_update_date = Carbon::now()->toDateString();
                                        $user_find->update();
                                    }
                                    if(!empty($user_find->reference_code) && $user_find->refer_amount_used == 0){
                                        $refer_user_find = User::whereSelfReferenceCode($user_find->reference_code)->whereDeletedAt(null)->where('is_block','=',0)->first();
                                    }

                                    if(!empty($admin_refer_notification) && !empty($refer_user_find)){

                                        if($admin_refer_notification->message != null){
                                            $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ".$admin_refer_notification->message;
                                        }else{
                                            $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ";
                                        }

                                        // $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ".$admin_refer_notification->message;

                                        $user_find->refer_amount_used = 1;
                                        $user_find->update();

                                        $refer_user_find->wallet_cash = $refer_user_find->wallet_cash + $user_find->refer_amount;
                                        $refer_user_find->update();

                                        if($user_find->refer_amount > 0){
                                            $wallet_detail3 = new WalletDetail();
                                            $wallet_detail3->user_id = $refer_user_find->id;
                                            $wallet_detail3->description = "Referral Earnings";
                                            $wallet_detail3->cashback_earned = $user_find->refer_amount;
                                            $wallet_detail3->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
                                            $wallet_detail3->type_of_transaction = "Refer";
                                            $wallet_detail3->user_wallet_cash = $refer_user_find->wallet_cash;
                                            $wallet_detail3->save();
                                        }


                                        if($admin_refer_notification->push_type == 1){
                                            $noti_record_find = NotiRecord::whereUserId($refer_user_find->id)->first();

                                            if(empty($noti_record_find)){
                                                $save_noti_record = new NotiRecord();
                                                $save_noti_record->user_id = $refer_user_find->id;
                                                $save_noti_record->wallet = 1;
                                                $save_noti_record->save();

                                            }else{
                                                $noti_record_find->wallet = $noti_record_find->wallet + 1;
                                                $noti_record_find->update();
                                            }

                                            if($refer_user_find->device_type == 'Android'){
                                                if($refer_user_find->device_token && strlen($refer_user_find->device_token) > 20){

                                                    $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                                    try{
                                                   $android_notify =  $this->send_android_notification_new($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4, null, null, $total_noti_record);
                                                   } catch (\Exception $e) {
                                                        continue;
                                                    }

                                                   $criteria_data = [
                                                        'user_id'   => $refer_user_find->id,
                                                        'message'   => $admin_refer_notification->message,
                                                        'noti_type' => 4
                                                    ];
                                                    // AdminCriteriaNotification::create($criteria_data);
                                               
                                               }
                                            }

                                            if($refer_user_find->device_type == 'Ios' && strlen($refer_user_find->device_token) > 20){
                                                if($refer_user_find->device_token){

                                                    $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                                    try{
                                                    $ios_notify =  $this->iphoneNotification($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4, null, null, $total_noti_record);
                                                    } catch (\Exception $e) {
                                                        continue;
                                                    }

                                                    $criteria_data = [
                                                        'user_id'   => $refer_user_find->id,
                                                        'message'   => $admin_refer_notification->message,
                                                        'noti_type' => 4
                                                    ];
                                                    // AdminCriteriaNotification::create($criteria_data);
                                               }
                                            }
                                                    AdminCriteriaNotification::create($criteria_data);
                                        }

                                        if($admin_refer_notification->email_type == 1){
                                            $message = $admin_refer_notification->message;
                                            $notificationJobR = (new ReferMailSend($admin_refer_notification, $refer_user_find, $message))->delay(Carbon::now()->addSeconds(3));
                                            dispatch($notificationJobR);
                                        }

                                        if($admin_refer_notification->sms_type == 1){
                                            \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                                            $sms = new \SMSGlobal\Resource\Sms();
                                            $message = $admin_refer_notification->message;
                                            try {
                                                $response = $sms->sendToOne($refer_user_find->country_code.$refer_user_find->mobile_number, $message,'CM-Society');
                                            } catch (\Exception $e) {
                                                continue;
                                            }
                                        }
                                    }


                                }else{
                                    $wallet_txn->is_cross_verify = 2;
                                    $wallet_txn->check_amount_pos = $val['check_amount'];
                                    $wallet_txn->updated_by = $admin_user->name;
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
        // $data_ecxel = DB::table("wallet_transactions")
        //         ->select(DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Outlet Name'"),"wallet_transactions.invoice_number AS Check No",DB::raw('(CASE WHEN wallet_transactions.total_bill_amount = 0 THEN "0" ELSE wallet_transactions.total_bill_amount END) AS "Check Total" '),DB::raw('(CASE WHEN wallet_transactions.is_cross_verify = 1 THEN "Verified" ELSE "Mismatch" END) AS Status'),"wallet_transactions.id")
        //         ->groupBy("wallet_transactions.id")
        //         ->join("venus","venus.id","=","wallet_transactions.venu_id")
        //         ->orderBy('id','desc')
        //         ->where('wallet_transactions.deleted_at','=',null)
        //         ->whereIn('wallet_transactions.id',$ids_data)
        //         ->where('is_cross_verify','!=',0)
        //         ->get()->toArray();
                    
        //     foreach ($data_ecxel as $key => $value) {
        //         unset($value->id);
        //     }
        // DB::raw('(CASE WHEN wallet_transactions.is_cross_verify = 1 THEN "Verified" ELSE "Mismatch" END) AS Status')

        $data_ecxel = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id) AS 'Customer Name'"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Customer No.'"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS 'Email ID'"),'wallet_transactions.invoice_number as Check No.','wallet_transactions.total_bill_amount as Check Amount','check_amount_pos as Check Amount POS',DB::raw("(CASE WHEN wallet_transactions.is_cross_verify = 1 THEN 'Verified' ELSE 'Mismatch' END) AS 'Transaction Status'"),'wallet_transactions.cashback_percentage as Cash Back %',DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Wallet Cash'"),'wallet_transactions.redeemed_amount as Redemption from Loyalty',DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),'wallet_transactions.offer_product_ids',DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d %h:%i %p') AS Date"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant Logged In User'"))
        ->where('wallet_transactions.is_cross_verify','!=',0)
        ->where('wallet_transactions.is_cross_verify','!=',3)
        ->whereIn('wallet_transactions.id',$ids_data)
        ->where('wallet_transactions.deleted_at','=',null)
        ->orderBy('id','desc')->get();


        foreach($data_ecxel as $da){
            if($da->offer_product_ids){
                $pluck_offer_ids = explode(",", $da->offer_product_ids);
                $pluck_offer_name = Offer::whereIn('id', $pluck_offer_ids)->pluck('offer_name')->toArray();
                $da->OfferProducts = implode(", ", $pluck_offer_name);
            }else{
                $da->OfferProducts = 'N/A';
            }

            $da->Date =  $this->convert_to_user_date($da->Date,'Y-m-d H:i:s');

            $da['Wallet Cash'] = round($da['Wallet Cash'],2);
            unset($da->offer_product_ids);
        }

            $data_ecxel = json_decode(json_encode($data_ecxel), true);
            return $download =  Excel::create('POS Sales Export Verified File', function($excel) use ($data_ecxel){
                $excel->sheet('POS Sales Export Verified File', function($sheet) use ($data_ecxel){
                    $sheet->fromArray($data_ecxel);

                });
            })->download('xlsx');
    }

    public function ExportCrossVerificationSales(Request $request){
// date_default_timezone_set('Asia/Dubai');
        // $data = DB::table("wallet_transactions")
        //         ->select(DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Outlet Name'"),"wallet_transactions.invoice_number AS Check No",DB::raw('(CASE WHEN wallet_transactions.total_bill_amount = 0 THEN "0" ELSE wallet_transactions.total_bill_amount END) AS "Check Total" '),"wallet_transactions.id")
        //         ->groupBy("wallet_transactions.id")
        //         ->join("venus","venus.id","=","wallet_transactions.venu_id")
        //         ->where('wallet_transactions.is_cross_verify','!=',1)
        //         ->orderBy('id','desc')
        //         ->where('wallet_transactions.deleted_at','=',null)
        //         ->get()->toArray();

        // $data = WalletTransaction::select("wallet_transactions.*",DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS email"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id) AS full_name"),DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS wallet_cash"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS mobile_number"),DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' else 'Mismatch' end) AS txn_status"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS username"),DB::raw("(select offer_redeem from user_assign_offers where id = wallet_transactions.offer_product_ids) AS offer_redeem"))
        // ->where('wallet_transactions.is_cross_verify','!=',1)
        // ->where('wallet_transactions.deleted_at','=',null)
        // ->with('offerProductIds')->orderBy('id','desc');

         $data = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id) AS 'Customer Name'"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Customer No.'"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS 'Email ID'"),'wallet_transactions.invoice_number as Check No.','wallet_transactions.total_bill_amount as Check Amount','check_amount_pos as Check Amount POS',DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' else 'Mismatch' end) AS 'Transaction Status'"),'wallet_transactions.cashback_percentage as Cash Back %',DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Wallet Cash'"),'wallet_transactions.redeemed_amount as Redemption from Loyalty',DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),'wallet_transactions.offer_product_ids',DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d %h:%i %p') AS Date"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant Logged In User'"))
        ->where('wallet_transactions.is_cross_verify','!=',1)
        ->where('wallet_transactions.is_cross_verify','!=',3)
        ->where('wallet_transactions.deleted_at','=',null)
        ->orderBy('id','desc')->get();


        foreach($data as $da){
            if($da->offer_product_ids){
                $pluck_offer_ids = explode(",", $da->offer_product_ids);
                $pluck_offer_name = Offer::whereIn('id', $pluck_offer_ids)->pluck('offer_name')->toArray();
                $da->OfferProducts = implode(", ", $pluck_offer_name);
            }else{
                $da->OfferProducts = 'N/A';
            }

            $da->Date =  $this->convert_to_user_date($da->Date,'Y-m-d H:i:s');

            $da['Wallet Cash'] = round($da['Wallet Cash'],2);

            unset($da->offer_product_ids);
        }



                
        // foreach ($data as $key => $value) {
        //     unset($value->id);
        // }

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
        $admin_user = Auth::guard('admin')->user();
        $wallet_txn_ids = WalletTransaction::whereIsCrossVerify(0)->whereDeletedAt(null)->get()->toArray();
        $wallet_arr_ids_pluck = Arr::pluck($wallet_txn_ids,'id');
        if(empty($wallet_arr_ids_pluck)){
            return response()->json(['txn_verify_err' => "No data found to verify all pending sales transactions."],422);
        }else{
            $wallet_txn = WalletTransaction::whereIn('id',$wallet_arr_ids_pluck)->get();


            foreach ($wallet_txn as $key => $value) {
                $admin_refer_notification = AdminNotification::where("uniq_id","=",4)->first();

                $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();
                
                $user_wallet_txn = WalletTransaction::whereId($value->id)->first();
                $user_wallet_txn->is_cross_verify = 1;
                $user_wallet_txn->check_amount_pos = $user_wallet_txn->total_bill_amount;
                $user_wallet_txn->updated_by = $admin_user->name;
                $user_wallet_txn->update();


                $user_find = User::find($user_wallet_txn->user_id);
                $refer_user_find = null;

                $tier_find = TierCondition::whereTierName($user_find->customer_tier)->whereDeletedAt(null)->first();
                if(empty($tier_find)){
                    $tier_find = TierCondition::whereDeletedAt(null)->first();
                }
                $transaction_amount_check_last_days = 30;
                $customer_tier_validity_check = 30;
                if(!empty($tier_setting)){
                    $transaction_amount_check_last_days = $tier_setting->transaction_amount_check_last_days;
                    $customer_tier_validity_check = $tier_setting->customer_tier_validity_check;
                }

                $last_30_days_transaction_amount = Carbon::now()->subDays($transaction_amount_check_last_days);

                $last_validity_check_days = Carbon::now()->subDays($customer_tier_validity_check);

                $total_amount_transaction = WalletTransaction::where(function($query) use ($transaction_amount_check_last_days,$customer_tier_validity_check, $user_find, $last_30_days_transaction_amount, $last_validity_check_days){
                                            $query->whereUserId($user_find->id);
                                            $query->whereDate('created_at','<=',Carbon::now()->toDateString());
                                            $query->whereDate('created_at','>=',$last_30_days_transaction_amount->toDateString());
                                            $query->whereIsCrossVerify(1);
                                        })->sum('total_bill_amount');

                 $total_amount_transaction = $total_amount_transaction;

                 $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('from_amount', '<=', 
                $total_amount_transaction)->where('to_amount', '>=', $total_amount_transaction)->first();
                if(empty($amount_between_tier_find)){

                    //preveious tier found according to total amount transaction
                    $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','<=', $total_amount_transaction)->orderBy('to_amount','desc')->first();

                    if(!empty($amount_between_tier_find)){
                        
                        $last_tier_update_date = Carbon::parse($user_find->tier_update_date);
                        $diffrence_in_days_for_tier = $last_tier_update_date->diffInDays(Carbon::now());

                        if($tier_find->to_amount >= $amount_between_tier_find->to_amount){

                            if($diffrence_in_days_for_tier >= $customer_tier_validity_check){
                                $user_find->customer_tier = $amount_between_tier_find->tier_name;
                                $user_find->tier_update_date = Carbon::now()->toDateString();
                                $user_find->update();
                            }
                        }else{
                            $user_find->customer_tier = $amount_between_tier_find->tier_name;
                            $user_find->tier_update_date = Carbon::now()->toDateString();
                            $user_find->update();
                        }
                    }

                    if(empty($amount_between_tier_find)){

                        //next tier found according to transaction amount total
                        $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','>=', $total_amount_transaction)->orderBy('to_amount','desc')->first();

                        if(empty($amount_between_tier_find)){

                            // return $this->responseWithErrorCode("No tier add from admin.",400);
                        }

                        $user_find->customer_tier = $amount_between_tier_find->tier_name;
                        $user_find->tier_update_date = Carbon::now()->toDateString();
                        $user_find->update();
                    }


                }else{
                    $user_find->customer_tier = $amount_between_tier_find->tier_name;
                    $user_find->tier_update_date = Carbon::now()->toDateString();
                    $user_find->update();
                }
                if(!empty($user_find->reference_code) && $user_find->refer_amount_used == 0){

                    $refer_user_find = User::whereSelfReferenceCode($user_find->reference_code)->whereDeletedAt(null)->where('is_block','=',0)->first();


                }
                if(!empty($admin_refer_notification) && !empty($refer_user_find)){

                    if($admin_refer_notification->message != null){
                        $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ".$admin_refer_notification->message;
                    }else{
                        $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ";
                        
                    }

                    $user_find->refer_amount_used = 1;
                    $user_find->update();

                    $refer_user_find->wallet_cash = $refer_user_find->wallet_cash + $user_find->refer_amount;
                    $refer_user_find->update();

                    if($user_find->refer_amount > 0){
                        $wallet_detail3 = new WalletDetail();
                        $wallet_detail3->user_id = $refer_user_find->id;
                        $wallet_detail3->description = "Referral Earnings";
                        $wallet_detail3->cashback_earned = $user_find->refer_amount;
                        $wallet_detail3->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
                        $wallet_detail3->type_of_transaction = "Refer";
                        $wallet_detail3->user_wallet_cash = $refer_user_find->wallet_cash;
                        $wallet_detail3->save();
                    }


                    if($admin_refer_notification->push_type == 1){

                        $noti_record_find = NotiRecord::whereUserId($refer_user_find->id)->first();

                        if(empty($noti_record_find)){
                            $save_noti_record = new NotiRecord();
                            $save_noti_record->user_id = $refer_user_find->id;
                            $save_noti_record->wallet = 1;
                            $save_noti_record->save();

                        }else{
                            $noti_record_find->wallet = $noti_record_find->wallet + 1;
                            $noti_record_find->update();
                        }
                        if($refer_user_find->device_type == 'Android'){
                            if($refer_user_find->device_token && strlen($refer_user_find->device_token) > 20){

                                $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                try{
                               $android_notify =  $this->send_android_notification_new($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4,null,null,$total_noti_record);
                               } catch (\Exception $e) {
                                continue;
                            }

                               $criteria_data = [
                                    'user_id'   => $refer_user_find->id,
                                    'message'   => $admin_refer_notification->message,
                                    'noti_type' => 4
                                ];
                                // AdminCriteriaNotification::create($criteria_data);
                           
                           }
                        }

                        if($refer_user_find->device_type == 'Ios' && strlen($refer_user_find->device_token) > 20){
                            if($refer_user_find->device_token){

                                $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                try{
                                $ios_notify =  $this->iphoneNotification($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4, null, null,$total_noti_record );
                                } catch (\Exception $e) {
                                continue;
                            }

                                $criteria_data = [
                                    'user_id'   => $refer_user_find->id,
                                    'message'   => $admin_refer_notification->message,
                                    'noti_type' => 4
                                ];
                                // AdminCriteriaNotification::create($criteria_data);
                            
                           }
                        }
                                AdminCriteriaNotification::create($criteria_data);

                    }

                    if($admin_refer_notification->sms_type == 1){
                        \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                        $sms = new \SMSGlobal\Resource\Sms();
                        $message = $admin_refer_notification->message;
                        try {
                            $response = $sms->sendToOne($refer_user_find->country_code.$refer_user_find->mobile_number, $message,'CM-Society');
                        } catch (\Exception $e) {
                            
                        }

                    }

                    if($admin_refer_notification->email_type == 1){
                        $message = $admin_refer_notification->message;
                        $notificationJobR = (new ReferMailSend($admin_refer_notification, $refer_user_find, $message))->delay(Carbon::now()->addSeconds(3));
                        dispatch($notificationJobR);

                    }

                    
                }

                if(!empty($admin_cashback_notification_find)){
                    $find_user = User::whereId($value->user_id)->where('is_block','=',0)->first();
                    $find_user->wallet_cash = $find_user->wallet_cash + $value->cashback_earned;
                    $find_user->update();

                    $wallet_detail2 = new WalletDetail();
                    $wallet_detail2->user_id = $find_user->id;
                    $wallet_detail2->description = "Cash Back Earnings";
                    $wallet_detail2->cashback_earned = $value->cashback_earned;
                    $wallet_detail2->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
                    $wallet_detail2->type_of_transaction = "Cashback";
                    $wallet_detail2->user_wallet_cash = $find_user->wallet_cash;
                    $wallet_detail2->save();

                    if($value->cashback_earned > 0 || $value->redeemed_amount > 0){

                        //If Cashback or Redeem amout is there

                        if($value->cashback_earned > 0 && $value->redeemed_amount > 0) {
                            $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$value->cashback_earned." AED. Your wallet usage is ".$value->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                        }else if($value->cashback_earned > 0 && $value->redeemed_amount == 0) {
                            $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$value->cashback_earned." AED. ".$admin_cashback_notification_find->message;
                        }else if($value->cashback_earned == 0 && $value->redeemed_amount > 0) {
                            $admin_cashback_notification_find->message = "Your wallet usage is ".$value->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                        }

                    }else{
                        //Only Cashback Admin Message will go

                        if (!empty($admin_cashback_notification_find->message)) {
                            $admin_cashback_notification_find->message = $admin_cashback_notification_find->message;
                        }else{
                            $admin_cashback_notification_find->push_type = 0; 
                        }
                    }



                    // if($value->cashback_earned > 0){
                    //     if($value->redeemed_amount > 0){
                    //         if(!empty($admin_cashback_notification_find->message)){
                    //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$value->cashback_earned." AED. Your wallet usage is ".$vaue->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                    //         }else{
                    //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$value->cashback_earned." AED. Your wallet usage is ".$vaue->redeemed_amount." AED. ";
                                
                    //         }
                    //     }else{
                    //          if(!empty($admin_cashback_notification_find->message)){
                    //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$value->cashback_earned." AED. ".$admin_cashback_notification_find->message;

                    //          }else{
                    //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$value->cashback_earned." AED. ";
                                
                    //          }
                    //     }
                    // }else{
                    //     $admin_cashback_notification_find->message = $admin_cashback_notification_find->message;
                    //     if(empty($admin_cashback_notification_find->message)){
                    //         $admin_cashback_notification_find->push_type = 0;
                    //     }
                    // }

                    
                    if($admin_cashback_notification_find->push_type == 1){

                        $noti_record_find = NotiRecord::whereUserId($find_user->id)->first();

                        if(empty($noti_record_find)){
                            $save_noti_record = new NotiRecord();
                            $save_noti_record->user_id = $find_user->id;
                            $save_noti_record->wallet = 1;
                            $save_noti_record->save();

                        }else{
                            $noti_record_find->wallet = $noti_record_find->wallet + 1;
                            $noti_record_find->update();
                        }
                        if($find_user->device_type == 'Android'){
                            if($find_user->device_token && strlen($find_user->device_token) > 20){


                                $total_noti_record = NotiRecord::whereUserId($find_user->id)->sum(DB::raw('wallet + offer + event + normal'));
                                try{
                                   $android_notify =  $this->send_android_notification_new($find_user->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2,null,null,$total_noti_record);
                                } catch (\Exception $e) {
                                    continue;
                                }
                                $criteria_data = [
                                    'user_id'   => $find_user->id,
                                    'message'   => $admin_cashback_notification_find->message,
                                    'noti_type' => 2,
                                    'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                    'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                ];
                                // AdminCriteriaNotification::create($criteria_data);
                           
                           }
                        }

                        if($find_user->device_type == 'Ios' && strlen($find_user->device_token) > 20){
                            if($find_user->device_token){
                                $total_noti_record = NotiRecord::whereUserId($find_user->id)->sum(DB::raw('wallet + offer + event + normal'));
                                try{
                                $ios_notify =  $this->iphoneNotification($find_user->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2,null,null,$total_noti_record);
                                } catch (\Exception $e) {
                                    continue;
                                }
                                $criteria_data = [
                                    'user_id'   => $find_user->id,
                                    'message'   => $admin_cashback_notification_find->message,
                                    'noti_type' => 2,
                                    'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                    'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
                                ];
                            
                           }
                        }
                                AdminCriteriaNotification::create($criteria_data);

                    }

                    if($admin_cashback_notification_find->email_type == 1){
                        $show_message_cashback  = $admin_cashback_notification_find->message;
                        if(!empty($show_message_cashback)){
                            $cashbackNotificationJob = (new CashbackEmailJob($admin_cashback_notification_find, $find_user, $show_message_cashback))->delay(Carbon::now()->addSeconds(3));
                            dispatch($cashbackNotificationJob);
                        }
                    }

                    if($admin_cashback_notification_find->sms_type == 1){
                        \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                        $sms = new \SMSGlobal\Resource\Sms();
                        $message = $admin_cashback_notification_find->message;
                        if(!empty($message)){
                            try {
                                $response = $sms->sendToOne($find_user->country_code.$find_user->mobile_number, $message,'CM-Society');
                            } catch (\Exception $e) {
                                // return $e->getMessage();
                            }
                        }
                    }
                }
            }

            // $wallet_transaction_verified = WalletTransaction::whereIn('id',$wallet_arr_ids_pluck)->whereIsCrossVerify(1)->get();

            // if(!empty($wallet_transaction_verified)){
            //     $this->transferToWallet($wallet_transaction_verified);

                return response()->json(['msg' => 'Force verified the all pending sales transaction successfully.']);
            // }
        }  
    }
    public function DeleteSelectedTransactions(Request $request){
        $admin_user = Auth::guard('admin')->user();
        $request_ids = explode(',',$request->delete_selected_checkboxes);

        $check_deleted_or_verified_transactions = WalletTransaction::where(function($query) use ($request_ids){
                                                        $query->whereIn("id", $request_ids);
                                                        $query->where("is_cross_verify", "=", 1);
                                                    })->orWhere(function($query) use ($request_ids){
                                                        $query->whereIn("id", $request_ids);
                                                        $query->where("deleted_at", "!=", null);
                                                    })->first();

        if(!empty($check_deleted_or_verified_transactions)){
            return response()->json(['delete_txn_err' => 'Selected transactions has been deleted or already verified.'],422);
        }

        $wallet_transaction_delete = WalletTransaction::whereIn('id',$request_ids)->update(['deleted_at' => Carbon::now(), 'updated_by' => $admin_user->name]);
       //$wallet_transaction_delete = WalletTransaction::whereIn('id',$request_ids)->whereDeletedAt(null)->update(['deleted_at' => Carbon::now(), 'updated_by' => $admin_user->name]);

        if(!empty($wallet_transaction_delete)){
            return response()->json(['msg' => 'Transactions has been deleted successfully.']);
        }
    }

   public function VerifySelectTransactions(Request $request){
        $admin_user = Auth::guard('admin')->user();

        $request_ids = explode(',',$request->verify_selected_checkboxes);

        $check_deleted_or_verified_transactions = WalletTransaction::where(function($query) use ($request_ids){
                                                        $query->whereIn("id", $request_ids);
                                                        $query->where("is_cross_verify", "=", 1);
                                                    })->orWhere(function($query) use ($request_ids){
                                                        $query->whereIn("id", $request_ids);
                                                        $query->where("deleted_at", "!=", null);
                                                    })->first();

        if(!empty($check_deleted_or_verified_transactions)){
            return response()->json(['verify_err' => 'Selected transactions has been deleted or already verified.'],422);
        }

        $wallet_transaction_verify = WalletTransaction::whereIn('id',$request_ids)->get();

        foreach ($wallet_transaction_verify as $key => $value) {
        $admin_refer_notification = AdminNotification::where("uniq_id","=",4)->first();
        $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();

            $user_wallet_txn = WalletTransaction::whereId($value->id)->first();
            if($user_wallet_txn->is_cross_verify == 2){
                $user_wallet_txn->is_cross_verify = 1;
                $user_wallet_txn->total_bill_amount = $user_wallet_txn->check_amount_pos;
                $user_wallet_txn->updated_by = $admin_user->name;
                $user_wallet_txn->update();
            }else{
                $user_wallet_txn = WalletTransaction::whereId($value->id)->first();
                $user_wallet_txn->is_cross_verify = 1;
                $user_wallet_txn->check_amount_pos = $user_wallet_txn->total_bill_amount;
                $user_wallet_txn->updated_by = $admin_user->name;
                $user_wallet_txn->update();
            }


            $user_find = User::find($user_wallet_txn->user_id);
            $refer_user_find = null;
            $tier_find = TierCondition::whereTierName($user_find->customer_tier)->whereDeletedAt(null)->first();
                if(empty($tier_find)){
                    $tier_find = TierCondition::whereDeletedAt(null)->first();
                }
            $transaction_amount_check_last_days = 30;
            $customer_tier_validity_check = 30;
            if(!empty($tier_setting)){
                $transaction_amount_check_last_days = $tier_setting->transaction_amount_check_last_days;
                $customer_tier_validity_check = $tier_setting->customer_tier_validity_check;
            }

            $last_30_days_transaction_amount = Carbon::now()->subDays($transaction_amount_check_last_days);

            $last_validity_check_days = Carbon::now()->subDays($customer_tier_validity_check);

            $total_amount_transaction = WalletTransaction::where(function($query) use ($transaction_amount_check_last_days,$customer_tier_validity_check, $user_find, $last_30_days_transaction_amount, $last_validity_check_days){
                                        $query->whereUserId($user_find->id);
                                        $query->whereDate('created_at','<=',Carbon::now()->toDateString());
                                        $query->whereDate('created_at','>=',$last_30_days_transaction_amount->toDateString());
                                        $query->whereIsCrossVerify(1);
                                    })->sum('total_bill_amount');

             $total_amount_transaction = $total_amount_transaction;

             $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('from_amount', '<=', 
            $total_amount_transaction)->where('to_amount', '>=', $total_amount_transaction)->first();
            if(empty($amount_between_tier_find)){

                //preveious tier found according to total amount transaction
                $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','<=', $total_amount_transaction)->orderBy('to_amount','desc')->first();

                if(!empty($amount_between_tier_find)){
                    
                    $last_tier_update_date = Carbon::parse($user_find->tier_update_date);
                    $diffrence_in_days_for_tier = $last_tier_update_date->diffInDays(Carbon::now());

                    if($tier_find->to_amount >= $amount_between_tier_find->to_amount){

                        if($diffrence_in_days_for_tier >= $customer_tier_validity_check){
                            $user_find->customer_tier = $amount_between_tier_find->tier_name;
                            $user_find->tier_update_date = Carbon::now()->toDateString();
                            $user_find->update();
                        }
                    }else{
                        $user_find->customer_tier = $amount_between_tier_find->tier_name;
                        $user_find->tier_update_date = Carbon::now()->toDateString();
                        $user_find->update();
                    }
                }

                if(empty($amount_between_tier_find)){

                    //next tier found according to transaction amount total
                    $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('to_amount','>=', $total_amount_transaction)->orderBy('to_amount','desc')->first();

                    if(empty($amount_between_tier_find)){

                        // return $this->responseWithErrorCode("No tier add from admin.",400);
                    }

                    $user_find->customer_tier = $amount_between_tier_find->tier_name;
                    $user_find->tier_update_date = Carbon::now()->toDateString();
                    $user_find->update();
                }


            }else{
                $user_find->customer_tier = $amount_between_tier_find->tier_name;
                $user_find->tier_update_date = Carbon::now()->toDateString();
                $user_find->update();
            }


            if(!empty($user_find->reference_code) && $user_find->refer_amount_used == 0){

                $refer_user_find = User::whereSelfReferenceCode($user_find->reference_code)->whereDeletedAt(null)->where('is_block','=',0)->first();


            }
            if(!empty($admin_refer_notification) && !empty($refer_user_find)){

                if($admin_refer_notification->message != null){
                    $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ".$admin_refer_notification->message;
                }else{
                    $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ";
                    
                }


                $user_find->refer_amount_used = 1;
                $user_find->update();

                $refer_user_find->wallet_cash = $refer_user_find->wallet_cash + $user_find->refer_amount;
                $refer_user_find->update();

                if($user_find->refer_amount > 0){
                    $wallet_detail3 = new WalletDetail();
                    $wallet_detail3->user_id = $refer_user_find->id;
                    $wallet_detail3->description = "Referral Earnings";
                    $wallet_detail3->cashback_earned = $user_find->refer_amount;
                    $wallet_detail3->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
                    $wallet_detail3->type_of_transaction = "Refer";
                    $wallet_detail3->user_wallet_cash = $refer_user_find->wallet_cash;
                    $wallet_detail3->save();
                }


                if($admin_refer_notification->push_type == 1){
                    $noti_record_find = NotiRecord::whereUserId($refer_user_find->id)->first();

                    if(empty($noti_record_find)){
                        $save_noti_record = new NotiRecord();
                        $save_noti_record->user_id = $refer_user_find->id;
                        $save_noti_record->wallet = 1;
                        $save_noti_record->save();

                    }else{
                        $noti_record_find->wallet = $noti_record_find->wallet + 1;
                        $noti_record_find->update();
                    }

                    if($refer_user_find->device_type == 'Android'){
                        if($refer_user_find->device_token && strlen($refer_user_find->device_token) > 20){

                            $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                            try{
                                $android_notify =  $this->send_android_notification_new($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4,null,null,$total_noti_record);
                            } catch (\Exception $e) {
                                continue;
                            }

                           $criteria_data = [
                                'user_id'   => $refer_user_find->id,
                                'message'   => $admin_refer_notification->message,
                                'noti_type' => 4
                            ];
                            // AdminCriteriaNotification::create($criteria_data);
                       
                       }
                    }

                    if($refer_user_find->device_type == 'Ios' && strlen($refer_user_find->device_token) > 20){
                        if($refer_user_find->device_token){
                            $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                            try{
                                $ios_notify =  $this->iphoneNotification($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4,null,null,$total_noti_record);
                            } catch (\Exception $e) {
                                continue;
                            }

                            $criteria_data = [
                                'user_id'   => $refer_user_find->id,
                                'message'   => $admin_refer_notification->message,
                                'noti_type' => 4
                            ];
                        
                       }
                    }
                            AdminCriteriaNotification::create($criteria_data);

                }

                if($admin_refer_notification->sms_type == 1){
                    \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                    $sms = new \SMSGlobal\Resource\Sms();
                    $message = $admin_refer_notification->message;
                    try {
                        $response = $sms->sendToOne($refer_user_find->country_code.$refer_user_find->mobile_number, $message,'CM-Society');
                    } catch (\Exception $e) {
                        
                    }

                }

                if($admin_refer_notification->email_type == 1){

                    $show_message = $admin_refer_notification->message;

                    $notificationJobR = (new ReferMailSend($admin_refer_notification, $refer_user_find,$show_message))->delay(Carbon::now()->addSeconds(3));
                    dispatch($notificationJobR);
                        
                }
                
            }

            if(!empty($admin_cashback_notification_find)){
                $find_user = User::whereId($user_wallet_txn->user_id)->where('is_block','=',0)->first();
                $find_user->wallet_cash = $find_user->wallet_cash + $user_wallet_txn->cashback_earned;
                $find_user->update();

                $wallet_detail2 = new WalletDetail();
                $wallet_detail2->user_id = $find_user->id;
                $wallet_detail2->description = "Cash Back Earnings";
                $wallet_detail2->cashback_earned = $user_wallet_txn->cashback_earned;
                $wallet_detail2->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
                $wallet_detail2->type_of_transaction = "Cashback";
                $wallet_detail2->user_wallet_cash = $find_user->wallet_cash;
                $wallet_detail2->save();

                  if($user_wallet_txn->cashback_earned > 0 || $user_wallet_txn->redeemed_amount > 0){

                    //If Cashback or Redeem amout is there

                    if($user_wallet_txn->cashback_earned > 0 && $user_wallet_txn->redeemed_amount > 0) {
                        $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$user_wallet_txn->cashback_earned." AED. Your wallet usage is ".$user_wallet_txn->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                    }else if($user_wallet_txn->cashback_earned > 0 && $user_wallet_txn->redeemed_amount == 0) {
                        $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$user_wallet_txn->cashback_earned." AED. ".$admin_cashback_notification_find->message;
                    }else if($user_wallet_txn->cashback_earned == 0 && $user_wallet_txn->redeemed_amount > 0) {
                        $admin_cashback_notification_find->message = "Your wallet usage is ".$user_wallet_txn->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                    }

                }else{
                    //Only Cashback Admin Message will go

                    if (!empty($admin_cashback_notification_find->message)) {
                        $admin_cashback_notification_find->message = $admin_cashback_notification_find->message;
                    }else{
                        $admin_cashback_notification_find->push_type = 0; 
                    }
                }

                // if($user_wallet_txn->cashback_earned > 0){
                //    if($user_wallet_txn->redeemed_amount > 0){
                //             if(!empty($admin_cashback_notification_find->message)){
                //                 $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$user_wallet_txn->cashback_earned." AED. Your wallet usage is ".$user_wallet_txn->redeemed_amount." AED. ".$admin_cashback_notification_find->message;
                //             }else{
                //                 $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$user_wallet_txn->cashback_earned." AED. Your wallet usage is ".$user_wallet_txn->redeemed_amount." AED. ";
                //             }
                //         }else{
                //             if(!empty($admin_cashback_notification_find->message)){
                //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$user_wallet_txn->cashback_earned." AED. ".$admin_cashback_notification_find->message;
                                
                //             }else{
                //             $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$user_wallet_txn->cashback_earned." AED. ";
                                
                //             }
                //         }
                // }else{
                //     $admin_cashback_notification_find->message = $admin_cashback_notification_find->message;
                //     if(empty($admin_cashback_notification_find->message)){
                //         $admin_cashback_notification_find->push_type = 0;
                //     }
                // }

                if($admin_cashback_notification_find->push_type == 1){
                    $noti_record_find = NotiRecord::whereUserId($find_user->id)->first();

                    if(empty($noti_record_find)){
                        $save_noti_record = new NotiRecord();
                        $save_noti_record->user_id = $find_user->id;
                        $save_noti_record->wallet = 1;
                        $save_noti_record->save();

                    }else{
                        $noti_record_find->wallet = $noti_record_find->wallet + 1;
                        $noti_record_find->update();
                    }

                    if($find_user->device_type == 'Android'){
                        if($find_user->device_token && strlen($find_user->device_token) > 20){

                            $total_noti_record = NotiRecord::whereUserId($find_user->id)->sum(DB::raw('wallet + offer + event + normal'));
                            try{
                               $android_notify =  $this->send_android_notification_new($find_user->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2,null,null,$total_noti_record);
                            } catch (\Exception $e) {
                                continue;
                            }
                            $criteria_data = [
                                'user_id'   => $find_user->id,
                                'message'   => $admin_cashback_notification_find->message,
                                'noti_type' => 2,
                                'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                            ];
                            // AdminCriteriaNotification::create($criteria_data);
                       
                       }
                    }

                    if($find_user->device_type == 'Ios' && strlen($find_user->device_token) > 20){
                        if($find_user->device_token){
                            $total_noti_record = NotiRecord::whereUserId($find_user->id)->sum(DB::raw('wallet + offer + event + normal'));
                            try{
                            $ios_notify =  $this->iphoneNotification($find_user->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2,null,null,$total_noti_record);
                            } catch (\Exception $e) {
                                continue;
                            }
                            $criteria_data = [
                                'user_id'   => $find_user->id,
                                'message'   => $admin_cashback_notification_find->message,
                                'noti_type' => 2,
                                'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
                            ];
                            // AdminCriteriaNotification::create($criteria_data);
                        
                       }
                    }
                            AdminCriteriaNotification::create($criteria_data);

                }

                if($admin_cashback_notification_find->email_type == 1){
                    $show_message_cashback  = $admin_cashback_notification_find->message;
                    if(!empty($show_message_cashback)){
                        $cashbackNotificationJob = (new CashbackEmailJob($admin_cashback_notification_find, $find_user, $show_message_cashback))->delay(Carbon::now()->addSeconds(3));
                        dispatch($cashbackNotificationJob);
                    }
                }

                if($admin_cashback_notification_find->sms_type == 1){
                    \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                    $sms = new \SMSGlobal\Resource\Sms();
                    $message = $admin_cashback_notification_find->message;
                    if(!empty($message)){
                        try {
                            $response = $sms->sendToOne($find_user->country_code.$find_user->mobile_number, $message,'CM-Society');
                        } catch (\Exception $e) {
                            // return $e->getMessage();
                        }
                    }
                }
            }
        }

        return response()->json(['msg' => 'Transactions has been verified successfully.']);
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

        $column = "id";

        $order = $request->get("order")[0]['column'];

        if($order == 1){
            $column = "full_name";
        }elseif($order == 2){
            $column = "mobile_number";
        }elseif($order == 3){
            $column = "email";
        }elseif ($order == 4) {
            $column = "wallet_transactions.invoice_number";
        }elseif ($order == 5) {
            $column = "wallet_transactions.total_bill_amount";
        }elseif ($order == 6) {
            $column = "wallet_transactions.check_amount_pos";
        }elseif ($order == 7) {
            $column = "wallet_transactions.txn_status";
        }elseif ($order == 8) {
            $column = "wallet_transactions.cashback_percentage";
        }elseif ($order == 9) {
            $column = "wallet_transactions.user_wallet_cash";
        }elseif ($order == 10) {
            $column = "wallet_transactions.redeemed_amount";
        }elseif ($order == 11) {
            $column = "venue_name";
        }elseif ($order == 13) {
            $column = "wallet_transactions.date_and_time";
        }elseif ($order == 14) {
            $column = "wallet_transactions.updated_at";
        }elseif ($order == 15) {
            $column = "wallet_transactions.updated_by";
        }elseif ($order == 16) {
            $column = "username";
        }

        $offer_product_name = Offer::whereOfferName($request->offer_name)->first();

        $data = WalletTransaction::select("wallet_transactions.*",DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS email"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where users.id = wallet_transactions.user_id) AS full_name"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id) AS mobile_number"),DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' when '3' then 'Micros Verified' else 'Mismatch' end) AS txn_status"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS username"),DB::raw("(select offer_redeem from user_assign_offers where id = wallet_transactions.offer_product_ids) AS offer_redeem"), DB::raw("DATE_FORMAT(wallet_transactions.date_and_time + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS date_and_time"), DB::raw("DATE_FORMAT(wallet_transactions.updated_at + interval 4 hour, '%Y-%m-%d %H:%i:%s') AS updated_at"))
        // ->whereUserId($user_id->id)
        ->where(function($query) use ($request){

                if($request->joined_from && $request->joined_to){
                    $query->whereBetween(DB::raw('date(created_at + interval 4 hour)'),[$request->joined_from, $request->joined_to]);
                }else if($request->joined_from){
                    $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                }else if($request->joined_to){
                    $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
                }

                if($request->venue_id_wallet){
                    $query->where('wallet_transactions.venu_id',$request->venue_id_wallet);
                }

                if($request->txn_status_wallet == 'verified'){
                    $query->where('wallet_transactions.is_cross_verify',1);
                }else if($request->txn_status_wallet == 'not_verified'){
                    $query->where('wallet_transactions.is_cross_verify',0);
                }else if($request->txn_status_wallet == 'micros_verified'){
                    $query->where('wallet_transactions.is_cross_verify',3);
                }

                if($request->mobile_number){
                    $query->where(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->mobile_number . '%');
                }

                if($request->customer_name_wallet){
                    $query->where(DB::raw("(select CONCAT(users.first_name,' ',users.last_name) from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->customer_name_wallet . '%');
                }

                if($request->email){
                    $query->where(DB::raw("(select email from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->email . '%');
                }

                if($request->invoice_number_wallet){
                    $query->where('invoice_number','Like', '%' . $request->invoice_number_wallet . '%');
                }

                if($request->venu_username_id_wallet){
                    $query->where('wallet_transactions.venue_user_id',$request->venu_username_id_wallet);
                }

                if($request->offers_product_wallet_id){
                    $query->whereRaw("FIND_IN_SET(?, offer_product_ids) > 0", [$request->offers_product_wallet_id]);
                }
        })
        ->with('offerProductIds')
        ->orderBy($column,$asc_desc)
        ->where('wallet_transactions.deleted_at',null);

        if($request->get_parent_class != 'basic-datatables4'){
            if($request->select_user_id != null){
                $user_ids = explode("," , $request->select_user_id);
                $data->whereIn('wallet_transactions.user_id',$user_ids);
            }
        }

        $total = $data->count();
        $filter = $total;

        if($search){
             $data  = $data->where(function($query) use($search){
                    $query->orWhere(DB::raw("(select customer_id from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select email from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere("wallet_transactions.user_wallet_cash", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.invoice_number", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.total_bill_amount", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.check_amount_pos", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.redeemed_amount", 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' when '3' then 'Micros Verified' else 'Mismatch' end)"), 'Like', '%' . $search . '%');
                    $query->orWhere(DB::raw("(select users.customer_id from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select venue_users.username from venue_users where id = wallet_transactions.venue_user_id)"), 'like', '%'.$search.'%');
                    $query->orWhere(DB::raw("(select venus.venue_name from venus where id = wallet_transactions.venu_id)"), 'like', '%'.$search.'%');
                    $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.updated_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                    $query->orWhere("wallet_transactions.updated_by", 'Like', '%' . $search . '%');
                });

        }
        $pluck_txn = $data->pluck('id');
        $user_ids_txn = $data->pluck('user_id');
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
            if(empty($da->username)){
                $da->username = $da->cashier_name;
            }

            // $da->date_and_time =  $this->convert_to_user_date($da->date_and_time, 'Y-m-d H:i:s');
            // $da->updated_at =  $this->convert_to_user_date($da->updated_at, 'Y-m-d H:i:s');

            $da->user_wallet_cash = round($da->user_wallet_cash,2);
            $da->pluck_txn = implode(",",$pluck_txn->toArray());
            $da->user_ids_txn = implode(",",$user_ids_txn->toArray());
        }
        if($request->first_time == 'true' && empty($search)){
            $return_data = [
                "data" => [],
                "draw" => (int)$request->draw,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "input" => $request->all(),
            ];
        }else{
            $return_data = [
                "data" => $data,
                "draw" => (int)$request->draw,
                "recordsTotal" => $total,
                "recordsFiltered" => $filter,
                "input" => $request->all(),
            ];
        }

        return response()->json($return_data);
    }

     public function ExcelDownloadCustomerTransactions(Request $request){


        $offer_product_name = Offer::whereOfferName($request->offer_name)->first();

        $data = WalletTransaction::select("wallet_transactions.*",DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS customer_id"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS email"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where users.id = wallet_transactions.user_id) AS full_name"),DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS wallet_cash"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id) AS mobile_number"),DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' when '3' then 'Micros Verified' else 'Mismatch' end) AS txn_status"),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS venue_name"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS username"),DB::raw("(select offer_redeem from user_assign_offers where id = wallet_transactions.offer_product_ids) AS offer_redeem"))
        // ->whereUserId($user_id->id)
        ->where(function($query) use ($request){

                if($request->joined_from && $request->joined_to){
                    $query->whereBetween(DB::raw('date(created_at + interval 4 hour)'),[$request->joined_from, $request->joined_to]);
                }else if($request->joined_from){
                    $query->where(DB::raw('date(created_at + interval 4 hour)'),'>=', $request->joined_from);
                }else if($request->joined_to){
                    $query->where(DB::raw('date(created_at + interval 4 hour)'),'<=', $request->joined_to);
                }

                if($request->venue_id_wallet){
                    $query->where('wallet_transactions.venu_id',$request->venue_id_wallet);
                }

                if($request->txn_status_wallet == 'verified'){
                    $query->where('wallet_transactions.is_cross_verify',1);
                }else if($request->txn_status_wallet == 'not_verified'){
                    $query->where('wallet_transactions.is_cross_verify',0);
                }else if($request->txn_status_wallet == 'micros_verified'){
                    $query->where('wallet_transactions.is_cross_verify',3);
                }
                
                if($request->customer_name_wallet){
                    $query->where(DB::raw("(select CONCAT(users.first_name,' ',users.last_name) from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->customer_name_wallet . '%');
                }

                if($request->mobile_number){
                    $query->where(DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->mobile_number . '%');
                }

                if($request->email){
                    $query->where(DB::raw("(select email from users where users.id = wallet_transactions.user_id)"), 'Like', '%' . $request->email . '%');
                }

                if($request->invoice_number_wallet){
                    $query->where('invoice_number','Like', '%' . $request->invoice_number_wallet . '%');
                }

                if($request->venu_username_id_wallet){
                    $query->where('wallet_transactions.venue_user_id',$request->venu_username_id_wallet);
                }

                if($request->offers_product_wallet_id){
                    $query->whereRaw("FIND_IN_SET(?, offer_product_ids) > 0", [$request->offers_product_wallet_id]);
                }
        })
        ->where('wallet_transactions.deleted_at',null)
        ->with('offerProductIds');

        if($request->selected_user_id != null){
            $selected_ids = explode(',',$request->selected_user_id );
            $data->whereIn('wallet_transactions.user_id',$selected_ids);
        }

        if(!empty($request->search_txt)){
            $search = $request->search_txt;
            if($search){
                 $data  = $data->where(function($query) use($search){
                        $query->orWhere(DB::raw("(select customer_id from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("(select email from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id)"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                        $query->orWhere(DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                        $query->orWhere("wallet_transactions.invoice_number", 'Like', '%' . $search . '%');
                        $query->orWhere("wallet_transactions.total_bill_amount", 'Like', '%' . $search . '%');
                        $query->orWhere("wallet_transactions.check_amount_pos", 'Like', '%' . $search . '%');
                        $query->orWhere("wallet_transactions.redeemed_amount", 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '3' then 'Micros Verified' else 'Mismatch' end)"), 'Like', '%' . $search . '%');
                        $query->orWhere(DB::raw("(select users.customer_id from users where id = wallet_transactions.user_id)"), 'like', '%'.$search.'%');
                        $query->orWhere(DB::raw("(select venue_users.username from venue_users where id = wallet_transactions.venue_user_id)"), 'like', '%'.$search.'%');
                        $query->orWhere(DB::raw("(select venus.venue_name from venus where id = wallet_transactions.venu_id)"), 'like', '%'.$search.'%');
                        $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                        $query->orWhere("wallet_transactions.updated_at", 'Like', '%' . $search . '%');
                        $query->orWhere("wallet_transactions.created_at", 'Like', '%' . $search . '%');
                        $query->orWhere("wallet_transactions.updated_by", 'Like', '%' . $search . '%');
                    });

                 $data = $data->get()->pluck('id');

            }
        }else{
             $data = $data->get()->pluck('id');
        }

        return response()->json(['ids_data' => $data]);


       // $data = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer id'"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Mobile Number'"),"wallet_transactions.invoice_number AS Invoice Number","wallet_transactions.total_bill_amount AS Check Amount","wallet_transactions.check_amount_pos AS Check Amount POS",DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' else 'Mismatch' end) AS 'Transaction Status'"),"wallet_transactions.id","wallet_transactions.cashback_percentage AS Cashback Percentage",DB::raw("(select wallet_cash from users where id = wallet_transactions.user_id) AS 'Redeemed Wallet'"),"wallet_transactions.redeemed_amount AS Redemption From Loylaty","wallet_transactions.id",DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant User'"),DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"))->whereDeletedAt(null)->get()->toArray();
                
       //  foreach ($data as $key => $value) {
       //      unset($value->id);
       //  }

       // $data = json_decode( json_encode($data), true);
       //  return $download =  Excel::create('Customer Wallet Transations', function($excel) use ($data){
       //      $excel->sheet('Customer Wallet Transations', function($sheet) use ($data){
       //          $sheet->fromArray($data);

       //      });
       //  })->download('xlsx');
    }


    public function downloadWalletTransactionsAfterCriteriaMatch(Request $request, $ids_data){


        $ids_data = explode(",", base64_decode($request->ids_data));
        // $data = WalletTransaction::select(DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where users.id = wallet_transactions.user_id) AS 'Customer Name'"),DB::raw("(select CONCAT(users.country_code,' ', users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Mobile Number'"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS 'Email ID'"),"wallet_transactions.invoice_number AS Invoice Number","wallet_transactions.total_bill_amount AS Check Amount","wallet_transactions.check_amount_pos AS Check Amount POS",DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' else 'Mismatch' end) AS 'Transaction Status'"),"wallet_transactions.cashback_percentage AS Cashback Percentage",DB::raw("ROUND((select wallet_cash from users where id = wallet_transactions.user_id),1) AS 'Redeemed Wallet'"),"wallet_transactions.redeemed_amount AS Redemption From Loyalty",DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant User'"),DB::raw("DATE_FORMAT(wallet_transactions.date_and_time, '%Y-%m-%d') AS Date"))->orderBy('wallet_transactions.id','desc')->whereIn('id',$ids_data)
        //     ->get()->toArray();

        $data = WalletTransaction::select('cashier_name',DB::raw("(select customer_id from users where id = wallet_transactions.user_id) AS 'Customer ID'"),DB::raw("(select CONCAT(users.first_name,' ', users.last_name) from users where id = wallet_transactions.user_id) AS 'Customer Name'"),DB::raw("(select CONCAT(users.country_code, users.mobile_number) from users where users.id = wallet_transactions.user_id) AS 'Customer No.'"),DB::raw("(select email from users where id = wallet_transactions.user_id) AS 'Email ID'"),'wallet_transactions.invoice_number as Check No.','wallet_transactions.total_bill_amount as Check Amount','check_amount_pos as Check Amount POS',DB::raw("CONCAT(case wallet_transactions.is_cross_verify when '0' then 'Not Verified' when '1' then 'Verified' when '3' then 'Micros Verified' else 'Mismatch' end) AS 'Transaction Status'"),'wallet_transactions.cashback_percentage as Cash Back %',DB::raw('ROUND(wallet_transactions.user_wallet_cash,2) as "Wallet Cash"'),DB::raw('ROUND(wallet_transactions.redeemed_amount,2) as "Redemption from Loyalty"'),DB::raw("(select venue_name from venus where id = wallet_transactions.venu_id) AS 'Restaurant Name'"),'wallet_transactions.offer_product_ids',DB::raw("DATE_FORMAT(wallet_transactions.date_and_time + interval 4 hour, '%Y-%m-%d %H:%i %s') AS 'Date and Time'"),DB::raw("(select username from venue_users where id = wallet_transactions.venue_user_id) AS 'Restaurant Logged In User'"))
        ->whereIn('wallet_transactions.id',$ids_data)
        ->orderBy('wallet_transactions.id','desc')->get();


        foreach($data as $da){
            if($da->offer_product_ids){
                $pluck_offer_ids = explode(",", $da->offer_product_ids);
                $pluck_offer_name = Offer::whereIn('id', $pluck_offer_ids)->pluck('offer_name')->toArray();
                $da->OfferProducts = implode(", ", $pluck_offer_name);
            }else{
                $da->OfferProducts = 'N/A';
            }


            if(empty($da['Restaurant Logged In User'])){
                $da['Restaurant Logged In User'] = $da['cashier_name'];
            }

            // $da->Date =  $this->convert_to_user_date($da->Date, 'Y-m-d H:i A');

            unset($da->cashier_name);
            unset($da->offer_product_ids);
        }
             

           $data = json_decode( json_encode($data), true);
            return $download =  Excel::create('Customer Wallet Transations', function($excel) use ($data){
                $excel->sheet('Customer Wallet Transations', function($sheet) use ($data){
                    $sheet->fromArray($data);

                });
            })->download('xlsx');
    }

    public function generalSettingsSave(Request $request){
        $find_setting = GeneralSetting::whereUniqId($request->uniq_id)->first();

        (empty($request->setting_content)) ? $content = $request->editorText : $content = $request->setting_content;

        if(empty($find_setting)){

            $find_setting = new GeneralSetting();
            $find_setting->uniq_id = $request->uniq_id;
            $find_setting->setting_content = $content;
            $find_setting->setting_enabled_disbaled = $request->setting_enabled_disabled;
            $find_setting->setting_type = $request->data_name;
            $find_setting->save();

            if($request->uniq_id == 1){
                return response()->json(['message' => 'Contact us email added successfully.']);
            }else if($request->uniq_id == 2){
                return response()->json(['message' => 'Contact us number added successfully.']);
            }else if($request->uniq_id == 12){
                return response()->json(['message' => "FAQ's added successfully."]);
            }

            return response()->json(['message' => ucfirst($request->data_name).' added successfully.']);
        }else{

            $find_setting->setting_content = $content;
            $find_setting->setting_enabled_disbaled = $request->setting_enabled_disabled;
            $find_setting->setting_type = $request->data_name;
            $find_setting->update();

            if($request->uniq_id == 1){
                return response()->json(['message' => 'Contact us email updated successfully.']);
            }else if($request->uniq_id == 2){
                return response()->json(['message' => 'Contact us number updated successfully.']);
            }else if($request->uniq_id == 12){
                return response()->json(['message' => "FAQ's updated successfully."]);
            }

            return response()->json(['message' => ucfirst($request->data_name).' updated successfully.']);

        }
    }

    public function applicationDataSave(Request $request){

        $imageName = '';

        if(!empty($request->name_of_file_show)){
           $extension = pathinfo($request->name_of_file_show)['extension'];
           try{
            if($extension=='png'){
                $image1 = str_replace('data:image/png;base64,', '', $request->hidden_image);
                $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('APPLICATION_DATA_STORAGE');
                $imageName = date('mdYHis') . rand(10,100) . uniqid().'.png';
            }else{
                $image1 = str_replace('data:image/jpeg;base64,', '', $request->hidden_image);
                $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('APPLICATION_DATA_STORAGE');
                $imageName = date('mdYHis') . rand(10,100) . uniqid().'.jpeg';
            }
            
            // file_put_contents($destinationPath. '/' . $imageName, base64_decode($image1));
            $img_new = Image::make(base64_decode($image1))->stream($extension, 50);
            
            file_put_contents($destinationPath. '/' . $imageName, $img_new);
            }catch(\Exception $ex){
                return response()->json(['image_name_err' => "Please upload valid image." ],422);
            }
        }



        
        $application_data = ApplicationData::first();

        $find_application_image = ApplicationImage::whereApplicationDataId($application_data->id)->whereUniqId($request->uniq_id)->first();

        if(empty($find_application_image)){
            $find_application_image = new ApplicationImage();
            $find_application_image->image = $imageName;
            $find_application_image->name_of_file_show = $request->name_of_file_show;
            $find_application_image->application_data_id = $application_data->id;
            $find_application_image->uniq_id = $request->uniq_id;
            $find_application_image->image_type = $request->data_name;
            $find_application_image->save();

            if($request->uniq_id == 3){
                return response()->json(['message' => 'Offer screen image added successfully.']);
            }

            $lower_str = strtolower($request->data_name);

            return response()->json(['message' => ucfirst($lower_str).' added successfully.']);
        }else{
            if($imageName != null || $request->name_of_file_show != null){
                $find_application_image->image = $imageName;
                $find_application_image->name_of_file_show = $request->name_of_file_show;
                $find_application_image->image_type = $request->data_name;
                $find_application_image->update();
            }else{
                $find_application_image->image_type = $request->data_name;
                $find_application_image->update();
            }
            if($request->uniq_id == 3){
                return response()->json(['message' => 'Offer screen image updated successfully.']);
            }
            $lower_str = strtolower($request->data_name);
            return response()->json(['message' => ucfirst($lower_str).' updated successfully.']);
        }


    }

    public function saveGenApplicationData(Request $request){

        $application_data = ApplicationData::first();

        if($request->data_name == "Welcome Screen Logo"){
            if(!empty($request->name_of_file_show)){
                try{
                $extension = pathinfo($request->name_of_file_show)['extension'];
                if($extension=='png'){
                    $image1 = str_replace('data:image/png;base64,', '', $request->hidden_image);
                    $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('APPLICATION_DATA_STORAGE');
                    $imageName = date('mdYHis') . rand(10,100) . uniqid().'.png';
                }else{
                    $image1 = str_replace('data:image/jpeg;base64,', '', $request->hidden_image);
                    $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('APPLICATION_DATA_STORAGE');
                    $imageName = date('mdYHis') . rand(10,100) . uniqid().'.jpeg';
                }
                
                $img_new = Image::make(base64_decode($image1))->stream($extension, 50);
                file_put_contents($destinationPath. '/' . $imageName, $img_new);
            }catch(\Exception $ex){
               return response()->json(['image_name_err' => 'Please upload valid image.'],422);
            }
                
                $application_data->logo = $imageName;
                $application_data->name_of_file_show_logo = $request->name_of_file_show;
                $application_data->update();
            }

            return response()->json(['message' => 'Welcome screen logo updated successfully.']);
        }

        if($request->data_name == "Launch animation"){

            if($request->hasfile('img_upload')){
                $file_original_name = $request->file('img_upload')->getClientOriginalName();
                $extension = $request->file('img_upload')->getClientOriginalExtension();

                $file = $request->file('img_upload');
                $destinationPath = $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('APPLICATION_DATA_STORAGE');
                $imageName = date('mdYHis') . rand(10,100) . uniqid(). '.' . $extension;
                $file->move($destinationPath, $imageName);

                $application_data->video = $imageName;
                $application_data->name_of_file_show_video = $file_original_name;
                $application_data->update();
            }
                return response()->json(['message' => 'Launch animation video updated successfully.']);
        }

        if($request->data_name == "App Theme Color"){
            $application_data->color = $request->theme_color;
            $application_data->update();
            return response()->json(['message' => 'App theme color updated successfully.']);
        }

    }

    public function getGeneralSettings(){
         $application_data = ApplicationData::with('applicationImages')->first();
         $general_settings = GeneralSetting::get();
         return response()->json(['application_data' => $application_data, 'general_settings' => $general_settings]);
    }

    public function adminUserSave(Request $request){
        $admin_user = Auth::guard('admin')->user();

        $check_already_username = Admin::whereName($request->name)->first();

        if(!empty($check_already_username)){
            return response()->json(['admin_name_err' => "Username already exists."],422);
        }


        $hash_password = Hash::make($request->password);

        $data =  $request->all();
        $data['password'] = $hash_password;
        $data['created_by'] = $admin_user->name;
        $data['updated_by'] = $admin_user->name;
        $data['password'] = $hash_password;

        $admin = new Admin;
        $admin->fill($data);
        $admin->save();

        if($admin){
            return response()->json(['message' => 'New admin added successfully.']);
        }
    }

    public function adminUserUpdate(Request $request){

        $check_first_user = Admin::whereId($request->update_id)->whereEmail(null)->first();
        $str_to_lower = strtolower($request->role_type);

        if(!empty($check_first_user)){

            $check_already_username = Admin::whereName($request->name)->where('id','!=',$request->update_id)->first();

            if(!empty($check_already_username)){
                return response()->json(['admin_name_err' => "Username already exists."],422);
            }

            $update_user = Admin::whereId($request->update_id)->first();

            $admin_user = Auth::guard('admin')->user();
            $self_update = "false";

            $hash_password = Hash::make($request->password);
            $update_user->name = $request->name;
            $update_user->password = $hash_password;
            $update_user->status = $request->status;
            $update_user->role_type = $request->role_type;
            $update_user->updated_by = $admin_user->name;
            $update_user->update();

            if($admin_user->id == $request->update_id){
                if($update_user->status == 'Inactive'){
                    $self_update = "true";
                }
            }

            if($update_user){
                return response()->json(['message' => ucfirst($str_to_lower).' account details updated successfully.','self_update' => $self_update]);
            }
        }else{
            return response()->json(['message' => ucfirst($str_to_lower).' cannot be updated.']);
        }

    }
    public function getSingleAdminUser(Request $request){
        $find_admin_user = Admin::whereId($request->data_id)->first();
        return response()->json($find_admin_user);
    }

    public function getAdminUsersList(Request $request){
        $column = "id";
            $asc_desc = $request->get("order")[0]['dir'];
         
            if($asc_desc == "asc"){
                $asc_desc = "desc";
            }else{
                $asc_desc = "asc";
            }

            $order = $request->get("order")[0]['column'];
            if($order == 1){
                $column = "name";
            }elseif($order == 2){
                $column = "password";
            }elseif ($order == 3) {
                $column = "role_type";
            }elseif ($order == 4) {
                $column = "status";
            }elseif ($order == 5) {
                $column = "created_at";
            }elseif($order == 6){
                $column = "created_by";
            }elseif($order == 7){
                $column = "updated_at";
            }elseif($order == 8){
                $column = "updated_by";
            }

        $data =Admin::orderBy($column,$asc_desc);
        $total = $data->count();

        $search = $request->get("search")["value"];
        $filter = $total;

        if($search){
            $data  = $data->where(function($query) use($search){
                            
                $query->orWhere('name', 'Like', '%' . $search . '%');
                $query->orWhere('role_type', 'Like', '%' . $search . '%');
                $query->orWhere('created_at', 'Like', '%' . $search . '%');
                // $query->orWhere('created_by', 'Like', '%' . $search . '%');
                $query->orWhere('updated_at', 'Like', '%' . $search . '%');
                // $query->orWhere('updated_by', 'Like', '%' . $search . '%');
                $query->orWhere('status', 'Like', '%' . $search . '%');
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
            $user_select->password = "******";
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





