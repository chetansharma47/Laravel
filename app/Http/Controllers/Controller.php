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
use Carbon\Carbon;
use App\Validation;
use App\Models\WalletTransaction;
use App\Models\TierSetting;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;
use App\Models\Country;
use App\Models\Venu;
use App\Mail\CashbackEmail;
use App\Jobs\OfferNotificationJob;
use App\Mail\OfferAssignMail;
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
        date_default_timezone_set("Asia/Kolkata");
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
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->whereCityOfResidence($find_city_name->city_name)->where('gender','=',$offer->offerSetting->gender)->whereDeletedAt(null)->where('is_block','=',0)->get();

            }
            if(!empty($offer->offerSetting->city_id) && empty($offer->offerSetting->gender)){

                $find_city_name = City::select('city_name')->whereId($offer->offerSetting->city_id)->first();
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->whereCityOfResidence($find_city_name->city_name)->whereDeletedAt(null)->where('is_block','=',0)->get();

            }
            if(empty($offer->offerSetting->city_id) && !empty($offer->offerSetting->gender)){
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->where('gender','=',$offer->offerSetting->gender)->whereDeletedAt(null)->where('is_block','=',0)->get();
            }

            if(empty($offer->offerSetting->city_id) && empty($offer->offerSetting->gender)){
                //both are empty
                $user_match_with_offers = User::select('id','email','dob','first_name','last_name','device_type','device_token','country_code','mobile_number')->whereDeletedAt(null)->where('is_block','=',0)->get();
            }

          //  return $user_match_with_offers;

            foreach ($user_match_with_offers as $user_match_with_offer){

                //return $user_match_with_offer;
                $user_assign_offers = UserAssignOffer::whereUserId($user_match_with_offer->id)->whereOfferId($offer->id)->whereAssignAt(Carbon::now()->toDateString())->first();

                if($offer->offer_type == "BirthdayOffer"){
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
                                       $android_notify =  $this->send_android_notification_new($user_match_with_offer->device_token, "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id);

                                        $criteria_data = [
                                            'user_id'   => $user_match_with_offer->id,
                                            'message'   => "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
                                            'noti_type' => 6,
                                            'offer_id'  => $offer_assign->offer_id
                                        ];
                                        AdminCriteriaNotification::create($criteria_data);
                                   
                                   }
                                }

                                if($user_match_with_offer->device_type == 'Ios' && strlen($user_match_with_offer->device_token) > 20){
                                    if($user_match_with_offer->device_token){
                                        $ios_notify =  $this->iphoneNotification($user_match_with_offer->device_token, "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id);

                                        $criteria_data = [
                                            'user_id'   => $user_match_with_offer->id,
                                            'message'   => "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
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
                                $message = "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message;
                                try {
                                    $response = $sms->sendToOne($user_match_with_offer->country_code.$user_match_with_offer->mobile_number, $message,'CM-Society');
                                } catch (\Exception $e) {
                                    continue;
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
                                    $query->whereDate('created_at','<=',$offer->offerSetting->txn_start_period);
                                    $query->whereDate('created_at','>=',$offer->offerSetting->txn_end_period);
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

                            $admin_offer_notification = AdminNotification::where("uniq_id","=",6)->first();

                            if(!empty($admin_offer_notification)){

                                if($admin_offer_notification->email_type == 1){

                                    $notificationJob = (new OfferNotificationJob($admin_offer_notification, $offer_assign, $user_match_with_offer, $offer))->delay(Carbon::now()->addSeconds(3));
                                    dispatch($notificationJob);
                                }


                                if($admin_offer_notification->push_type == 1){

                                    if($user_match_with_offer->device_type == 'Android'){
                                        if($user_match_with_offer->device_token && strlen($user_match_with_offer->device_token) > 20){
                                           $android_notify =  $this->send_android_notification_new($user_match_with_offer->device_token, "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id);

                                            $criteria_data = [
                                                'user_id'   => $user_match_with_offer->id,
                                                'message'   => "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
                                                'noti_type' => 6,
                                                'offer_id'  => $offer_assign->offer_id
                                            ];
                                            AdminCriteriaNotification::create($criteria_data);
                                       
                                       }
                                    }

                                    if($user_match_with_offer->device_type == 'Ios' && strlen($user_match_with_offer->device_token) > 20){
                                        if($user_match_with_offer->device_token){
                                            $ios_notify =  $this->iphoneNotification($user_match_with_offer->device_token, "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,"Offer Assign Notification", $noti_type = 6, null,$offer_id = $offer_assign->offer_id);

                                            $criteria_data = [
                                                'user_id'   => $user_match_with_offer->id,
                                                'message'   => "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message,
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
                                    $message = "What's Happening Today: Enjoy ".$offer->offer_name." at ".$offer->venu->venue_name."\n".$admin_offer_notification->message;
                                    try {
                                        $response = $sms->sendToOne($user_match_with_offer->country_code.$user_match_with_offer->mobile_number, $message,'CM-Society');
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


    public  function iphoneNotification($device_token,$message,$notfy_message, $noti_type = "", $event_id = "", $offer_id = ""){
        $PATH = public_path('pemfile/user_push.pem');
        $deviceToken = $device_token;
        
            
        $body['title'] = $message;
        $body['Notifykey'] = $notfy_message;
        $body['noti_type'] = $noti_type;
        $body['event_id'] = $event_id;
        $body['offer_id'] = $offer_id;
        $body['aps'] =  array(
                          'alert' => $message,
                          'sound' => 'default',
                          'details'=>$body,
                        );
        $pem_file       = $PATH;
        $pem_secret     = '123456';
        $apns_topic     = 'com.captial.motion.user';

        $sample_alert = json_encode($body);
        $url = "https://api.development.push.apple.com/3/device/$deviceToken"; //development
        //$url = "https://api.push.apple.com/3/device/$deviceToken"; //production

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $sample_alert);
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("apns-topic: $apns_topic"));
        curl_setopt($ch, CURLOPT_SSLCERT, $pem_file);
        curl_setopt($ch, CURLOPT_SSLCERTPASSWD, $pem_secret);
        $response = curl_exec($ch);
        $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $result = "success";
        return $result;
    }

    public function send_android_notification_new($deviceToken,$message,$notfy_message='',$noti_type = "",$event_id = "", $offer_id = "") {
        if (!defined('API_ACCESS_KEY')) {
          define('API_ACCESS_KEY' ,'AAAA_gAB8Yc:APA91bHy0nP46e5z6WNb4GDmSbmgDlLJhZvll1jOdPLUuJ57ypebWPynuk80IAF6rvRhO44rzVMbgFCFV_rVOxdTNHFQMEuKe2IG6nDMo9FbGM8fAUQlwBt7eik0NunvLAnKlsQGVMK1');
        }
        // print_r($type); die;

        $not_message = array('sound' =>1,
                    'message'=>array("noti_type" => $noti_type, "event_id" => $event_id, "offer_id" => $offer_id, 'message' => $message),
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

    public function transferToWallet(Request $request){
        
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
    } 
}
