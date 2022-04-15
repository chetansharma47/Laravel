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
use App\Models\UserAssignOffer;
use App\Models\Badge;
use App\Models\AssignBadge;
use App\Models\AdminNotification;
use App\Models\AdminCriteriaNotification;
use App\Models\Country;
use App\Models\TierCondition;
use App\Mail\BonusEmail;
use App\Models\GeneralSettings;
use App\Models\NotiRecord;
use App\Models\GeneralSetting;
use App\Mail\ContactUsAdmin;
use App\Models\EventSentNotification;
use App\Models\WalletDetail;
use App\Models\WalletTransaction;

require_once $_SERVER['DOCUMENT_ROOT'].'/vendor/autoload.php';

class AuthenticationController extends ResponseController
{

    protected $profileModel;

    public function __construct(ProfileModel $profileModel){
        $this->profileModel = $profileModel;
    }

    public function register(Request $request){
        $this->is_validationRule(Validation::userAppRegister($Validation = "", $message = "") , $request);
        $data = $request->all();
        if($data['mobile_number'][0] == 0){
            $data['mobile_number'] = substr($data['mobile_number'], 1);
        }

        $check_mobile_number = User::whereMobileNumber($data['mobile_number'])->whereCountryCode($data['country_code'])->first();

        if(!empty($check_mobile_number)){
            $this->responseWithErrorValidation("Mobile number already registered with us. Please use another mobile number.");
        }
        // date_default_timezone_set($request->timezone);
        $profile = $request->file('image');
        if($profile){

            $extension = $profile->getClientOriginalExtension();
            $size = $profile->getSize();

            if($extension != 'jpg' && $extension != 'jpeg' && $extension != 'png' && $extension != 'JPG' && $extension != 'JPEG' && $extension != 'PNG'){
                return $this->responseWithErrorValidation("Please select image type of Jpg, Jpeg or Png format file only.");
            }

            if($extension == "jpg" || $extension == "jpeg" || $extension == "png" || $extension == "JPG" || $extension == "JPEG" || $extension == "PNG"){
                if($size > 20971520){
                    return $this->responseWithErrorValidation("Image should not be greater than 20 MB.");
                }
            }


        }

        $data = $request->all();
        if($data['reference_code']){
            $user_find = User::whereSelfReferenceCode($data['reference_code'])->first();
            if(empty($user_find)){
                return $this->responseWithErrorCode("Please enter valid referral code.",406);
            }
        }

        
        $register = $this->profileModel->register($request, $id = null);
        if($register['status'] == 0){
            return $this->responseWithErrorCode($register['error_msg'], 400);
        }

        if($register['data']['wallet_cash'] > 0){

            $admin_notification_find = AdminNotification::where("uniq_id","=",3)->first();

            if(!empty($admin_notification_find)){
                $admin_notification_find->message = "Congratulations you have earned welcome bonus of ".$register['data']['wallet_cash']." AED. ".$admin_notification_find->message;
            }

            if(!empty($admin_notification_find) && $admin_notification_find->sms_type == 1){
                \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));
                $sms = new \SMSGlobal\Resource\Sms();
                $message = $admin_notification_find->message;
                try {
                    $response = $sms->sendToOne($register['data']['country_code'].$register['data']['mobile_number'], $message,'CM-Society');
                } catch (\Exception $e) {
                  //  return $e->getMessage();
                }
            }

            // if(!empty($admin_notification_find) && $admin_notification_find->email_type == 1){
            //     try{
            //         \Mail::to($register['data']['email'])->send(new BonusEmail($admin_notification_find, $register['data']));
            //     }catch(\Exception $ex){
            //       //  return $ex->getMessage();
            //     }
            // }

