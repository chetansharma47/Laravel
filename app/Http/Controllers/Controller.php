<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Http\Controllers\Api\v1\ResponseController;
use Illuminate\Http\Request;
use App\Models\UserAssignOffer;
use App\Models\Offer;
use App\Models\OfferSetting;
use App\Models\City;
use App\User;
use DB;
use Carbon\Carbon;
use App\Validation;
use App\Models\WalletTransaction;
use App\Models\TierCondition;
use App\Models\TierSetting;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;
use App\Models\Country;
use App\Models\Venu;
use App\Models\WalletDetail;
use App\Models\Event;
use App\Models\EventSentNotification;
use App\Models\NotiRecord;
use App\Models\AssignBadge;
use App\Models\Badge;
use App\Mail\CashbackEmail;
use App\Jobs\OfferNotificationJob;
use App\Jobs\MultipleEventsJobSendMail;
use App\Jobs\WeeklyVerifyMail;
use App\Jobs\UserAssignBadgeJob;
use App\Mail\OfferAssignMail;
use App\Mail\ChangeEmailAddress;
use App\Mail\MultipleEventCroneMailSend;
use App\Mail\UserVerifyMail;
use App\Mail\AssignBadgeMail;
use Illuminate\Support\Arr;
// date_default_timezone_set("Asia/Kolkata");
 date_default_timezone_set("UTC");
