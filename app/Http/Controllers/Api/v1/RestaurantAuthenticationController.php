<?php
namespace App\Http\Controllers\Api\v1;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Auth;
use App\BusinessModel\ProfileModel;
use App\Mail\EmailVerify;
use App\Mail\UserForgotPassword;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use GuzzleHttp\Exception\RequestException;
use App\Http\Controllers\Api\v1\ResponseController;
use App\Validation;
use App\User;
use Hash;
use Crypt;
use DB;
use App\Models\Otp;
use App\Models\ApplicationData;
use App\Models\ApplicationImage;
use App\Models\Admin;
use Session;
use App\Models\Venu;
use App\Models\Event;
use App\Models\Offer;
use App\Models\OfferSetting;
use App\Models\Cashback;
use App\Models\City;
use App\Models\VenueUser;
use App\Models\UserAssignOffer;
use App\Models\TierCondition;
use App\Models\Badge;
use App\Models\AssignBadge;
use App\Models\LoginRequest;
use App\Models\WalletTransaction;
use App\Models\TierSetting;
use App\Models\AssignUserVenue;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;
use App\Models\Country;
use App\Mail\ReferralEmail;
use App\Mail\TransactionEmail;
use App\Mail\CashbackEmail;
use App\Models\LoginPose;
use App\Models\WalletDetail;
use App\Models\NotiRecord;
use App\Models\GeneralSetting;
use DateTime;
use DateTimeZone;
require_once $_SERVER['DOCUMENT_ROOT'].'/vendor/autoload.php';
date_default_timezone_set('Asia/Dubai');
class RestaurantAuthenticationController extends ResponseController
{

	protected $profileModel;

    public function __construct(ProfileModel $profileModel){
        $this->profileModel = $profileModel;
    }

    public function venuUserLogin(Request $request){

        $this->is_validationRule(Validation::venuUserAppLogin($Validation = "", $message = "") , $request);
        date_default_timezone_set($request->timezone);
        $user_details = $this->profileModel->venueUserCustomLogin($request);
        if($user_details['status'] == 0){
            return $this->responseWithErrorCode($user_details['error_msg'], 400);
        }elseif($user_details['status'] == 3){
            return $this->responseWithErrorCode($user_details['error_msg'], 403);
        }elseif($user_details['status'] == 5){
            return $this->responseWithErrorCode($user_details['error_msg'], 406);
        }elseif($user_details['status'] == 4){
            return $this->responseWithErrorCode($user_details['error_msg'], 407);
        }else{
            return $this->responseOk('User has been logged in successfully.', ['login' => $user_details['data']]);
        }

    }

    public function venuUserProfile(Request $request){
    	$id = $request->id;
    	$token = $_SERVER['HTTP_TOKEN'];
    	$login_user = VenueUser::whereAccessToken($token)->first();

    	$show_data = $login_user;

    	if(!empty($id)){
    		$show_data = VenueUser::whereId($id)->first();
    	}
    	return $this->responseOk("User Profile",['profile' => $show_data]);
    }

    public function venueListingWithoutToken(Request $request){
        $venue = Venu::select('id','venue_name')->whereDeletedAt(null)->where('status', '=', 'Active')->get();
        return $this->responseOk('Venue Listing',['venue_listing' => $venue]);
    }

