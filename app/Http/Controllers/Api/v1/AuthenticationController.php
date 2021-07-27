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
require_once $_SERVER['DOCUMENT_ROOT'].'/capital_motion_22_july/vendor/autoload.php';

class AuthenticationController extends ResponseController
{

    protected $profileModel;

    public function __construct(ProfileModel $profileModel){
        $this->profileModel = $profileModel;
    }

    public function register(Request $request){
        $this->is_validationRule(Validation::userAppRegister($Validation = "", $message = "") , $request);


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
            $user_find = User::whereCustomerId($data['reference_code'])->first();
            if(empty($user_find)){
                return $this->responseWithErrorCode("Please enter valid referral code.",406);
            }
        }

        
        $register = $this->profileModel->register($request, $id = null);
        if($register['status'] == 0){
            return $this->responseWithErrorCode($register['error_msg'], 400);
        }
        return $this->responseOk("Your account has been registered successfully. Please verify the email first for login.", ['register' => $register['data']]);
    }

    public function login(Request $request){
        $this->is_validationRule(Validation::userAppLogin($Validation = "", $message = "") , $request);
        $user_details = $this->profileModel->login($request);
        if($user_details['status'] == 0){
            return $this->responseWithErrorCode($user_details['error_msg'], 400);
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

        $data['image'] = $profile;
        $data = $request->all();
        $update_user = $this->profileModel->updateUser($data, $user);
        return $this->responseOk('User has been updated successfully.', ['update_user' => $update_user]);
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
            return $this->responseOk('A reset password link has been sent to your registered email address.');
        }
    }


    public function resetPassword(Request $request){
        if($request->isMethod('GET')) {
            $token = $request->reset_password_token;
            $tokenData = DB::table('password_resets')
                        ->whereToken($token)->first();
            if(!$tokenData){
                return redirect(route('passwordResetInvalid'));
            }
            if(Carbon::now() > Carbon::parse($tokenData->created_at)->addMinutes(10)){
                return redirect(route('passwordResetInvalid'));
            }
            return view('emails.reset-password', compact('token'));
        }
        if($request->isMethod('post')) {
            $token = $request->reset_password_token;
            $tokenData = DB::table('password_resets')
                        ->whereToken($token)->first();
            if(!$tokenData){
                return redirect(route('passwordResetInvalid'));
            }
            if(Carbon::now() > Carbon::parse($tokenData->created_at)->addMinutes(10)){
                return redirect(route('passwordResetInvalid'));
            }
            $validator = $this->is_validationRuleWeb(Validation::userAppReset($Validation = "", $message = "") , $request);
            if(!empty($validator)){
                return $validator;
            }
            $user = $this->profileModel->reset($request,$token,$tokenData);
            return redirect(route('passwordReset'));
        }
    }

    
   

    public function viewMessageResetPassword(){
        $title = "Password Reset Success";
        $message = "Password has been reset successfully.";
        $type = "success";
        $link = "";
        return view('emails.feedback', compact('title', 'message', 'type'));
    }

    public function viewMessageResetPasswordInvalid(){
        $title = "Invalid link";
        $message = "Your forgot password link is either expired or invalid.";
        $type = "danger";
        return view('emails.feedback', compact('title', 'message', 'type'));
    }

    public function confirmAccount(Request $request){
        $token = $request->verify_email_token;
        $user = User::whereVerifyEmailToken($token)->first();
        if($user){
            $user->verify_email_token = null;
            $user->is_verify = 1;
            $user->update();
            $title = "Email verified";
            $message = "Your email address has been verified successfully.";
            $type = "success";
            $link = "";
            return view('emails.feedback', compact('title', 'message', 'type'));
        }else{
            $title = "Invalid link";
            $message = "Your verification link is either expired or invalid.";
            $type = "danger";
            return view('emails.feedback', compact('title', 'message', 'type'));
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
            $response = $sms->sendToOne($data['country_code'].$data['mobile_number'], $message);
        } catch (\Exception $e) {
            return $this->responseWithErrorCode("Please enter valid phone number.",400);
        }

        $data['otp'] = $otp;

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
        $applicationData = ApplicationData::whereAdminId($admin->id)->whereDeletedAt(null)->with('applicationImages')->first();
        return $this->responseOk("Application Datas",['application_datas' => $applicationData]);
    }

}

