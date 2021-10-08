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
require_once $_SERVER['DOCUMENT_ROOT'].'/society_06_october/vendor/autoload.php';

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
            $user_find = User::whereSelfReferenceCode($data['reference_code'])->first();
            if(empty($user_find)){
                return $this->responseWithErrorCode("Please enter valid referral code.",406);
            }
        }

        
        $register = $this->profileModel->register($request, $id = null);
        if($register['status'] == 0){
            return $this->responseWithErrorCode($register['error_msg'], 400);
        }
        return $this->responseOk("Now login with your mobile number, to login with email address Please verify the email address.", ['register' => $register['data']]);
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
            $user_id = $request->user_id;
            $tokenData = DB::table('password_resets')
                        ->whereToken($token)->first();
            if(!$tokenData){
                return redirect(route('passwordResetInvalid',$user_id));
            }
            if(Carbon::now() > Carbon::parse($tokenData->created_at)->addMinutes(10)){
                return redirect(route('passwordResetInvalid', $user_id));
            }
            return view('emails.reset-password', compact('token'));
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
            $user = $this->profileModel->reset($request,$token,$tokenData);

            if($user == 0){
                Session::flash('danger', "New password looks same as old password, Please try a different password.");
                return redirect()->back();
            }
            return redirect(route('passwordReset', $user_id));
        }
    }

    
   

    public function viewMessageResetPassword(Request $request){
        $user_id = base64_decode($request->user_id);
        $user = User::whereId($user_id)->first();
        $title = "Reset Your Password";
        $message = "Your password has been succesfully updated.";
        $type = "success";
        $link = "";
        return view('emails.feedback', compact('title', 'message', 'type','user'));
    }

    public function viewMessageResetPasswordInvalid(Request $request){
        $user_id = base64_decode($request->user_id);
        $user = User::whereId($user_id)->first();
        $title = "Invalid link";
        $message = "Your forgot password link is either expired or invalid.";
        $type = "danger";
        return view('emails.feedback', compact('title', 'message', 'type','user'));
    }

    public function confirmAccount(Request $request){
        $token = $request->verify_email_token;
        $user = User::whereVerifyEmailToken($token)->first();
        if($user){
            $user->verify_email_token = null;
            $user->is_verify = 1;
            $user->update();
            $title = "Email verified";
            $message = "Your email has been verified.";
            $type = "success";
            $link = "";
            return view('emails.feedback', compact('title', 'message', 'type','user'));
        }else{
            $title = "Invalid link";
            $message = "Your verification link is either expired or invalid.";
            $type = "danger";
            return view('emails.feedback', compact('title', 'message', 'type','user'));
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
        $applicationData = ApplicationData::whereAdminId($admin->id)->whereDeletedAt(null)->with('applicationImages')->first();
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
        $venues = Venu::select("id","venue_name","image")->whereDeletedAt(null)->whereStatus('Active')->get();
        return $this->responseOk("Venue Listing", ['venue_listing' => $venues]);
    }

    public function venueDetails(Request $request, $venue_id){
        $venue = Venu::whereId($venue_id)->whereDeletedAt(null)->whereStatus('Active')->with('events')->first();
        return $this->responseOk('Venue Details', ['venue_details' => $venue]);
    }

    public function eventListing(Request $request){
        $user = Auth::guard()->user();
        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');
        $today_days = Carbon::now()->format('l');
        $events = Event::whereDeletedAt(null)->whereStatus('Active')->whereIn('venu_id', $active_venue_ids)->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days)->with('venu')->get();

        return $this->responseOk('Event Listing', ['event_listing' => $events]);
    }

    public function eventDetails(Request $request, $event_id) {
        $event = Event::whereId($event_id)->whereDeletedAt(null)->with('venu')->first();
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


        $user_assign_offers = UserAssignOffer::whereUserId($user->id)->whereOfferRedeem(0)->pluck('offer_id');

        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');

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
        

        return $this->responseOk('Offer Listing', ['offer_listing' => $offers]);
    }

    public function offerDetails(Request $request, $offer_id){
        $offer = Offer::whereId($offer_id)->whereDeletedAt(null)->whereStatus('Active')->with('offerSetting','venu')->first();
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
        $today_date = Carbon::now();

        $user = Auth::guard()->user();
        $active_venue_ids = Venu::where('status' , 'Active')->where('deleted_at' , null)->pluck('id');
        $today_days = Carbon::now()->format('l');
        $events = Event::where(function($query) use ($user,$today_date, $active_venue_ids, $today_days){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                        $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);
                        $query->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days);
                    })->with('venu')->get();

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
        $events = Event::where(function($query) use ($user,$today_date, $active_venue_ids, $today_days){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                       // $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);
                       // $query->whereRaw("FIND_IN_SET(?, when_day) > 0", $today_days);
                    })->with('venu')->get();

        $promotion = Cashback::where(function($query) use ($user,$today_date, $active_venue_ids, $today_days){
                        $query->whereDeletedAt(null);
                        $query->whereStatus('Active');
                        $query->whereDate('from_date', '<=', $today_date->toDateString());
                        $query->whereDate('to_date','>=', $today_date->toDateString());
                        $query->whereIn('venu_id', $active_venue_ids);
                        $query->whereRaw("FIND_IN_SET(?, day_on) > 0", $today_days);
                    })->with('venu')->get();

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

}