// date_default_timezone_set('Asia/Dubai');
require_once $_SERVER['DOCUMENT_ROOT'].'/vendor/autoload.php';

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function responseOk($message, $data = null)
    {
        $response = [
            'result'  => 'Success',
            'message' => $message,
        ];

        $data ? $response['data'] = $data : null;
        http_response_code(200);
        echo json_encode($response); exit;
    }

    public function OfferAssignUserCronJob(Request $request){
        $today_date = Carbon::now();
        $active_venue_ids = Venu::whereDeletedAt(null)->where('status','=','Active')->pluck('id');
        /*Change Logical*/
        $pluck_offer_ids = OfferSetting::where(function($query) use ($today_date){
                            $query->whereDate('date','=',$today_date->toDateString());
                            $query->where('offer_type','!=','BirthdayOffer');
                            $query->whereDeletedAt(null);
                        })->orWhere(function($query) use ($today_date){
                            $query->where('offer_type','=','BirthdayOffer');
                            $query->whereDeletedAt(null);
                        })->pluck('offer_id');

        $offers = Offer::whereIn('id', $pluck_offer_ids)->whereIn('venu_id', $active_venue_ids)->whereDeletedAt(null)->where('status','=','Active')->with('offerSetting')->get();
        // return $offers;

        foreach ($offers as $offer){

         //  return $offer;
            if(!empty($offer->offerSetting->city_id) && !empty($offer->offerSetting->gender)){
                $find_city_name = City::select('city_name')->whereId($offer->offerSetting->city_id)->first();
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->whereCityOfResidence($find_city_name->city_name)->where('gender','=',$offer->offerSetting->gender)->whereDeletedAt(null)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();

            }
            if(!empty($offer->offerSetting->city_id) && empty($offer->offerSetting->gender)){

                $find_city_name = City::select('city_name')->whereId($offer->offerSetting->city_id)->first();
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->whereCityOfResidence($find_city_name->city_name)->whereDeletedAt(null)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();

            }
            if(empty($offer->offerSetting->city_id) && !empty($offer->offerSetting->gender)){
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->where('gender','=',$offer->offerSetting->gender)->whereDeletedAt(null)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }

            if(empty($offer->offerSetting->city_id) && empty($offer->offerSetting->gender)){
                //both are empty
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->whereDeletedAt(null)->where('is_block','=',0)->where("is_active", "=", 'Active')->get();
            }


           // return $user_match_with_offers;

            foreach ($user_match_with_offers as $user_match_with_offer){

                // return $user_match_with_offer;
                $current_year = Carbon::now()->format('Y');

                $user_assign_offers = UserAssignOffer::where(function($query) use ($user_match_with_offer, $offer){
                                            $query->where('user_id',$user_match_with_offer->id);
                                            $query->where('offer_id',$offer->id);
                                            $query->where('offer_redeem',1);
                                        })->orWhere(function($query) use ($user_match_with_offer, $offer){
                                            $query->where('user_id',$user_match_with_offer->id);
                                            $query->where('offer_id',$offer->id);
                                            $query->where('assign_at', Carbon::now()->toDateString());
                                        })->first();

                                            // $query->where('assign_at', Carbon::now()->toDateString());
                                        // })->first();

                // $user_assign_offers = UserAssignOffer::whereUserId($user_match_with_offer->id)->whereOfferId($offer->id)->whereAssignAt(Carbon::now()->toDateString())->first();

                $user_assign_birthday_offers = UserAssignOffer::where('user_id',$user_match_with_offer->id)->whereOfferId($offer->id)->whereYear('assign_at',Carbon::now()->toDateString())->first();

                $assign_offer = 0;


                if($offer->offer_type == "BirthdayOffer"){
                    if(!empty($user_assign_birthday_offers)){
                        if($user_assign_birthday_offers->offer_redeem == 1){
                            $assign_offer = 1;
                        }else{
                            $user_assign_birthday_offers->delete();
                            $assign_offer = 0;
                        }
                    }
                    // $user_assign_birthday_offers = UserAssignOffer::where('user_id',$user_match_with_offer->id)->whereOfferId($offer->id)->whereYear('assign_at',Carbon::now()->format('Y'))->first();
                    if($assign_offer == 0){
                    $dob_month = Carbon::parse($user_match_with_offer->dob)->format('m');
                    $dob_date = Carbon::parse($user_match_with_offer->dob)->format('d');
                    $current_month = Carbon::now()->format('m');
                    $current_date = Carbon::now()->format('d');
                    if($dob_month == $current_month && $dob_date == $current_date){
                        $offer_assign = new UserAssignOffer();
                        $offer_assign->offer_id = $offer->id;
                        $offer_assign->offer_setting_id = $offer->offerSetting->id;
                        $offer_assign->user_id = $user_match_with_offer->id;
                        $offer_assign->city_id = $offer->offerSetting->city_id;
                        $offer_assign->dob = $offer->offerSetting->dob;
                        $offer_assign->gender = $offer->offerSetting->gender;
                        $offer_assign->date = $offer->offerSetting->date;
                        $offer_assign->assign_at = Carbon::now()->toDateString();
                        $offer_assign->txn_start_period = $offer->offerSetting->txn_start_period;
                        $offer_assign->txn_end_period = $offer->offerSetting->txn_end_period;
                        $offer_assign->txn_amount_condition = $offer->offerSetting->txn_amount_condition;
                        $offer_assign->from_price = $offer->offerSetting->from_price;
                        $offer_assign->to_price = $offer->offerSetting->to_price;
                        $offer_assign->offer_type = $offer->offerSetting->offer_type;
                        $offer_assign->save();


                        $admin_offer_notification = AdminNotification::where("uniq_id","=",6)->first();

                        if(!empty($admin_offer_notification)){

                            if($admin_offer_notification->email_type == 1){

                                $notificationJob = (new OfferNotificationJob($admin_offer_notification, $offer_assign, $user_match_with_offer, $offer))->delay(Carbon::now()->addSeconds(3));
                                dispatch($notificationJob);
                            }



                            if($admin_offer_notification->push_type == 1){

                                if($user_match_with_offer->device_type == 'Android'){
                                    if($user_match_with_offer->device_token && strlen($user_match_with_offer->device_token) > 20){

                                        $noti_record_find = NotiRecord::whereUserId($user_match_with_offer->id)->first();

                                        if(empty($noti_record_find)){
                                            $save_noti_record = new NotiRecord();
                                            $save_noti_record->user_id = $user_match_with_offer->id;
                                            $save_noti_record->offer = 1;
                                            $save_noti_record->save();

                                        }else{
                                            $noti_record_find->offer = $noti_record_find->offer + 1;
                                            $noti_record_find->update();
                                        }
                                        $total_noti_record = NotiRecord::whereUserId($user_match_with_offer->id)->sum(DB::raw('wallet + offer + event + normal'));
                                       $android_notify =  $this->send_android_notification_new($user_match_with_offer->device_token, "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id,$total_noti_record);

                                        $criteria_data = [
                                            'user_id'   => $user_match_with_offer->id,
                                            'message'   => "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
                                            'noti_type' => 6,
                                            'offer_id'  => $offer_assign->offer_id
                                        ];
                                        AdminCriteriaNotification::create($criteria_data);
                                   
                                   }
                                }

                                if($user_match_with_offer->device_type == 'Ios' && strlen($user_match_with_offer->device_token) > 20){
                                    if($user_match_with_offer->device_token){

                                        $noti_record_find = NotiRecord::whereUserId($user_match_with_offer->id)->first();

                                        if(empty($noti_record_find)){
                                            $save_noti_record = new NotiRecord();
                                            $save_noti_record->user_id = $user_match_with_offer->id;
                                            $save_noti_record->offer = 1;
                                            $save_noti_record->save();

                                        }else{
                                            $noti_record_find->offer = $noti_record_find->offer + 1;
                                            $noti_record_find->update();
                                        }
                                        $total_noti_record = NotiRecord::whereUserId($user_match_with_offer->id)->sum(DB::raw('wallet + offer + event + normal'));
                                        $ios_notify =  $this->iphoneNotification($user_match_with_offer->device_token, "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id,$total_noti_record);

                                        $criteria_data = [
                                            'user_id'   => $user_match_with_offer->id,
                                            'message'   => "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
                                            'noti_type' => 6,
                                            'offer_id'  => $offer_assign->offer_id
                                        ];
                                        AdminCriteriaNotification::create($criteria_data);
                                    
                                   }
                                }

                            }

                            if($admin_offer_notification->sms_type == 1){
                                \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                                $sms = new \SMSGlobal\Resource\Sms();
                                $message = "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message;
                                try {
                                    $response = $sms->sendToOne($user_match_with_offer->country_code.$user_match_with_offer->mobile_number, $message,'AD-MSociety');
                                } catch (\Exception $e) {
                                    continue;
                                }
                            }



                        }
                    }
                    }
                }else{

                    if(empty($user_assign_offers)){

                        $is_save = 1;


                        if(!empty($offer->offerSetting->txn_start_period) && !empty($offer->offerSetting->txn_end_period)){

                            $total_amount_transaction = WalletTransaction::where(function($query) use ($user_match_with_offer,$offer){
                                    $query->whereUserId($user_match_with_offer->id);
                                    $query->whereDate('created_at','>=',$offer->offerSetting->txn_start_period);
                                    $query->whereDate('created_at','<=',$offer->offerSetting->txn_end_period);
                                })->sum('total_bill_amount');

                            if($offer->offerSetting->txn_amount_condition == "Greater Than"){

                                if($total_amount_transaction < $offer->offerSetting->from_price){
                                    $is_save = 0;
                                }

                            }else if($offer->offerSetting->txn_amount_condition == "Between"){
                                if($total_amount_transaction >= $offer->offerSetting->from_price && $total_amount_transaction <= $offer->offerSetting->to_price){

                                }else{
                                    $is_save = 0;
                                }
                            }

                        }

                        if($is_save == 1){

                            $offer_assign = new UserAssignOffer();
                            $offer_assign->offer_id = $offer->id;
                            $offer_assign->offer_setting_id = $offer->offerSetting->id;
                            $offer_assign->user_id = $user_match_with_offer->id;
                            $offer_assign->city_id = $offer->offerSetting->city_id;
                            $offer_assign->dob = $offer->offerSetting->dob;
                            $offer_assign->gender = $offer->offerSetting->gender;
                            $offer_assign->date = $offer->offerSetting->date;
                            $offer_assign->assign_at = Carbon::now()->toDateString();
                            $offer_assign->txn_start_period = $offer->offerSetting->txn_start_period;
                            $offer_assign->txn_end_period = $offer->offerSetting->txn_end_period;
                            $offer_assign->txn_amount_condition = $offer->offerSetting->txn_amount_condition;
                            $offer_assign->from_price = $offer->offerSetting->from_price;
                            $offer_assign->to_price = $offer->offerSetting->to_price;
                            $offer_assign->offer_type = $offer->offerSetting->offer_type;
                            $offer_assign->save();

                            // return $offer_assign;

                            $admin_offer_notification = AdminNotification::where("uniq_id","=",6)->first();

                            if(!empty($admin_offer_notification)){

                                if($admin_offer_notification->email_type == 1){

                                    $notificationJob = (new OfferNotificationJob($admin_offer_notification, $offer_assign, $user_match_with_offer, $offer))->delay(Carbon::now()->addSeconds(3));
                                    dispatch($notificationJob);
                                }


                                if($admin_offer_notification->push_type == 1){

                                    if($user_match_with_offer->device_type == 'Android'){
                                        if($user_match_with_offer->device_token && strlen($user_match_with_offer->device_token) > 20){

                                            $noti_record_find = NotiRecord::whereUserId($user_match_with_offer->id)->first();

                                            if(empty($noti_record_find)){
                                                $save_noti_record = new NotiRecord();
                                                $save_noti_record->user_id = $user_match_with_offer->id;
                                                $save_noti_record->offer = 1;
                                                $save_noti_record->save();

                                            }else{
                                                $noti_record_find->offer = $noti_record_find->offer + 1;
                                                $noti_record_find->update();
                                            }
                                            $total_noti_record = NotiRecord::whereUserId($user_match_with_offer->id)->sum(DB::raw('wallet + offer + event + normal'));
                                           $android_notify =  $this->send_android_notification_new($user_match_with_offer->device_token, "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id,$total_noti_record);

                                            $criteria_data = [
                                                'user_id'   => $user_match_with_offer->id,
                                                'message'   => "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
                                                'noti_type' => 6,
                                                'offer_id'  => $offer_assign->offer_id
                                            ];
                                            AdminCriteriaNotification::create($criteria_data);
                                       
                                       }
                                    }

                                    if($user_match_with_offer->device_type == 'Ios' && strlen($user_match_with_offer->device_token) > 20){
                                        if($user_match_with_offer->device_token){

                                            $noti_record_find = NotiRecord::whereUserId($user_match_with_offer->id)->first();

                                            if(empty($noti_record_find)){
                                                $save_noti_record = new NotiRecord();
                                                $save_noti_record->user_id = $user_match_with_offer->id;
                                                $save_noti_record->offer = 1;
                                                $save_noti_record->save();

                                            }else{
                                                $noti_record_find->offer = $noti_record_find->offer + 1;
                                                $noti_record_find->update();
                                            }
                                            $total_noti_record = NotiRecord::whereUserId($user_match_with_offer->id)->sum(DB::raw('wallet + offer + event + normal'));
                                            $ios_notify =  $this->iphoneNotification($user_match_with_offer->device_token, "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id,$total_noti_record);

                                            $criteria_data = [
                                                'user_id'   => $user_match_with_offer->id,
                                                'message'   => "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
                                                'noti_type' => 6,
                                                'offer_id'  => $offer_assign->offer_id
                                            ];
                                            AdminCriteriaNotification::create($criteria_data);
                                        
                                       }
                                    }

                                }

                                if($admin_offer_notification->sms_type == 1){
                                    \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                                    $sms = new \SMSGlobal\Resource\Sms();
                                    $message = "Special Offer: ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message;
                                    try {
                                        $response = $sms->sendToOne($user_match_with_offer->country_code.$user_match_with_offer->mobile_number, $message,'AD-MSociety');
                                    } catch (\Exception $e) {
                                        continue;
                                    }
                                }
                            }
                        }

                    }
                }


            }
            
        }
            return $this->responseOk('Offer Assign', ['message' => 'Offer assigned successfully']);
        /*End*/
    }


     public  function iphoneNotification($device_token,$message,$notfy_message, $noti_type = "", $event_id = "", $offer_id = "", $total_noti_record = ""){
        $PATH = public_path('pemfile/user_push.pem');
        $deviceToken = $device_token;
        
            
        $body['title'] = $message;
        $body['Notifykey'] = $notfy_message;
        $body['noti_type'] = $noti_type;
        $body['event_id'] = $event_id;
        $body['offer_id'] = $offer_id;
        $body['aps'] =  array(
                          'alert' => $message,
                          'badge' => (int)$total_noti_record,
                          'sound' => 'default',
                          'details'=>$body,
                        );
        $pem_file       = $PATH;
        $pem_secret     = '123456';
        $apns_topic     = 'com.captial.motion.user';

        $sample_alert = json_encode($body);
        // $url = "https://api.development.push.apple.com/3/device/$deviceToken"; //development
        $url = "https://api.push.apple.com/3/device/$deviceToken"; //production

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $sample_alert);
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("apns-topic: $apns_topic"));
        curl_setopt($ch, CURLOPT_SSLCERT, $pem_file);
        curl_setopt($ch, CURLOPT_SSLCERTPASSWD, $pem_secret);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

        // if($httpcode == 410){
        //     die('Curl failed: ' . curl_error($ch));
        // }
        // $httpcode = curl_getinfo($ch);
        // $curl_errno= curl_errno($ch);

        curl_close($ch);
        $result = "success";
        return $result;
    }

    public function send_android_notification_new($deviceToken,$message,$notfy_message='',$noti_type = "",$event_id = "", $offer_id = "", $total_noti_record = "") {
        if (!defined('API_ACCESS_KEY')) {
          define('API_ACCESS_KEY' ,'AAAA_gAB8Yc:APA91bHy0nP46e5z6WNb4GDmSbmgDlLJhZvll1jOdPLUuJ57ypebWPynuk80IAF6rvRhO44rzVMbgFCFV_rVOxdTNHFQMEuKe2IG6nDMo9FbGM8fAUQlwBt7eik0NunvLAnKlsQGVMK1');
        }
        // print_r($type); die;

        $not_message = array('sound' =>1,
                    'message'=>array("noti_type" => $noti_type, "badge_count" => (int)$total_noti_record, "event_id" => $event_id, "offer_id" => $offer_id, 'message' => $message),
                    'notifykey'=>"HOME_KEY",
                    //"title" => "SocietyApp",
                    'body'=>$message,
                  );

        $registrationIds = $deviceToken;

        $fields = array(
          'registration_ids' => array($registrationIds),
         // 'notification' => $not_message,
          'alert' => $message,
          'sound' => 'default',
          'Notifykey' => $noti_type,
          "click_action" => "HOME_KEY",
          'data' => $not_message,
          "android" => (object)array("priority" => "high")
        );
        $headers = array(
          'Authorization: key=' . API_ACCESS_KEY,
          'Content-Type: application/json'
        );

        //print_r(json_encode($fields)); die;

        $ch = curl_init();
        curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
        curl_setopt( $ch,CURLOPT_POST, true );
        curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
        curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
        curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
        
        curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode($fields) );
        $result = curl_exec($ch);

        if($result == FALSE) {
          die('Curl failed: ' . curl_error($ch));
        }

        curl_close( $ch );

        return  $result;
    }

    /*public function transferToWallet(Request $request){
        
        date_default_timezone_set("Asia/Kolkata");
            
        $WalletTransaction = WalletTransaction::where('is_cross_verify','=',0)->get();
        $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();
        foreach ($WalletTransaction as $WalletTransaction) {
            $find_user = User::whereId($WalletTransaction->user_id)->where('is_block','=',0)->first();
            $find_user->wallet_cash = $find_user->wallet_cash + $WalletTransaction->cashback_earned;
            $find_user->update();
            $WalletTransaction->is_cross_verify = 1;
            $WalletTransaction->update();

            if(!empty($admin_cashback_notification_find)){
                if($admin_cashback_notification_find->push_type == 1){

                    if($find_user->device_type == 'Android'){
                        if($find_user->device_token && strlen($find_user->device_token) > 20){
                           $android_notify =  $this->send_android_notification_new($find_user->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2);
                            $criteria_data = [
                                'user_id'   => $find_user->id,
                                'message'   => $admin_cashback_notification_find->message,
                                'noti_type' => 2,
                                'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
                            ];
                            AdminCriteriaNotification::create($criteria_data);
                       
                       }
                    }

                    if($find_user->device_type == 'Ios' && strlen($find_user->device_token) > 20){
                        if($find_user->device_token){
                            $ios_notify =  $this->iphoneNotification($find_user->device_token, $admin_cashback_notification_find->message, $notmessage = "Cashback Notification", $noti_type = 2);
                            $criteria_data = [
                                'user_id'   => $find_user->id,
                                'message'   => $admin_cashback_notification_find->message,
                                'noti_type' => 2,
                                'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                                'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
                            ];
                            AdminCriteriaNotification::create($criteria_data);
                        
                       }
                    }

                }

                if($admin_cashback_notification_find->sms_type == 1){
                    \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                    $sms = new \SMSGlobal\Resource\Sms();
                    $message = $admin_cashback_notification_find->message;
                    try {
                        $response = $sms->sendToOne($find_user->country_code.$find_user->mobile_number, $message,'CM-Society');
                    } catch (\Exception $e) {
                        
                    }
                }

                if($admin_cashback_notification_find->email_type == 1){
                    try{
                        \Mail::to($find_user->email)->send(new CashbackEmail($admin_cashback_notification_find, $find_user));
                    }catch(\Exception $ex){
                        //return $ex->getMessage();
                    }
                }                
            }
        }

        // return "success";
        return $this->responseOk('Cashback Transafer to wallet', ['message' => 'Cahback transfer successfully']);
    } */

    public function eventNotificationCronJob(Request $request){
        $admin_event_notification = AdminNotification::where("uniq_id","=",5)->first();
        $today_days = Carbon::now()->format('l');
        $events = Event::whereDeletedAt(null)
                //->whereDate('from_date','<=',Carbon::now()->toDateString())
                ->whereDate('to_date','>=',Carbon::now()->toDateString())
                ->where('status','=','Active')
                ->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)
                ->get();

        $users = User::whereDeletedAt(null)->where('is_block','=',0)->where("is_active", "=", 'Active')->pluck('id');

        if(count($events) > 0){

            foreach ($users as $user_id) {
                $user_find = User::find($user_id);

                $event_ids = Arr::pluck($events, "id");
                $assign_events = EventSentNotification::whereUserId($user_find->id)->whereIn("event_id", $event_ids)->pluck("event_id");
                $events_getting = Event::whereIn("id", $event_ids)->whereNotIn("id", $assign_events)->get();

                foreach ($events as $find_event) {

                    $check_already_send_noti = EventSentNotification::whereEventId($find_event->id)->whereUserId($user_find->id)->first();

                    if(empty($check_already_send_noti)){

                        if($admin_event_notification->push_type == 1 || $admin_event_notification->sms_type == 1 || $admin_event_notification->email_type == 1){
                            $save_email_sent_noti = new EventSentNotification();
                            $save_email_sent_noti->event_id = $find_event->id;
                            $save_email_sent_noti->user_id = $user_find->id;
                            $save_email_sent_noti->save();
                        }

                        if($admin_event_notification->push_type == 1){

                            if($user_find->device_type == 'Android'){
                                if($user_find->device_token && strlen($user_find->device_token) > 20){

                                    $noti_record_find = NotiRecord::whereUserId($user_find->id)->first();

                                    if(empty($noti_record_find)){
                                        $save_noti_record = new NotiRecord();
                                        $save_noti_record->user_id = $user_find->id;
                                        $save_noti_record->event = 1;
                                        $save_noti_record->save();

                                    }else{
                                        $noti_record_find->event = $noti_record_find->event + 1;
                                        $noti_record_find->update();
                                    }
                                    $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                   // $android_notify =  $this->send_android_notification_new($user_find->device_token, "Upcoming Events: ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,"Event Create Notification", $noti_type = 5, $event_id = $find_event->id,null,$total_noti_record);
                                    $android_notify =  $this->send_android_notification_new($user_find->device_token, $admin_event_notification->message,"Event Create Notification", $noti_type = 5, $event_id = $find_event->id,null,$total_noti_record);

                                    $criteria_data = [
                                        'user_id'   => $user_find->id,
                                        // 'message'   => "Upcoming Events: ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,
                                        'message'   => $admin_event_notification->message,
                                        'noti_type' => 5,
                                        'event_id'  => $find_event->id
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
                                        $save_noti_record->event = 1;
                                        $save_noti_record->save();

                                    }else{
                                        $noti_record_find->event = $noti_record_find->event + 1;
                                        $noti_record_find->update();
                                    }
                                    $total_noti_record = NotiRecord::whereUserId($user_find->id)->sum(DB::raw('wallet + offer + event + normal'));
                                    $ios_notify =  $this->iphoneNotification($user_find->device_token,$admin_event_notification->message,"Event Create Notification", $noti_type = 5, $event_id = $find_event->id,null,$total_noti_record);

                                    $criteria_data = [
                                        'user_id'   => $user_find->id,
                                        'message'   => "Upcoming Events: ".$find_event->event_name." at ".$find_event->venu->venue_name."\n".$admin_event_notification->message,
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
                            $message = $admin_event_notification->message;
                            try {
                                $response = $sms->sendToOne($user_find->country_code.$user_find->mobile_number, $message,'AD-MSociety');
                            } catch (\Exception $e) {
                                continue;
                            }
                        }
                    }
                    
                }


                if($admin_event_notification->email_type == 1){
                    if(count($events_getting) > 0){

                        $notificationJob = (new MultipleEventsJobSendMail($admin_event_notification, $user_find, $events_getting))->delay(Carbon::now()->addSeconds(3));
                        dispatch($notificationJob);
                    }
                }

            }
        }

        return "success";

    }

    /*For User Verify email Cron job 1 week*/

    public function UserVerifyEmailCronJob(Request $request){
        $users = User::where('is_verify','=',0)->whereDeletedAt(null)->get();
        foreach ($users as $user) {
            $user_to_array = json_decode($user,true);
            $token = str_random(64);

            $email_verify_job = (new WeeklyVerifyMail($user_to_array, $token))->delay(Carbon::now()->addSeconds(3));
            dispatch($email_verify_job);

            User::whereId($user->id)->update(['verify_email_token' => $token]);
        }

        return 'success';
    }

    /*For Assign Badge Cron job*/

    public function AssignBadgesEmailCronJob(Request $request){
        $today_day = Carbon::now()->format('l');
        $find_today_badges = AssignBadge::whereDate('to_date', '>=',Carbon::now()->toDateString())->where('status','=','Active')->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_day)->whereDeletedAt(null)->get();

        foreach ($find_today_badges as $value) {
            $user_find = User::whereDeletedAt(null)->where('is_block','=',0)->whereId($value->user_id)->first()->toArray();
            $find_badge = Badge::whereId($value->badge_id)->whereStatus('Active')->whereDeletedAt(null)->first();

            $assign_badge_mail = (new UserAssignBadgeJob($user_find, $find_badge, $value))->delay(Carbon::now()->addSeconds(3));
            dispatch($assign_badge_mail);
            
        }

        return "success";

    }

    public function CustomerTierUpdateCronJob(Request $request){

        $get_all_users = User::where('is_verify','=',1)->where('is_block','=',0)->where("is_active", "=", 'Active')->pluck('id');

        foreach ($get_all_users as $value) {
            $user_find = User::whereId($value)->first();

            $tier_find = TierCondition::whereTierName($user_find->customer_tier)->whereDeletedAt(null)->first();
            if(empty($tier_find)){
                $tier_find = TierCondition::whereDeletedAt(null)->first();
            }

            if(empty($tier_find)){
                break;
            }

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

        }

        return "success";

    }
}