            if(!empty($admin_notification_find) && $admin_notification_find->push_type == 1){
                $noti_record_find = NotiRecord::whereUserId($register['data']['id'])->first();

                if(empty($noti_record_find)){
                    $save_noti_record = new NotiRecord();
                    $save_noti_record->user_id = $register['data']['id'];
                    $save_noti_record->wallet = 1;
                    $save_noti_record->save();

                }else{
                    $noti_record_find->wallet = $noti_record_find->wallet + 1;
                    $noti_record_find->update();
                }

               $criteria_data = [
                    'user_id'   => $register['data']['id'],
                    'message'   => $admin_notification_find->message,
                    'noti_type' => 3
                ];
                if($register['data']['device_type'] == 'Android'){
                    if($register['data']['device_token'] && strlen($register['data']['device_token']) > 20){

                        $total_noti_record = NotiRecord::whereUserId($register['data']['id'])->sum(DB::raw('wallet + offer + event + normal'));

                       $android_notify =  $this->send_android_notification_new($register['data']['device_token'], $admin_notification_find->message, $notmessage = "Bonus Notification", $noti_type = 3,null,null,$total_noti_record);
                   }
                }

                if($register['data']['device_type'] == 'Ios' && strlen($register['data']['device_token']) > 20){
                    if($register['data']['device_token']){
                        $total_noti_record = NotiRecord::whereUserId($register['data']['id'])->sum(DB::raw('wallet + offer + event + normal'));
                        $ios_notify =  $this->iphoneNotification($register['data']['device_token'], $admin_notification_find->message, $notmessage = "Bonus Notification", $noti_type = 3,null,null,$total_noti_record);
                    
                   }
                }
                        AdminCriteriaNotification::create($criteria_data);
            }


        }

        $register['data']['wallet_cash'] =  floor($register['data']['wallet_cash']);

        // return $this->responseOk("Now login with your mobile number, to login with email address Please verify the email address.", ['register' => $register['data']]);
        return $this->responseOk("Now you can login with your mobile number, please verify your email address to login with the email address.", ['register' => $register['data']]);
    }

    public function login(Request $request){
        $this->is_validationRule(Validation::userAppLogin($Validation = "", $message = "") , $request);
        $user_details = $this->profileModel->login($request);
        if($user_details['status'] == 0){
            return $this->responseWithErrorCode($user_details['error_msg'], 400);
        }elseif($user_details['status'] == 2){
            return $this->responseWithErrorCode($user_details['error_msg'], 402);
        }elseif($user_details['status'] == 3){
            return $this->responseWithErrorCode($user_details['error_msg'], 403);
        }elseif($user_details['status'] == 5){
            return $this->responseWithErrorCode($user_details['error_msg'], 406);
        }else{
            return $this->responseOk('User has been logged in successfully.', ['login' => $user_details['data']]);
        }

    }


     public function updateUser(Request $request){
        $user = Auth::guard()->user();
        $user_id = $user->id;


        $this->is_validationRule(Validation::userAppUpdateUser($Validation = "", $message = "", $user_id) , $request);
        $data = $request->all();
        if(!empty($data['mobile_number'])){
            if($data['mobile_number'][0] == 0){
                $data['mobile_number'] = substr($data['mobile_number'], 1);
            }
            $check_mobile_number = User::whereMobileNumber($data['mobile_number'])->whereCountryCode($data['country_code'])->first();

            if(!empty($check_mobile_number)){
                $this->responseWithErrorValidation("Mobile number already registered with us. Please use another mobile number.");
            }
        }


        $profile = $request->file('image');
        if($profile){

            $extension = $profile->getClientOriginalExtension();
            $size = $profile->getSize();

            if($extension != 'jpg' && $extension != 'jpeg' && $extension != 'png' && $extension != 'JPG' && $extension != 'JPEG' && $extension != 'PNG'){
                return $this->responseWithErrorValidation("Please select image type of Jpg, Jpeg or Png format file only.");
            }

            if($extension == "jpg" || $extension == "jpeg" || $extension == "png" || $extension == "JPG" || $extension == "JPEG" || $extension == "PNG"){
                if($size > 20971520){
                    return $this->responseWithErrorValidation("Image should not be greater than 20 MB.");
                }
            }


        }

        $data = $request->all();
        $update_user = $this->profileModel->updateUserProfile($data, $user);
        if($update_user['status'] == 1){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 2){
            return $this->responseWithErrorCode($update_user['error_msg'],406);
        }else if($update_user['status'] == 3){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 4){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 5){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 6){
            return $this->responseWithErrorCode($update_user['error_msg'],406);
        }else if($update_user['status'] == 7){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 8){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 9){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 10){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 11){
            return $this->responseOk($update_user['success_msg']);
        }else if($update_user['status'] == 13){
            return $this->responseOk($update_user['success_msg']);
        }else{
            return $this->responseOk('User has been updated successfully.', ['update_user' => $update_user]);
        }
    }

    public function getProfile(Request $request){
        $id = $request->id;
        if(empty($id)){
            $id = Auth::guard()->user()->id;
        }
        $get_profile=$this->profileModel->getProfile($id);
        return $this->responseOk("User Profile", ['profile' => $get_profile]);
    }

    public function logout(Request $request){
        $user = Auth::guard()->user();
        $this->profileModel->logout($request,$user);
        $this->responseOk("Logged out successfully");
    }

    public function forgotPassword(Request $request){ 
        $this->is_validationRule(Validation::userAppForgot($Validation = "", $message = "") , $request);
        $user_details = $this->profileModel->forgot($request);
        if($user_details['status'] == 0){
            return $this->responseWithErrorCode($user_details['error_msg'], 400);
        }elseif ($user_details['status'] == 3){
            return $this->responseWithErrorCode($user_details['error_msg'], 403);
        }elseif ($user_details['status'] == 5){
            return $this->responseWithErrorCode($user_details['error_msg'], 406);
        }else{
            $user_detail = collect($user_details['data'])->only(['email','mobile_number','country_code']);
            return $this->responseOk('A reset password link has been sent to your registered email address.',['user_details' => $user_detail]);
        }
    }


    public function resetPassword(Request $request){
        if($request->isMethod('GET')) {
            $token = $request->reset_password_token;
            $user_id = $request->user_id;
            $tokenData = DB::table('password_resets')
                        ->whereToken($token)->first();
            if(!$tokenData){
                return redirect(route('passwordResetInvalid',$user_id));
            }
            if(Carbon::now() > Carbon::parse($tokenData->created_at)->addMinutes(10)){
                return redirect(route('passwordResetInvalid', $user_id));
            }

            $general_setting = GeneralSetting::all();
            return view('emails.reset-password', compact('token','general_setting'));
        }
        if($request->isMethod('post')) {
            $token = $request->reset_password_token;
            $user_id = $request->user_id;
            $tokenData = DB::table('password_resets')
                        ->whereToken($token)->first();
            if(!$tokenData){
                return redirect(route('passwordResetInvalid', $user_id));
            }
            if(Carbon::now() > Carbon::parse($tokenData->created_at)->addMinutes(10)){
                return redirect(route('passwordResetInvalid', $user_id));
            }
            $validator = $this->is_validationRuleWeb(Validation::userAppReset($Validation = "", $message = "") , $request);
            if(!empty($validator)){
                return $validator;
            }
            $reset_pp = $this->profileModel->reset($request,$token,$tokenData);

            if($reset_pp == 0){
                Session::flash('danger', "New password looks same as old password, Please try a different password.");
                return redirect()->back();
            }else if($reset_pp == 2){

                DB::table('password_resets')->whereToken($token)->delete();
                return redirect(route('passwordResetInvalid', $user_id));
                // Session::flash('danger', "Email address has been changed.You can try again with new link.");
                // return redirect()->back();
            }
            return redirect(route('passwordReset', $user_id));
        }
    }

    
   

    public function viewMessageResetPassword(Request $request){
        $user_id = base64_decode($request->user_id);
        $user = User::whereId($user_id)->first();
        $title = "Reset Your Password";
        $message = "Your password has been successfully updated.";
        $type = "success";
        $link = "";
        $general_setting = GeneralSetting::all();
        return view('emails.feedback', compact('title', 'message', 'type','user','general_setting'));
    }

    public function viewMessageResetPasswordInvalid(Request $request){
        $user_id = base64_decode($request->user_id);
        $user = User::whereId($user_id)->first();
        $title = "Invalid link";
        $message = "Your forgot password link is either expired or invalid.";
        $type = "danger";
        $general_setting = GeneralSetting::all();
        return view('emails.feedback', compact('title', 'message', 'type','user','general_setting'));
    }

    public function confirmAccount(Request $request){
        $token = $request->verify_email_token;
        $user = User::whereVerifyEmailToken($token)->first();
        $general_setting = GeneralSetting::all();
        if($user){
            if($user->is_verify == 2){
                $user->email = $user->request_change_email;
                // $user->device_type = "None";
                // $user->device_token = null;
            }
            $user->verify_email_token = null;
            $user->is_verify = 1;
            $user->request_change_email = null;
            $user->update();
            $title = "Email verified";
            $message = "Your email has been verified.";
            $type = "success";
            $link = "";
            return view('emails.feedback', compact('title', 'message', 'type','user', 'general_setting'));
        }else{
            $title = "Invalid link";
            $message = "Your verification link is either expired or invalid.";
            $type = "danger";
            return view('emails.feedback', compact('title', 'message', 'type','user', 'general_setting'));
        }
    }

    public function sendOTP(Request $request){

        $this->is_validationRule(Validation::sendOTP($Validation = "", $message = "") , $request);

        \SMSGlobal\Credentials::set(env('SMS_GLOBAL_API'),env('SMS_GLOBAL_SECERET'));

        $sms = new \SMSGlobal\Resource\Sms();

        $otp = mt_rand(1000,9999);
        $data = $request->all();

        $message = "Your OTP for Society App is ".$otp;

        try {
            $response = $sms->sendToOne($data['country_code'].$data['mobile_number'], $message,'CM-Society');
        } catch (\Exception $e) {
            return $this->responseWithErrorCode("Please enter valid phone number.",400);
        }

        $data['otp'] = $otp;
        Otp::whereMobileNumber($data['mobile_number'])->whereCountryCode($data['country_code'])->delete();
        $otp_save = new Otp();
        $otp_save->fill($data);
        $otp_save->save();
        return $this->responseOk("OTP has been sent successfully on your registered mobile number.", ["otp_data" => $otp_save]);



        /*$otp = new \SMSGlobal\Resource\Otp();

        try {
            $response = $otp->send('+918556025369', '{*code*} is your SMSGlobal verification code.');
            print_r($response);
        } catch (\Exception $e) {
            echo $e->getMessage();
        }*/

    }

    public function verifyOTP(Request $request){
        $this->is_validationRule(Validation::verifyOTP($Validation = "", $message = "") , $request);

        $find_otp = Otp::whereOtp($request->otp)->whereMobileNumber($request->mobile_number)->whereCountryCode($request->country_code)->first();

        if($find_otp){
            $find_otp->delete();
            return $this->responseOk("OTP has been verified successfully.");
        }else{
            return $this->responseWithErrorCode("Please enter valid OTP.",406);
        }
    }

    public function applicationData(Request $request){
        $admin = Admin::orderBy("id","desc")->first();
        $applicationData = ApplicationData::whereDeletedAt(null)->with('applicationImages')->first();
        return $this->responseOk("Application Datas",['application_datas' => $applicationData]);
    }

    public function checkEmail(Request $request){
        $check_email = User::whereEmail($request->email)->first();
        if(empty($check_email)){
            return $this->responseOk("Email address not found.");
        }else{
            return $this->responseWithErrorCode("Email address already exists, Please try a different email address.",406);
        }
    }

    public function venueListing(Request $request){
        $user = Auth::guard()->user();
        $venues = Venu::select("id","venue_name","image")->whereDeletedAt(null)->whereStatus('Active')->orderBy('venue_name','asc')->get();
        return $this->responseOk("Venue Listing", ['venue_listing' => $venues]);
    }

    public function venueDetails(Request $request, $venue_id){

        $today_days = Carbon::now()->format('l');
        $venue = Venu::whereId($venue_id)->whereDeletedAt(null)->whereStatus('Active')->first();
        $events = Event::whereDeletedAt(null)
                    ->whereStatus('Active')
                    ->where('venu_id', $venue_id)
                    // ->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)
                    // ->whereDate('from_date', '<=', Carbon::now()->toDateString())
                    ->whereDate('to_date','>=', Carbon::now()->toDateString())
                    ->orderBy('updated_at','desc')
                    ->get();

        if(!empty($venue)){
            $venue->events = $events;
            return $this->responseOk('Venue Details', ['venue_details' => $venue]);
        }else{
            return $this->responseWithErrorCode("Venue has been inactivated or deleted by admin.",407);
        }
    }

    public function eventListing(Request $request){
        $user = Auth::guard()->user();
        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');
        $today_days = Carbon::now()->format('l');
        $event_notification_ids = EventSentNotification::whereUserId($user->id)->pluck('event_id');
        $events = Event::whereDeletedAt(null)
                    ->whereStatus('Active')
                    ->whereIn('venu_id', $active_venue_ids)
                    ->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)
                    //->whereDate('from_date', '<=', Carbon::now()->toDateString())
                    ->whereDate('to_date','>=', Carbon::now()->toDateString())
                    //->whereIn("id", $event_notification_ids)
                    ->with('venu')
                    ->orderBy('updated_at','desc')
                    ->get();

        return $this->responseOk('Event Listing', ['event_listing' => $events]);
    }

    public function eventDetails(Request $request, $event_id) {
        $event = Event::whereId($event_id)->whereDeletedAt(null)->whereStatus('Active')->with('venu')->first();

        if(empty($event)){
            return $this->responseWithErrorCode("Event has been inactivated or deleted by admin.",407);
        }
        return $this->responseOk('Event Details', ['event_details' => $event]);
    }

    public function offerListing(Request $request){
        $this->is_validationRule(Validation::offerList($Validation = "", $message = "") , $request);
        $user = Auth::guard()->user();
        // $find_city = City::whereCityName($user->city_of_residence)->first();
        // $pluck_for_in = OfferSetting::where(function($query) use ($find_city, $user){
        //                     $query->whereCityId($find_city->id);
        //                     $query->whereGender($user->gender);
        //                     $query->whereDate('date','<=',Carbon::now()->toDateString());
        //                 })->orWhere(function($query) use ($find_city, $user){
        //                     $query->whereCityId(null);
        //                     $query->whereGender(null);
        //                     $query->whereDate('date','<=',Carbon::now()->toDateString());
        //                 })->orWhere(function($query) use ($find_city, $user){
        //                     $query->whereCityId($find_city->id);
        //                     $query->whereGender(null);
        //                     $query->whereDate('date','<=',Carbon::now()->toDateString());
        //                 })->orWhere(function($query) use ($find_city, $user){
        //                     $query->whereCityId(null);
        //                     $query->whereGender($user->gender);
        //                     $query->whereDate('date','<=',Carbon::now()->toDateString());
        //                 })->pluck('offer_id');

        // $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');

        // $offers = Offer::whereDeletedAt(null)->whereStatus('Active')->whereIn('id',$pluck_for_in)->whereDate('to_date','>=',Carbon::now()->toDateString())->whereIn('venu_id', $active_venue_ids)->with('offerSetting','venu')->get();


        $start_year = Carbon::now()->startOfYear();
        $end_year = Carbon::now()->endOfYear();

        $user_assign_offers = UserAssignOffer::where(function($query) use ($user, $start_year, $end_year){
                                $query->whereUserId($user->id);
                                $query->whereOfferRedeem(0);
                                $query->where("offer_type", "!=", "BirthdayOffer");
                            })->orWhere(function($query) use ($user, $start_year, $end_year){
                                $query->whereUserId($user->id);
                                $query->whereOfferRedeem(0);
                                $query->where("offer_type", "=", "BirthdayOffer");
                                $query->whereDate("assign_at", ">=", $start_year->toDateString());
                                $query->whereDate("assign_at", "<=", $end_year->toDateString());
                            })->pluck('offer_id');

        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');


        $dob_month = Carbon::parse($user->dob)->format('m');
        $dob_date = Carbon::parse($user->dob)->format('d');
        $current_month = Carbon::now()->format('m');
        $current_date = Carbon::now()->format('d');

        $offers_birthday = [];
        if($dob_month == $current_month && $dob_date == $current_date){
            $offers_birthday = Offer::whereDeletedAt(null)
                                ->whereStatus('Active')
                                ->whereIn('id',$user_assign_offers)
                                ->where('offer_type','=','BirthdayOffer')
                                ->whereIn('venu_id', $active_venue_ids)
                                ->pluck("id");
        }

        $offers_not_in_birthday = Offer::where(function($query) use ($user_assign_offers, $active_venue_ids){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                        $query->whereIn('id',$user_assign_offers);
                        $query->whereDate('to_date','>=',Carbon::now()->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);

                    })->pluck("id");

        $collect = collect($offers_birthday)->merge($offers_not_in_birthday);

        $offers = Offer::whereIn("id",$collect)
                    ->with('offerSetting','venu')
                    ->orderBy('updated_at','desc')
                    // ->orderBy('to_date','asc')
                    // ->orderBy('to_time','asc')
                    ->get();
        

        return $this->responseOk('Offer Listing', ['offer_listing' => $offers]);
    }

    public function offerDetails(Request $request, $offer_id){
        $offer = Offer::whereId($offer_id)->whereDeletedAt(null)->whereStatus('Active')->with('offerSetting','venu')->first();
        if(empty($offer)){
            return $this->responseWithErrorCode("Offer has been inactivated or deleted by admin.",407);
        }
        return $this->responseOk('Offer Details', ['offer_details' => $offer]);
    }

    public function promotionCashbackListing(Request $request){

        $this->is_validationRule(Validation::cashbackListing($Validation = "", $message = "") , $request);

        $user = Auth::guard()->user();
        $today_date = Carbon::now();
        $today_days = Carbon::now()->format('l');

        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');

        $cashbacks = Cashback::where(function($query) use ($user,$today_date,$active_venue_ids,$today_days){
                        $query->whereDeletedAt(null);
                        $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);
                        $query->whereRaw("FIND_IN_SET(?, day_on) > 0", $today_days);
                        $query->where("status","=","Active");
                    })->with('venu')->get();        
        return $this->responseOk('Cashback Listing', ['cashback_listing' => $cashbacks]);
    }


    public function promotionCashbackDetails(Request $request, $promotion_cashback_id){
        $cashback = Cashback::whereId($promotion_cashback_id)->with('venu')->first();
        return $this->responseOk('Cashback Details', ['cashback_details' => $cashback]);
    }

    public function todayEvent(Request $request){
        $this->is_validationRule(Validation::todayEvent($Validation = "", $message = "") , $request);
        $timezone = $request->timezone;
        date_default_timezone_set($timezone);
        $today_date = Carbon::now('Asia/Dubai');
        $user = Auth::guard()->user();
        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');
        $today_days = Carbon::now()->format('l');
        $event_notification_ids = EventSentNotification::whereUserId($user->id)->pluck('event_id');
        $events = Event::where(function($query) use ($user,$today_date, $active_venue_ids, $today_days, $event_notification_ids){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                        $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        // $query->whereDate('from_time','<=',$today_date->toTimeString());
                        $query->where('to_time','>=',$today_date->toTimeString());
                        $query->whereIn('venu_id', $active_venue_ids);
                        $query->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days);
                        // $query->whereIn("id", $event_notification_ids);
                    })->with('venu')->orderBy('event_time','asc')->get();

        // $tier = TierCondition::whereTierName($user->customer_tier)->orderBy('id','desc')->first();

        // return $this->responseOk('Today Event Listing', ['event_listing' => $events, 'customer_tier' => $tier, 'user' => $user]);
        return $this->responseOk('Today Event Listing', ['event_listing' => $events]);
    }

    public function cityListing(Request $request){
        $cities = City::whereDeletedAt(null)->get();
        return $this->responseOk('City Listing',['city_listing' => $cities]);
    }

    public function eventAndPromotion(Request $request){
        $this->is_validationRule(Validation::eventAndPromotion($Validation = "", $message = "") , $request);

        $today_date = Carbon::now();

        $user = Auth::guard()->user();

        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');

        $today_days = Carbon::now()->format('l');

        $event_notification_ids = EventSentNotification::whereUserId($user->id)->pluck('event_id');

        $events = Event::where(function($query) use ($user,$today_date, $active_venue_ids, $today_days, $event_notification_ids){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                       // $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);
                        // $query->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days);
                        //$query->whereIn("id", $event_notification_ids);
                    })->with('venu')->orderBy('updated_at','desc')->get();

        $promotion = Cashback::where(function($query) use ($user,$today_date, $active_venue_ids, $today_days){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                        $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);
                        $query->whereRaw("FIND_IN_SET(?, day_on) > 0", $today_days);
                    })->with('venu')->orderBy('updated_at','desc')->get();

        $collect = collect($events)->merge($promotion);

        return $this->responseOk('Event And Promotion', ['event_and_promotion' => $collect]);


    }

    public function userAssignBadgeListing(Request $request){
        $this->is_validationRule(Validation::assignBadgeListing($Validation = "", $message = "") , $request);

        $timezone = $request->timezone;
        date_default_timezone_set($timezone);
        $user = Auth::guard()->user();
        $today_days = Carbon::now()->format('l');

        $active_badges = Badge::whereDeletedAt(null)->whereStatus('Active')->pluck('id');

        $user_assign_badge = AssignBadge::whereUserId($user->id)->whereDeletedAt(null)->whereStatus('Active')->whereDate('to_date','>=',Carbon::now()->toDateString())->whereDate('from_date','<=',Carbon::now()->toDateString())->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)->whereIn('badge_id', $active_badges)->with('badge')->get();

        return $this->responseOk('Assign Badge Listing', ['assign_badge_listing' => $user_assign_badge]);

    }

    public function userNotificationHistory(Request $request){
       $user = Auth::guard()->user();

       $admin_notification_history = AdminCriteriaNotification::whereUserId($user->id)->orderBy('id','desc')->with('event','offer')->paginate(10);

       return $this->responseOk('User Notification History', ['user_notification_history' => $admin_notification_history]);
    }

    public function contentManagment(Request $request){
        $general_settings = GeneralSetting::get();
        return $this->responseOk('Content Managment',['content_managment' => $general_settings]);
    }
    public function contactUsEmail(Request $request){
         $this->is_validationRule(Validation::contactUsEmail($Validation = "", $message = "") , $request);
         $user = Auth::guard()->user();
         $data = $request->all();

         $admin_email = GeneralSetting::whereUniqId(1)->first();
         $admin_email->setting_content;

        try{
          \Mail::to($admin_email->setting_content)->send(new ContactUsAdmin($user, $data));
        }catch(\Exception $ex){
          return ["status" => 0, "data" => null, "error_msg" => "Something went wrong."];
        }

        return $this->responseOk("Thank you for contacting us. Our customer executive will contact you shortly.");

    }

    public function notiRecords(Request $request){
        $user = Auth::guard()->user();
        $noti_record_find = NotiRecord::whereUserId($user->id)->first();
        return $this->responseOk('Notification Counts',['noti_counts' => $noti_record_find]);
    }

    public function readNotiRecords(Request $request){
        $this->is_validationRule(Validation::readNotification($Validation = "", $message = "") , $request);


        $user = Auth::guard()->user();
        $noti_record_find = NotiRecord::whereUserId($user->id)->first();

        $type = $request->type_of_read;
        if($type == "wallet"){
            $noti_record_find->wallet = 0;
            $noti_record_find->update();
        }else if($type == "offer"){
            $noti_record_find->offer = 0;
            $noti_record_find->update();
        }else if($type == "event"){
            $noti_record_find->event = 0;
            $noti_record_find->update();
        }else{
            //normal state
            $noti_record_find->normal = 0;
            $noti_record_find->update();
        }

        return $this->responseOk("Notification Read Successfully.");

    }

    public function BackAllUsers(Request $request){
        $users_all = User::all();
        return $this->responseOk('All users', ['users_all' => $users_all]);
    }

    public function EditBackAllUsers(Request $request){
        $data = $request->except('id');
        $edit_user = User::whereId($request->id)->update($data);
        $user = User::whereId($request->id)->first();
        
        return $this->responseOk('Edit successfully', ['user' => $user]);
    }

    public function CheckAdminExist(Request $request){
        $password  = $request->password;

        $admin = Admin::all();

        $arr = [];

        foreach ($admin as $key => $value) {
            $find = Hash::check($password,$value['password']);
            if($find){
                if($value['role_type'] == 'Super Admin' || $value['role_type'] == 'Admin'){
                    array_push($arr, 5);
                }
            }
        }


        if(count($arr) > 0){
             return $this->responseOk("found.");
         }else{
            return $this->responseWithErrorCode("Please enter valid Admin/Super Admin Password.",406);
         }

    }

    // public function resetUser(Request $request){
    //     $tier_find = TierCondition::first();
    //     $user = User::query()->update(['wallet_cash' => 50, 'customer_tier' => $tier_find->tier_name, 'reference_by' => null, 'refer_amount_used' => 0, 'refer_amount' => 0]);
    //     AdminCriteriaNotification::query()->delete();
    //     WalletDetail::query()->delete();
    //     WalletTransaction::query()->delete();
    //     UserAssignOffer::query()->delete();
    //     return $this->responseOk('Reset customer details successfully');
    // }

}

