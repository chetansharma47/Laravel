<?php

namespace App\Http\Controllers\Api\v1;

use DB;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Validator;
use Illuminate\Support\Facades\Auth;

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

    public  function iphoneNotification($device_token,$message,$notfy_message, $noti_type = "", $event_id = "", $offer_id = "", $total_noti_record = ""){
        $PATH = public_path('pemfile/Development_Push.pem');
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
        $url = "https://api.development.push.apple.com/3/device/$deviceToken"; //development
        // $url = "https://api.push.apple.com/3/device/$deviceToken"; //production

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

    public function send_android_notification_new($deviceToken,$message,$notfy_message='',$noti_type = "", $event_id = "", $offer_id = "",$total_noti_record = "") {
        if (!defined('API_ACCESS_KEY')) {
          define('API_ACCESS_KEY' ,'AAAA_gAB8Yc:APA91bHy0nP46e5z6WNb4GDmSbmgDlLJhZvll1jOdPLUuJ57ypebWPynuk80IAF6rvRhO44rzVMbgFCFV_rVOxdTNHFQMEuKe2IG6nDMo9FbGM8fAUQlwBt7eik0NunvLAnKlsQGVMK1');
        }
        // print_r($type); die;

        $not_message = array('sound' =>1,
                    'message'=>array("noti_type" => $noti_type,"badge_count" => (int)$total_noti_record, "event_id" => $event_id, "offer_id" => $offer_id, 'message' => $message),
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
}