    public function getUserData(Request $request){

        $token = $_SERVER['HTTP_TOKEN'];
        $login_user = VenueUser::whereAccessToken($token)->first();
        $venue_login_id = $request->venue_login_id; 

        $this->is_validationRule(Validation::getUserDataValidation($Validation = "", $message = "") , $request);
        $timezone = $request->timezone;
        $user = User::whereId($request->user_id)->first();
        if(!empty($user)){
            $tier = TierCondition::whereTierName($user->customer_tier)->orderBy('id','desc')->first();
            $user->tier = $tier;

            $assign_user_venues = AssignUserVenue::whereVenueUserId($login_user->id)->pluck('venu_id');

            $user_assign_offers = UserAssignOffer::whereUserId($user->id)->whereOfferRedeem(0)->pluck('offer_id');

            $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->whereIn("id", $assign_user_venues)->whereId($venue_login_id)->pluck('id');

            $offers = Offer::where(function($query) use ($user_assign_offers, $active_venue_ids){
                    $query->whereDeletedAt(null);
                    $query->whereStatus('Active');
                    $query->whereIn('id',$user_assign_offers);
                    $query->whereDate('to_date','>=',Carbon::now()->toDateString());
                    $query->whereIn('venu_id', $active_venue_ids);

                })->orWhere(function($query) use ($user_assign_offers, $active_venue_ids){
                    $query->whereDeletedAt(null);
                    $query->whereStatus('Active');
                    $query->whereIn('id',$user_assign_offers);
                    $query->where('offer_type','=','BirthdayOffer');
                    $query->whereIn('venu_id', $active_venue_ids);
                })
                ->with('offerSetting','venu')
                ->get();

            $user->offers = $offers;


            date_default_timezone_set($timezone);
            $today_days = Carbon::now()->format('l');

            $active_badges = Badge::whereDeletedAt(null)->whereStatus('Active')->pluck('id');

            $user_assign_badge = AssignBadge::whereUserId($user->id)->whereDeletedAt(null)->whereStatus('Active')->whereDate('to_date','>=',Carbon::now()->toDateString())->whereDate('from_date','<=',Carbon::now()->toDateString())->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)->whereIn('badge_id', $active_badges)->with('badge')->get();
            $user->badges = $user_assign_badge;
            $now_time = Carbon::now();
            $time_after_10mins = Carbon::now()->addMinutes(10);

            $find_venue_timeout_time = GeneralSetting::whereUniqId(16)->first();

            if(!empty($find_venue_timeout_time)){
                $user->valid_time = (string)$find_venue_timeout_time->setting_content;
            }else{

                $user->valid_time = (string)$now_time->diffInSeconds($time_after_10mins);   //10 min = 600 secs 
            }
            return $this->responseOk("User Data",['user_data' => $user]);

        }else{
            return $this->responseWithErrorCode("Customer not found.",406);
        }
    }

    public function searchUserData(Request $request){
        $this->is_validationRule(Validation::getSearchUserDataValidation($Validation = "", $message = "") , $request);

        $token = $_SERVER['HTTP_TOKEN'];
        $login_user = VenueUser::whereAccessToken($token)->first();

        $user = User::whereCustomerId($request->search_txt)
                ->orWhere(function($query) use ($request){
                    $query->where(DB::raw("CONCAT(users.country_code,users.mobile_number)"),'=',"+".$request->search_txt);
                })->first();

        if(!empty($user)){

            return $this->responseOk("Search User Data",['search_user_data' => $user]);
        }else{
            return $this->responseWithErrorCode("Customer not found.",400);
        }

    }

    public function sendOtpIpad(Request $request){

        $this->is_validationRule(Validation::sendOtpIpadValidation($Validation = "", $message = "") , $request);

        $admin_email = GeneralSetting::whereUniqId(2)->first();
        $user = User::whereId($request->user_id)->first();
        if(empty($user->wallet_cash)){

            $user_wallet_cash = 0;
        }else{
            $user_wallet_cash = $user->wallet_cash;
        }
        $redeemed_amount = $request->redeemed_amount;

        if($request->redeem_type != "offer"){
            if($redeemed_amount == ""){
                return $this->responseWithErrorCode("Please enter redeemed amount.",406);
            }
            if($redeemed_amount <= 0){
                return $this->responseWithErrorCode("Redeem amount should be greater than 0.",406);
            }

            if($user_wallet_cash < $redeemed_amount){
                return $this->responseWithErrorCode("Redeem amount should be less than or equal to wallet amount.",406);
            }
        }



        if($user->deleted_at != null){
            return $this->responseWithErrorCode("User has been deleted by admin.",404);
        }else if($user->is_active == "Inactive"){
            return $this->responseWithErrorCode("User has been inactivated by admin.",404);
        }

        \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));

        $sms = new \SMSGlobal\Resource\Sms();

        $otp = mt_rand(1000,9999);

        //$message = "Your OTP for Society App is ".$otp;
        if($request->redeem_type == "offer"){
            $offer_name = $request->offer_name;
            // $message = "Your OTP to redeem ".$offer_name." using Capital Society Loyalty App is ".$otp.". If you did not inititate this request, Please call us 800 6996.";
            $message = "Your OTP to redeem ".$offer_name." using Capital Society Loyalty App is ".$otp.". If you did not inititate this request, Please call us on ".$admin_email->setting_content;
        }else{
            //wallet case
            // $message = "Your OTP to redeem AED ".$redeemed_amount." using Capital Society Loyalty App is ".$otp.". If you did not inititate this request, Please call us 800 6996.";
            $message = "Your OTP to redeem AED ".$redeemed_amount." using Capital Society Loyalty App is ".$otp.". If you did not inititate this request, Please call us on ".$admin_email->setting_content;
        }

        try {
            $response = $sms->sendToOne($user->country_code.$user->mobile_number, $message,'CM-Society');
        } catch (\Exception $e) {
            return $this->responseWithErrorCode("Please enter valid phone number.",400);
        }

        $data['otp'] = $otp;
        Otp::whereMobileNumber($user->mobile_number)->whereCountryCode($user->country_code)->delete();
        $otp_save = new Otp();
        $otp_save->country_code = $user->country_code;
        $otp_save->mobile_number = $user->mobile_number;
        $otp_save->otp = $otp;
        $otp_save->save();

        $find_otp_timeout_time = GeneralSetting::whereUniqId(17)->first();

        if($find_otp_timeout_time->setting_enabled_disbaled == 'Enabled'){
            $otp_save->otp_valid_time = $find_otp_timeout_time->setting_content;
        }else{
           $otp_save->otp_valid_time = (string)600; 
        }
        
        return $this->responseOk("OTP has been sent successfully to selected user.", ["otp_data" => $otp_save]);
    }

    public function verifyOtpIpad(Request $request){
        $this->is_validationRule(Validation::verifyOTP($Validation = "", $message = "") , $request);

        $greater_Time = Carbon::now()->toDateString();

        $find_otp = Otp::whereOtp($request->otp)->whereMobileNumber($request->mobile_number)->whereCountryCode($request->country_code)->orderBy("id","desc")->first();

        if(empty($find_otp)){
            return $this->responseWithErrorCode("Please enter valid OTP.",406);
        }

        $user_find = User::whereCountryCode($request->country_code)->whereMobileNumber($request->mobile_number)->first();
        if($user_find->deleted_at != null){
            return $this->responseWithErrorCode("User has been deleted by admin.",404);
        }else if($user_find->is_active == "Inactive"){
            return $this->responseWithErrorCode("User has been inactivated by admin.",404);
        }
        $time_after_10mins = Carbon::parse($find_otp->created_at)->addMinutes(10);

        if(Carbon::now()->toDateString() == $time_after_10mins->toDateString()){

            if(Carbon::now()->toTimeString() > $time_after_10mins->toTimeString() ){
                 return $this->responseWithErrorCode("OTP has been expired or invalid.",406);
            }
        }else{
            return $this->responseWithErrorCode("OTP has been expired or invalid.",406);
        }

        $find_otp->delete();
        return $this->responseOk("OTP has been verified successfully.");
        
    }

    public function venueUserlogout(Request $request){

        $token = $_SERVER['HTTP_TOKEN'];
        $login_user = VenueUser::whereAccessToken($token)->first();


        $login_request = LoginRequest::whereVenueUserId($login_user->id)->where('mac_address', '=', $request->mac_address)->first();

        $login_request->device_type = null;
        $login_request->device_token = null;
        $login_request->update();
        return $this->responseOk("User has been logout successfully.");
    }

    public function payAmount(Request $request){

        $token = $_SERVER['HTTP_TOKEN'];
        $login_user = VenueUser::whereAccessToken($token)->first();
        $venue_login_id = $request->venue_login_id;

        $this->is_validationRule(Validation::PayAmount($Validation = "", $message = "") , $request);
        $data = $request->all();
        $active_venue_id = Venu::where('status' , 'Active')->where('deleted_at' , null)->whereId($venue_login_id)->pluck('id');
        // date_default_timezone_set($data['timezone']);
         // date_default_timezone_set("UTC");

        $user_find = User::whereId($data['user_id'])->first();
        $tier_find = TierCondition::whereTierName($user_find->customer_tier)->whereDeletedAt(null)->first();
        if(empty($tier_find)){
            $tier_find = TierCondition::whereDeletedAt(null)->first();
        }

        if(empty($tier_find)){
            return $this->responseWithErrorCode("No tier add from admin.",400);
        }


        if(isset($data['redeemed_amount'])){

            // if($data['redeemed_amount'] > $data['total_bill_amount']){
            //     return $this->responseWithErrorCode("Bill amount should be greater than or equal to redeem amount.",406);
            // }
            if($user_find->wallet_cash < $data['redeemed_amount']){
                return $this->responseWithErrorCode("Redeem amount should be less than or equal to wallet amount.",406);
            }

        }else{
            $data['redeemed_amount'] = 0;
        }
        // return $data['redeemed_amount'];

        if($user_find->deleted_at != null){
            return $this->responseWithErrorCode("User has been deleted by admin.",404);
        }else if($user_find->is_active == "Inactive"){
            return $this->responseWithErrorCode("User has been inactivated by admin.",404);
        }else if($user_find->is_block == 1){
            return $this->responseWithErrorCode("User has been blocked by admin.",404);
        }

        $check_days_for_repeat_invoice = GeneralSetting::whereUniqId(15)->first();

        /*Check for duplicate  invoice number*/

        if(empty($check_days_for_repeat_invoice)){

            $check_exists_invoice_number = WalletTransaction::whereVenuId($venue_login_id)->whereInvoiceNumber($request->invoice_number)->whereDeletedAt(null)->first();
        }else{
            $day_up_to = (int)$check_days_for_repeat_invoice->setting_content;
            $end_day = Carbon::now()->toDateString();
            $start_day = Carbon::now()->subDays($day_up_to)->toDateString();
            $check_exists_invoice_number = WalletTransaction::where(function($query) use ($start_day, $end_day, $request, $venue_login_id){
                    $query->whereVenuId($venue_login_id);
                    $query->whereInvoiceNumber($request->invoice_number);
                    $query->whereDeletedAt(null);
                    $query->whereDate('date_and_time', '>=', $start_day);
                    $query->whereDate('date_and_time', '<=', $end_day);
                })->first();

        }

        if(!empty($check_exists_invoice_number)){
            return $this->responseWithErrorCode("Invoice number already exists.",406); 
        }

        /*End*/

        $transaction_amount_check_last_days = 30;
        $customer_tier_validity_check = 30;
        $tier_setting = TierSetting::first();
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

        // $total_amount_transaction = $total_amount_transaction + $data['total_bill_amount'];
        $total_amount_transaction = $total_amount_transaction;

        $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('from_amount', '<=', $total_amount_transaction)->where('to_amount', '>=', $total_amount_transaction)->first();
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

                    return $this->responseWithErrorCode("No tier add from admin.",400);
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


        $data['description'] = "Redeemed Earnings";

        $data['venue_user_id'] = $login_user->id;

        $data['date_and_time'] = Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString();
        $today_date = Carbon::now();
        $dt = new DateTime($today_date);
        $tz = new DateTimeZone('Asia/Dubai');
        $dt->setTimezone($tz);
        $today_date = $dt->format('Y-m-d');
        $today_time = $dt->format('H:i:s');
        $today_days = Carbon::now()->format('l');
        $find_promotion_cashback = Cashback::where(function($query) use ($user_find,$today_date,$active_venue_id,$today_days,$today_time){
                        $query->whereDeletedAt(null);
                        $query->whereDate('from_date', '<=', $today_date);
                        $query->whereDate('to_date','>=', $today_date);
                        $query->whereTime('from_time', '<=', $today_time);
                        $query->whereTime('to_time','>=', $today_time);
                        $query->where('venu_id', $active_venue_id);
                        $query->whereRaw("FIND_IN_SET(?, day_on) > 0", $today_days);
                        $query->where("status","=","Active");
                    })->first();
        if(!empty($find_promotion_cashback)){

            $data['cashback_percentage'] = $find_promotion_cashback->cashback_percentage;
        }else{
            $data['cashback_percentage'] = $tier_find->percentage;
        }
        $data['cashback_earned'] = ($data['total_bill_amount'] / 100) * $data['cashback_percentage'];

        if(empty($data['redeemed_amount'])){

            $data['pay_bill_amount'] = $data['total_bill_amount'];
        }else{

            $data['pay_bill_amount'] = $data['total_bill_amount'] - $data['redeemed_amount'];
        }

        $data['venu_id'] = $venue_login_id;
        $data['offer_product_ids'] = $data['verify_offer_ids'];


        $user_find->wallet_cash = $user_find->wallet_cash - $data['redeemed_amount'];
        $user_find->update();

        if($data['total_bill_amount'] == 0){
            $data['is_cross_verify'] = 1;
        }

        $data['description'] = "Cash Back Earnings";
        $data['user_wallet_cash'] = $user_find->wallet_cash;

        $wallet_transaction = new WalletTransaction();
        $wallet_transaction->fill($data);
        $wallet_transaction->save();

        /*Second Entry in wallet transaction table*/
        if($data['redeemed_amount'] > 0){
            $wallet_detail1 = new WalletDetail();
            $wallet_detail1->user_id = $user_find->id;
            $wallet_detail1->description = "Redeemed Earnings";
            $wallet_detail1->redeemed_amount = $data['redeemed_amount'];
            $wallet_detail1->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
            $wallet_detail1->type_of_transaction = "Redeem";
            $wallet_detail1->user_wallet_cash = $user_find->wallet_cash;
            $wallet_detail1->save();
        }


        if(isset($data['verify_offer_ids']) && !empty($data['verify_offer_ids'])){
            $offer_ids = explode(",", $data['verify_offer_ids']);

            foreach ($offer_ids as $offer_id) {
                UserAssignOffer::whereUserId($user_find->id)->whereOfferId($offer_id)->update(['offer_redeem' => 1]);
            }
        }

        $admin_transaction_notification = AdminNotification::where("uniq_id","=",1)->first();
        $admin_refer_notification = AdminNotification::where("uniq_id","=",4)->first();

        if(!empty($admin_transaction_notification)){

           // $admin_transaction_notification->message = "Congratulations you have redeemed amount of ".$data['redeemed_amount']." AED for your transaction. ".$admin_transaction_notification->message;

            if($admin_transaction_notification->push_type == 1){

                if($user_find->device_type == 'Android'){
                    if($user_find->device_token && strlen($user_find->device_token) > 20){

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
                        $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                       $android_notify =  $this->send_android_notification_new($user_find->device_token, $admin_transaction_notification->message, $notmessage = "Transaction Notification", $noti_type = 1,null,null,$total_noti_record);

                       $criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $admin_transaction_notification->message,
                            'noti_type' => 1
                       ];
                       AdminCriteriaNotification::create($criteria_data);
                   
                   }
                }

                if($user_find->device_type == 'Ios' && strlen($user_find->device_token) > 20){
                    if($user_find->device_token){

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
                        $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                        $ios_notify =  $this->iphoneNotification($user_find->device_token, $admin_transaction_notification->message, $notmessage = "Transaction Notification", $noti_type = 1,null,null,$total_noti_record);

                        $criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $admin_transaction_notification->message,
                            'noti_type' => 1
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                    
                   }
                }

            }

            if($admin_transaction_notification->sms_type == 1){
                \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                $sms = new \SMSGlobal\Resource\Sms();
                $message = $admin_transaction_notification->message;
                try {
                    $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message,'CM-Society');
                } catch (\Exception $e) {
                    
                }
            }

            if($admin_transaction_notification->email_type == 1){
                try{
                    \Mail::to($user_find->email)->send(new TransactionEmail($admin_transaction_notification, $user_find));
                }catch(\Exception $ex){
                    //return $ex->getMessage();
                }
            }
        }

        /*$refer_user_find = null;
        if(!empty($user_find->reference_code) && $user_find->refer_amount_used == 0){

            $refer_user_find = User::whereSelfReferenceCode($user_find->reference_code)->whereDeletedAt(null)->where('is_block','=',0)->first();


        }
        if(!empty($admin_refer_notification) && !empty($refer_user_find)){

            $user_find->refer_amount_used = 1;
            $user_find->update();

            if($admin_refer_notification->push_type == 1){

                if($refer_user_find->device_type == 'Android'){
                    if($refer_user_find->device_token && strlen($refer_user_find->device_token) > 20){
                       $android_notify =  $this->send_android_notification_new($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4);

                       $criteria_data = [
                            'user_id'   => $refer_user_find->id,
                            'message'   => $admin_refer_notification->message,
                            'noti_type' => 4
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                   
                   }
                }

                if($refer_user_find->device_type == 'Ios' && strlen($refer_user_find->device_token) > 20){
                    if($refer_user_find->device_token){
                        $ios_notify =  $this->iphoneNotification($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4);

                        $criteria_data = [
                            'user_id'   => $refer_user_find->id,
                            'message'   => $admin_refer_notification->message,
                            'noti_type' => 4
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                    
                   }
                }

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
                try{
                    \Mail::to($refer_user_find->email)->send(new ReferralEmail($admin_refer_notification, $refer_user_find));
                }catch(\Exception $ex){
                    //return $ex->getMessage();
                }
            }

            $refer_user_find->wallet_cash = $refer_user_find->wallet_cash + $user_find->refer_amount;
            $refer_user_find->update();
        }*/
        return $this->responseOk("Payment has been successfully processed.");

    }

    public function redeemOffer(Request $request){
        $this->is_validationRule(Validation::offerRedeemed($Validation = "", $message = "") , $request);
        $offer_id = $request->offer_id;
        $user_id = $request->user_id;
        $updateAssignOffer = UserAssignOffer::whereUserId($user_id)->whereOfferId($offer_id)->update(['offer_redeem' => 1]);
        return $this->responseOk("Offer has been redeemed successfully.");
    }

    public function scanPos(Request $request){

        $find_pos = LoginPose::wherePassword($request->password)->first();

        if(empty($find_pos)){
            return $this->responseWithErrorCode("Please enter valid password.",406);
        }

        $this->is_validationRule(Validation::scanPosValidate($Validation = "", $message = "") , $request);

        $timezone = $request->timezone;
        $user = User::whereId($request->user_id)->orWhere('customer_id', '=', $request->user_id)->first();

        if(empty($user)){
            return $this->responseWithErrorCode("Please enter valid user id or customer id.",406);
        }

        $tier = TierCondition::whereTierName($user->customer_tier)->orderBy('id','desc')->first();
        $user->tier = $tier;

        $active_venue_ids = Venu::wherePosVenueId($request->venue_pos_id)->where('status' , 'Active')->where('deleted_at' , null)->first();

        $user_assign_offers = UserAssignOffer::whereUserId($user->id)->whereOfferRedeem(0)->pluck('offer_id');

        $offers = Offer::where(function($query) use ($user_assign_offers, $active_venue_ids){
                $query->whereDeletedAt(null);
                $query->whereStatus('Active');
                $query->whereIn('id',$user_assign_offers);
                $query->whereDate('to_date','>=',Carbon::now()->toDateString());
                $query->whereIn('venu_id', $active_venue_ids);

            })->orWhere(function($query) use ($user_assign_offers, $active_venue_ids){
                $query->whereDeletedAt(null);
                $query->whereStatus('Active');
                $query->whereIn('id',$user_assign_offers);
                $query->where('offer_type','=','BirthdayOffer');
                $query->whereIn('venu_id', $active_venue_ids);
            })
            ->with('offerSetting','venu')
            ->get();

        $user->offers = $offers;


        // date_default_timezone_set($timezone);
         // date_default_timezone_set("UTC");
        $today_days = Carbon::now()->format('l');

        $active_badges = Badge::whereDeletedAt(null)->whereStatus('Active')->pluck('id');

        $user_assign_badge = AssignBadge::whereUserId($user->id)->whereDeletedAt(null)->whereStatus('Active')->whereDate('to_date','>=',Carbon::now()->toDateString())->whereDate('from_date','<=',Carbon::now()->toDateString())->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)->whereIn('badge_id', $active_badges)->with('badge')->get();
        $user->badges = $user_assign_badge;
        $now_time = Carbon::now();
        $time_after_10mins = Carbon::now()->addMinutes(10);
        $user->valid_time = $now_time->diffInSeconds($time_after_10mins);   //10 min = 600 secs 
        return $this->responseOk("User Data",['user_data' => $user]);
    }

    public function posPayBill(Request $request){

        $find_pos = LoginPose::wherePassword($request->password)->first();

        if(empty($find_pos)){
            return $this->responseWithErrorCode("Please enter valid password.",406);
        }

        $this->is_validationRule(Validation::posPayBillValidate($Validation = "", $message = "") , $request);

        $timezone = $request->timezone;
        $user_find = User::whereId($request->user_id)->orWhere('customer_id', '=', $request->user_id)->first();

        if(empty($user_find)){
            return $this->responseWithErrorCode("Please enter valid user id or customer id.",406);
        }

        


        $venue_find = Venu::wherePosVenueId($request->venue_pos_id)->first();

        $data = $request->all();
        $active_venue_id = Venu::where('status' , 'Active')->where('deleted_at' , null)->whereId($venue_find->id)->pluck('id');
        // date_default_timezone_set($data['timezone']);
         // date_default_timezone_set("UTC");

        
        $tier_find = TierCondition::whereTierName($user_find->customer_tier)->whereDeletedAt(null)->first();
        if(empty($tier_find)){
            $tier_find = TierCondition::whereDeletedAt(null)->first();
        }

        if(empty($tier_find)){
            return $this->responseWithErrorCode("No tier add from admin.",400);
        }


        if(isset($data['redeemed_amount'])){

            // if($data['redeemed_amount'] > $data['total_bill_amount']){
            //     return $this->responseWithErrorCode("Bill amount should be greater than or equal to redeem amount.",406);
            // }
            if($user_find->wallet_cash < $data['redeemed_amount']){
                return $this->responseWithErrorCode("Redeem amount should be less than or equal to wallet amount.",406);
            }

        }else{
            $data['redeemed_amount'] = 0;
        }
        // return $data['redeemed_amount'];

        if($user_find->deleted_at != null){
            return $this->responseWithErrorCode("User has been deleted by admin.",404);
        }else if($user_find->is_active == "Inactive"){
            return $this->responseWithErrorCode("User has been inactivated by admin.",404);
        }else if($user_find->is_block == 1){
            return $this->responseWithErrorCode("User has been blocked by admin.",404);
        }


        /*Check for duplicate  invoice number*/
        /*$check_days_for_repeat_invoice = GeneralSetting::whereUniqId(15)->first();

        if(empty($check_days_for_repeat_invoice)){

            $check_exists_invoice_number = WalletTransaction::whereVenuId($venue_find->id)->whereInvoiceNumber($request->invoice_number)->whereDeletedAt(null)->first();
        }else{
            $day_up_to = (int)$check_days_for_repeat_invoice->setting_content;
            $end_day = Carbon::now()->toDateString();
            $start_day = Carbon::now()->subDays($day_up_to)->toDateString();
            $check_exists_invoice_number = WalletTransaction::where(function($query) use ($start_day, $end_day, $request, $venue_find){
                    $query->whereVenuId($venue_find->id);
                    $query->whereInvoiceNumber($request->invoice_number);
                    $query->whereDeletedAt(null);
                    $query->whereDate('date_and_time', '>=', $start_day);
                    $query->whereDate('date_and_time', '<=', $end_day);
                })->first();

        }

        if(!empty($check_exists_invoice_number)){
            return $this->responseWithErrorCode("Invoice number already exists.",406); 
        }*/

        /*End*/

        $transaction_amount_check_last_days = 30;
        $customer_tier_validity_check = 30;
        $tier_setting = TierSetting::first();
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
                                    })->sum('total_bill_amount');

        $total_amount_transaction = $total_amount_transaction + $data['total_bill_amount'];

        $amount_between_tier_find = TierCondition::whereDeletedAt(null)->where('from_amount', '<=', $total_amount_transaction)->where('to_amount', '>=', $total_amount_transaction)->first();
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

                    return $this->responseWithErrorCode("No tier add from admin.",400);
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


        $data['description'] = "Redeemed Earnings";

        $data['date_and_time'] = Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString();
        $today_date = Carbon::now();
        $dt = new DateTime($today_date);
        $tz = new DateTimeZone('Asia/Dubai');
        $dt->setTimezone($tz);
        $today_date = $dt->format('Y-m-d');
        $today_time = $dt->format('H:i:s');
        $today_days = Carbon::now()->format('l');
        $find_promotion_cashback = Cashback::where(function($query) use ($user_find,$today_date,$active_venue_id,$today_days,$today_time){
                        $query->whereDeletedAt(null);
                        $query->whereDate('from_date', '<=', $today_date);
                        $query->whereDate('to_date','>=', $today_date);
                        $query->whereTime('from_time', '<=', $today_time);
                        $query->whereTime('to_time','>=', $today_time);
                        $query->where('venu_id', $active_venue_id); 
                        $query->whereRaw("FIND_IN_SET(?, day_on) > 0", $today_days);
                        $query->where("status","=","Active");
                    })->first();

        // return $find_promotion_cashback;
        if(!empty($find_promotion_cashback)){
            $data['cashback_percentage'] = $find_promotion_cashback->cashback_percentage;
        }else{
            $data['cashback_percentage'] = $tier_find->percentage;
        }
        $data['cashback_earned'] = ($data['total_bill_amount'] / 100) * $data['cashback_percentage'];

        if(empty($data['redeemed_amount'])){

            $data['pay_bill_amount'] = $data['total_bill_amount'];
        }else{

            $data['pay_bill_amount'] = $data['total_bill_amount'] - $data['redeemed_amount'];
        }

        $redeemed_wallet_amount_user = $user_find->wallet_cash - $data['redeemed_amount'];

        $data['venu_id'] = $venue_find->id;

        if(!empty($data['verify_offer_ids'])){
            $find_offer_id =  Offer::wherePosProductId($data['verify_offer_ids'])->first();
            if($find_offer_id){
                $user_assign_offer = UserAssignOffer::whereUserId($user_find->id)->whereOfferId($find_offer_id->id)->whereOfferRedeem(0)->first();

                if($user_assign_offer){
                    $user_assign_offer->offer_redeem = 1;
                    $user_assign_offer->update();
                    $data['offer_product_ids'] = $find_offer_id->id;
                }else{
                    return $this->responseWithErrorCode("Offer not applicable for you.",406);
                }


            }
        }
        
        /*Second Entry in wallet transaction table for redeemed*/
        if($data['redeemed_amount'] > 0){
            $wallet_detail1 = new WalletDetail();
            $wallet_detail1->user_id = $user_find->id;
            $wallet_detail1->description = "Redeemed Earnings";
            $wallet_detail1->redeemed_amount = $data['redeemed_amount'];
            $wallet_detail1->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
            $wallet_detail1->type_of_transaction = "Redeem";
            $wallet_detail1->user_wallet_cash = $user_find->wallet_cash - $data['redeemed_amount'];
            $wallet_detail1->save();
        }


        // if($data['total_bill_amount'] == 0){
            $data['is_cross_verify'] = 3;
        // }
        $data['description'] = "Cash Back Earnings";
        $wallet_transaction = new WalletTransaction();
        $data['user_id'] = $user_find->id;
        $data['user_wallet_cash'] = $user_find->wallet_cash - $data['redeemed_amount'] + $data['cashback_earned'];
        $data['check_amount_pos'] = $data['total_bill_amount'];
        $wallet_transaction->fill($data);
        $wallet_transaction->save();

        /*Second Entry in wallet transaction table for cashback*/
        $wallet_detail2 = new WalletDetail();
        $wallet_detail2->user_id = $user_find->id;
        $wallet_detail2->description = "Cash Back Earnings";
        $wallet_detail2->cashback_earned = $data['cashback_earned'];
        $wallet_detail2->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
        $wallet_detail2->type_of_transaction = "Cashback";
        $wallet_detail2->user_wallet_cash = $user_find->wallet_cash - $data['redeemed_amount'] + $data['cashback_earned'];
        $wallet_detail2->save();

        $user_find->wallet_cash = $user_find->wallet_cash - $data['redeemed_amount'] + $data['cashback_earned'];
        $user_find->update();

        if(isset($data['offer_product_ids']) && !empty($data['offer_product_ids'])){
            // $offer_ids = explode(",", $data['verify_offer_ids']);
            // foreach ($offer_ids as $offer_id) {
                UserAssignOffer::whereUserId($user_find->id)->whereOfferId($data['offer_product_ids'])->update(['offer_redeem' => 1]);
            // }
        }
        // return UserAssignOffer::whereUserId($user_find->id)->whereOfferId($data['offer_product_ids'])->get();


        $admin_transaction_notification = AdminNotification::where("uniq_id","=",1)->first();
        $admin_refer_notification = AdminNotification::where("uniq_id","=",4)->first();
        $admin_cashback_notification = AdminNotification::where("uniq_id","=",2)->first();

        if(!empty($admin_transaction_notification) && !empty($admin_cashback_notification)){


            $push_type = 0;
            $sms_type = 0;
            $email_type = 0;
            if($admin_transaction_notification->push_type == 1){
                $push_type = 1;
                if($admin_cashback_notification->push_type == 1){
                    if($data['cashback_earned'] > 0){
                        $message_text = $admin_transaction_notification->message." Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. \n".$admin_cashback_notification->message;
                    }else{
                        $push_type = 0;
                    }
                }else{
                    $message_text = $admin_transaction_notification->message;
                }

            }elseif($admin_cashback_notification->push_type == 1){
                $push_type = 1;
                if($admin_transaction_notification->push_type == 1){
                    if($data['cashback_earned'] > 0){
                        $message_text = $admin_transaction_notification->message." Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. \n".$admin_cashback_notification->message;
                    }else{
                        $push_type = 0;
                    }
                }else{
                    $message_text = $admin_cashback_notification->message;
                }

            }
            if($push_type == 1){
                if($user_find->device_type == 'Android'){
                    if($user_find->device_token && strlen($user_find->device_token) > 20){

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
                        $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                       $android_notify =  $this->send_android_notification_new($user_find->device_token, $message_text, $notmessage = "Transaction Notification", $noti_type = 1,null,null,$total_noti_record);

                       $criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $message_text,
                            'noti_type' => 1
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                   
                   }
                }

                if($user_find->device_type == 'Ios' && strlen($user_find->device_token) > 20){
                    if($user_find->device_token){

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
                        $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                        $ios_notify =  $this->iphoneNotification($user_find->device_token, $message_text, $notmessage = "Transaction Notification", $noti_type = 1,null,null,$total_noti_record);

                        $criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $message_text,
                            'noti_type' => 1
                        ];
                        AdminCriteriaNotification::create($criteria_data);

                        /*$criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $admin_cashback_notification->message,
                            'noti_type' => 1
                       ];
                       AdminCriteriaNotification::create($criteria_data);*/
                    
                   }
                }

            }

            if($admin_transaction_notification->sms_type == 1){
                $sms_type = 1;
                if($admin_cashback_notification->sms_type == 1){
                    if($data['cashback_earned'] > 0){
                        $message_text = $admin_transaction_notification->message." Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. \n".$admin_cashback_notification->message;
                    }else{
                        $sms_type = 0;
                    }
                }else{
                    $message_text = $admin_transaction_notification->message;
                }
                
            }elseif($admin_cashback_notification->sms_type == 1){
                $sms_type = 1;
                if($admin_transaction_notification->sms_type == 1){
                    if($data['cashback_earned'] > 0){
                    $message_text = $admin_transaction_notification->message." Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. \n".$admin_cashback_notification->message;
                    }else{
                        $sms_type = 0;
                    }
                }else{
                    $message_text = $admin_cashback_notification->message;
                }
                
            }

            if($sms_type == 1){
                \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                $sms = new \SMSGlobal\Resource\Sms();
                // $message = $admin_transaction_notification->message;
                try {
                    $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message_text,'CM-Society');
                } catch (\Exception $e) {
                    
                }
            }

            if($admin_transaction_notification->email_type == 1){
                $email_type = 1;
                if($admin_cashback_notification->email_type == 1){
                    if($data['cashback_earned'] > 0){
                        $message_text = $admin_transaction_notification->message." Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. \n".$admin_cashback_notification->message;
                    }else{
                        $email_type = 0;
                    }
                }else{
                    $message_text = $admin_transaction_notification->message;
                }
                
            }elseif($admin_cashback_notification->email_type == 1){
                $email_type = 1;
                if($admin_transaction_notification->email_type == 1){
                    if($data['cashback_earned'] > 0){
                        $message_text = $admin_transaction_notification->message." Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. \n".$admin_cashback_notification->message;
                    }else{
                        $email_type = 0;
                    }
                }else{
                    $message_text = $admin_cashback_notification->message;
                }
                
            }

            if($email_type == 1){
                $admin_transaction_notification->message = $message_text;
                try{
                    \Mail::to($user_find->email)->send(new TransactionEmail($admin_transaction_notification, $user_find));
                }catch(\Exception $ex){
                    return $ex->getMessage();
                }
            }

            /*if($admin_cashback_notification->sms_type == 1){
                \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                $sms = new \SMSGlobal\Resource\Sms();
                $message = $admin_cashback_notification->message;
                try {
                    $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message,'CM-Society');
                } catch (\Exception $e) {
                    
                }
            }*/

            /*if($admin_cashback_notification->email_type == 1){
                $message = $admin_cashback_notification->message;
                try{
                    \Mail::to($user_find->email)->send(new CashbackEmail($admin_cashback_notification, $user_find, $admin_cashback_notification->message));
                }catch(\Exception $ex){
                    //return $ex->getMessage();
                }
            }*/
        }

        $refer_user_find = null;
        if(!empty($user_find->reference_code) && $user_find->refer_amount_used == 0){

            $refer_user_find = User::whereSelfReferenceCode($user_find->reference_code)->whereDeletedAt(null)->where('is_block','=',0)->first();


        }
        if(!empty($admin_refer_notification) && !empty($refer_user_find)){

            $admin_refer_notification->message = "Congratulations you have earned referral bonus of ".$user_find->refer_amount." AED. ".$admin_refer_notification->message;

            $user_find->refer_amount_used = 1;
            $user_find->update();

            $refer_user_find->wallet_cash = $refer_user_find->wallet_cash + $user_find->refer_amount;
            $refer_user_find->update();

            $wallet_transaction3 = new WalletTransaction();
            $wallet_transaction3->user_id = $refer_user_find->id;
            $wallet_transaction3->venu_id = $venue_find->id;
            $wallet_transaction3->description = "Referral Earnings";
            $wallet_transaction3->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
            $wallet_transaction3->type_of_transactions = "Refer";
            $wallet_transaction3->refer_amount = $user_find->refer_amount;
            $wallet_transaction3->wallet_amount_user = $refer_user_find->wallet_cash;
            $wallet_transaction2->save();


            if($admin_refer_notification->push_type == 1){

                if($refer_user_find->device_type == 'Android'){
                    if($refer_user_find->device_token && strlen($refer_user_find->device_token) > 20){

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
                        $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                       $android_notify =  $this->send_android_notification_new($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4,null,null,$total_noti_record);

                       $criteria_data = [
                            'user_id'   => $refer_user_find->id,
                            'message'   => $admin_refer_notification->message,
                            'noti_type' => 4
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                   
                   }
                }

                if($refer_user_find->device_type == 'Ios' && strlen($refer_user_find->device_token) > 20){
                    if($refer_user_find->device_token){

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
                        $total_noti_record = NotiRecord::whereUserId($refer_user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                        $ios_notify =  $this->iphoneNotification($refer_user_find->device_token, $admin_refer_notification->message, $notmessage = "Referral Bonus Notification", $noti_type = 4,null,null,$total_noti_record);

                        $criteria_data = [
                            'user_id'   => $refer_user_find->id,
                            'message'   => $admin_refer_notification->message,
                            'noti_type' => 4
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                    
                   }
                }

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
                try{
                    \Mail::to($refer_user_find->email)->send(new ReferralEmail($admin_refer_notification, $refer_user_find));
                }catch(\Exception $ex){
                    //return $ex->getMessage();
                }
            }

            
        }









        /*if(!empty($admin_cashback_notification)){

            $admin_cashback_notification->message = "Congratulations you have earned cashback amount of ".$data['cashback_earned']." AED. ".$admin_cashback_notification->message;

            if($admin_cashback_notification->push_type == 1){

                if($user_find->device_type == 'Android'){
                    if($user_find->device_token && strlen($user_find->device_token) > 20){

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
                        $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                       $android_notify =  $this->send_android_notification_new($user_find->device_token, $admin_cashback_notification->message, $notmessage = "Cashback Notification", $noti_type = 1,null,null,$total_noti_record);

                       $criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $admin_cashback_notification->message,
                            'noti_type' => 1
                       ];
                       AdminCriteriaNotification::create($criteria_data);
                   
                   }
                }

                if($user_find->device_type == 'Ios' && strlen($user_find->device_token) > 20){
                    if($user_find->device_token){

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
                        $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                        $ios_notify =  $this->iphoneNotification($user_find->device_token, $admin_cashback_notification->message, $notmessage = "Cashback Notification", $noti_type = 1,null,null,$total_noti_record);

                        $criteria_data = [
                            'user_id'   => $user_find->id,
                            'message'   => $admin_cashback_notification->message,
                            'noti_type' => 1
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                    
                   }
                }

            }

            if($admin_cashback_notification->sms_type == 1){
                \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                $sms = new \SMSGlobal\Resource\Sms();
                $message = $admin_cashback_notification->message;
                try {
                    $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message,'CM-Society');
                } catch (\Exception $e) {
                    
                }
            }

            if($admin_cashback_notification->email_type == 1){
                $message = $admin_cashback_notification->message;
                try{
                    \Mail::to($user_find->email)->send(new CashbackEmail($admin_cashback_notification, $user_find, $admin_cashback_notification->message));
                }catch(\Exception $ex){
                    //return $ex->getMessage();
                }
            }
        }*/

        return $this->responseOk("Payment has been successfully processed.");






    }
}
