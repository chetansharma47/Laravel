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
}
