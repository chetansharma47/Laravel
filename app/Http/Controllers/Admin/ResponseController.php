<?php

namespace App\Http\Controllers\Admin;

use DB;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;
use App\Models\Country;
use App\Models\WalletDetail;
use Illuminate\Support\Arr;
use App\Mail\CashbackEmail;
use App\Jobs\CashbackEmailJob;
use Carbon\Carbon;
use App\Models\NotiRecord;

class ResponseController extends Controller
{
    public function is_require($data, $field)
	{
		$response = [
			'result'  => 'Failure1',
			'message' => $field." field is required",
		];

		if($data){
			return $data;
		}
		http_response_code(400);
		echo json_encode($response); exit;
    }
   
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
   
	public function responseWithError($message=null)
	{
	    http_response_code(400);
	   	$message = $message ? $message : "Something went wrong. Please try again later!";
	    echo json_encode(['result' => 'Failure', 'message' => $message]); exit;
	}

    public function responseWithErrorValidation($message=null){
        http_response_code(406);
        $message = $message ? $message : "Something went wrong. Please try again later!";
        echo json_encode(['result' => 'Failure', 'message' => $message]); exit;
    }

	public function responseWithErrorCode($message=null, $code)
	{
	    http_response_code($code);
	   	$message = $message ? $message : "Something went wrong. Please try again later!";
	    echo json_encode(['result' => 'Failure', 'message' => $message]); exit;
	}


	public function uploadImage($image, $destinationPath)
    {
        $imageName = date('mdYHis') . uniqid().'.'.$image->getClientOriginalExtension();
        $image->move($destinationPath, $imageName);
        return $imageName;
    }

    public function is_validationRule($data, $request){
    	//return $data['validation'];
    	$validator = Validator::make($request->all(),$data['validation'], $data['message']);
    	if($validator->fails()){
            return $this->responseWithErrorValidation($validator->errors()->first());
        }
    }

    public function is_validationRuleArray($data, $request){
    	//return $data['validation'];
    	$validator = Validator::make($request,$data['validation'], $data['message']);
    	if($validator->fails()){
            return $this->responseWithError($validator->errors()->first());
        }
    }

    public function is_validationRuleWeb($data, $request){
    	//return $data['validation'];
    	$validator = Validator::make($request->all(),$data['validation'], $data['message']);
    	if($validator->fails()){
            return back()->withErrors($validator)->withInput();
        }
    }

    public function is_validationRuleWebAjax($data, $request){
    	//return $data['validation'];
    	$validator = Validator::make($request->all(),$data['validation'], $data['message']);
    	$validator = $this->validate($request,$data['validation'], $data['message']);
        return response()->json($validator, 422);
       
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

    public function send_android_notification_new($deviceToken,$message,$notfy_message='',$noti_type = "", $event_id = "", $offer_id = "") {
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

     public function transferToWallet($wallet_transaction_verified){
        
        date_default_timezone_set("Asia/Kolkata");
            
        $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();

        foreach ($wallet_transaction_verified as $WalletTransaction) {
            $find_user = User::whereId($WalletTransaction->user_id)->where('is_block','=',0)->first();
            $find_user->wallet_cash = $find_user->wallet_cash + $WalletTransaction->cashback_earned;
            $find_user->update();

            $wallet_detail2 = new WalletDetail();
            $wallet_detail2->user_id = $find_user->id;
            $wallet_detail2->description = "Cash Back Earnings";
            $wallet_detail2->cashback_earned = $WalletTransaction->cashback_earned;
            $wallet_detail2->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
            $wallet_detail2->type_of_transaction = "Cashback";
            $wallet_detail2->user_wallet_cash = $find_user->wallet_cash;
            $wallet_detail2->save();

            if(!empty($admin_cashback_notification_find)){
                $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$WalletTransaction->cashback_earned." AED. ".$admin_cashback_notification_find->message;
                $this->send_notifications_verified_users($admin_cashback_notification_find,$find_user);
            }
        }

        return 'Cashback credit successfully';
    }

    public function transferToWalletForUploadVerify($wallet_transaction_verified){
            
        date_default_timezone_set("Asia/Kolkata");
            
        $admin_cashback_notification_find = AdminNotification::where("uniq_id","=",2)->first();

        $find_user = User::whereId($wallet_transaction_verified->user_id)->where('is_block','=',0)->first();
        $find_user->wallet_cash = $find_user->wallet_cash + $wallet_transaction_verified->cashback_earned;
        $find_user->update();


        $wallet_detail2 = new WalletDetail();
        $wallet_detail2->user_id = $find_user->id;
        $wallet_detail2->description = "Cash Back Earnings";
        $wallet_detail2->cashback_earned = $wallet_transaction_verified->cashback_earned;
        $wallet_detail2->date_and_time = Carbon::now()->toDateString(). " ". Carbon::now()->toTimeString();
        $wallet_detail2->type_of_transaction = "Cashback";
        $wallet_detail2->user_wallet_cash = $find_user->wallet_cash;
        $wallet_detail2->save();

        if(!empty($admin_cashback_notification_find)){

            $admin_cashback_notification_find->message = "Congratulations you have earned cashback amount of ".$wallet_transaction_verified->cashback_earned." AED. ".$admin_cashback_notification_find->message;
            
            $this->send_notifications_verified_users($admin_cashback_notification_find,$find_user);
        }

        return 'Cashback credit successfully';
    }

    public function send_notifications_verified_users($admin_cashback_notification,$find_user){
        if(!empty($admin_cashback_notification)){
            if($admin_cashback_notification->push_type == 1){

                if($find_user->device_type == 'Android'){
                    if($find_user->device_token && strlen($find_user->device_token) > 20){


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

                       $android_notify =  $this->send_android_notification_new($find_user->device_token, $admin_cashback_notification->message, $notmessage = "Cashback Notification", $noti_type = 2);
                        $criteria_data = [
                            'user_id'   => $find_user->id,
                            'message'   => $admin_cashback_notification->message,
                            'noti_type' => 2,
                            'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                            'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
                        ];
                        AdminCriteriaNotification::create($criteria_data);
                   
                   }
                }

                if($find_user->device_type == 'Ios' && strlen($find_user->device_token) > 20){
                    if($find_user->device_token){

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

                        $ios_notify =  $this->iphoneNotification($find_user->device_token, $admin_cashback_notification->message, $notmessage = "Cashback Notification", $noti_type = 2);
                        $criteria_data = [
                            'user_id'   => $find_user->id,
                            'message'   => $admin_cashback_notification->message,
                            'noti_type' => 2,
                            'created_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString(),
                            'updated_at' => Carbon::now()->toDateString() . " " . Carbon::now()->toTimeString()
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
                    $response = $sms->sendToOne($find_user->country_code.$find_user->mobile_number, $message,'CM-Society');
                } catch (\Exception $e) {
                    // return $e->getMessage();
                    // continue;
                }
            }


            if($admin_cashback_notification->email_type == 1){
                $cashbackNotificationJob = (new CashbackEmailJob($admin_cashback_notification, $find_user))->delay(Carbon::now()->addSeconds(3));

                dispatch($cashbackNotificationJob);
            }             
        }
      }
}
