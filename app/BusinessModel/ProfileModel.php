<?php
namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use Hash;
use App\User;
use App\Models\VenueUser;
use GuzzleHttp;
use Auth;
use Mail;
use DB;
use Carbon\Carbon;
use App\Mail\UserVerifyMail;
use App\Mail\UserForgotPassword;
use App\Models\TierCondition;
use App\Models\LoginRequest;
use App\Models\Venu;
use App\Models\AssignUserVenue;
use App\Models\WalletCashback;
use Picqer;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use App\Mail\SignupMail;
use App\Models\AdminNotification;
use App\Models\Otp;
class ProfileModel extends Model
{

    /* Confirm Status Code when return response
      status code response
      0 => 400,
      1 => 401,
      2 => 402,
      3 => '403',
      4 => 404,
      5=> 406,
      6 => 201,
      7=> 202,
      8 => 200
    
    */

    public static function uploadImage($image, $destinationPath){
        $imageName = date('mdYHis') . uniqid() . '.' . str_replace(" ", "_", $image->getClientOriginalExtension());
        $image->move($destinationPath, $imageName);
        return $imageName;
    }

    public static function createUser($data){
        return User::create($data);
    }

    public static function updateUserProfile($data, $user){
        $id = $user->id;

        if(!empty($data['mobile_number']) && !empty($data['country_code']) && !empty($data['otp'])){
           $find_otp = Otp::whereOtp($data['otp'])->whereMobileNumber($data['mobile_number'])->whereCountryCode($data['country_code'])->first();
            if($find_otp){
            $find_otp->delete();
                $update_user = $user->update(['mobile_number' => $data['mobile_number'], 'country_code' => $data['country_code'] ]);
                  return ["status" => 1, "success_msg" => "Mobile number has been updated successfully."];
            }else{
                return ["status" => 2, "error_msg" => "Please enter valid OTP."];
            }
        }

        if(!empty($data['email'])){
            $data['first_name']=$user->first_name;
            $data['last_name']=$user->last_name;
            $token = str_random(64);
            try{
                $link = url("confirm-account/$token");
                \Mail::to($data['email'])->send(new UserVerifyMail($data, $link));
            }catch(\Exception $ex){
                return ["status" => 0, "data" => null, "error_msg" => "Something went wrong."];
            }

            $update_user = $user->update(['email' => $data['email'],  'verify_email_token' => $token, 'is_verify' => 0]);
            return ["status" => 3, "success_msg" => "Email has been updated successfully."];
        }

        if(!empty($data['city_of_residence'])){
            $update_user = $user->update(['city_of_residence' => $data['city_of_residence'] ]);
            return ["status" => 4, "success_msg" => "City has been updated successfully."];
        }

        /*if(!empty($data['password']) && !empty($data['confirm_password']) && !empty($data['old_password']) ){
            if(Hash::check($data['old_password'], $user->password)){
                $data['password'] = Hash::make($data['password']);
                $update_user = $user->update(['password' => $data['password']]);
                return ["status" => 5, "success_msg" => "Password has been updated successfully."];
            }else{
                return ["status" => 6, "error_msg" => "Invalid password."];
            }
        }*/

        if(!empty($data['password']) && !empty($data['confirm_password'])){
            $data['password'] = Hash::make($data['password']);
            $update_user = $user->update(['password' => $data['password']]);
            return ["status" => 5, "success_msg" => "Password has been updated successfully."];
        }
        
        return User::find($id);
    }

    public static function updateUser($data, $user){
        $id = $user->id;

        if(isset($data['image'])){
            $destinationPath = storage_path() . DIRECTORY_SEPARATOR . env('IMG_STORAGE');
            $image_name = self::uploadImage($data['image'], $destinationPath);
            $data['image'] = $image_name;
        }

        if(!empty($data['first_name']) && !empty($data['last_name'])){
            User::whereReferenceCode($user->customer_id)->update(['reference_by' => $data['first_name'] . " " . $data['last_name']]);
        }
        
        $update_user = $user->update($data);
        return User::find($id);
    }

    public function getProfile($id){
        if(empty($id)){
            $user = Auth::guard()->user();
            $tier = TierCondition::whereTierName($user->customer_tier)->orderBy('id','desc')->first();
            $user->tier = $tier;
            return $user;
        }else{
            $user = User::whereId($id)->first();
            $tier = TierCondition::whereTierName($user->customer_tier)->orderBy('id','desc')->first();
            $user->tier = $tier;
            return $user;
        }
    }

    public function logout($request, $user){
        DB::table("oauth_access_tokens")
                        ->where("user_id",$user->id)
                        ->where("revoked","=",0)
                        ->update(["revoked" => 1]);
        $data = ['device_type' => 'None', 'device_token' => null];
        self::updateUser($data, $user);
        return 1;
    }

    public function register($request, $id){
        $data = $request->all();
        $data['customer_id'] = mt_rand(10000000000,99999999999);

        $bonus = 0;
        $refer_amount = 0;
        $data['self_reference_code'] = str_random(4).mt_rand(1000,9999).str_random(4);
        $find_wallet_cashback = WalletCashback::whereDeletedAt(null)->first();
        if(!empty($find_wallet_cashback)){
            $bonus = $find_wallet_cashback->bonus;
            $refer_amount = $find_wallet_cashback->refer_friend;
        }
        if($data['reference_code']){
            $user_find = User::whereSelfReferenceCode($data['reference_code'])->first();
            $data['reference_by'] = $user_find->first_name . " " . $user_find->last_name;
            $data['refer_amount'] = $refer_amount;

        }
        $data['wallet_cash'] = $bonus;
        $tier_first = TierCondition::whereDeletedAt(null)->orderBy('to_amount','asc')->first();
        if(!empty($tier_first)){
            $data['customer_tier'] = $tier_first->tier_name;
            $data['tier_update_date'] = Carbon::now()->toDateString();
        }
        $token = str_random(64);
        try{
            $link = url("confirm-account/$token");
            \Mail::to($data['email'])->send(new UserVerifyMail($data, $link));
        }catch(\Exception $ex){
            return ["status" => 0, "data" => null, "error_msg" => "Something went wrong."];
        }

        if($request->file('image')){
            $destinationPath = storage_path() . DIRECTORY_SEPARATOR . env('IMG_STORAGE');
            $image_name = self::uploadImage($data['image'], $destinationPath);
            $data['image'] = $image_name;
        }

        $data['password'] = Hash::make($request->password);
        $data['verify_email_token'] = $token;
        $save_user = self::createUser($data);


        $generator = new Picqer\Barcode\BarcodeGeneratorPNG();
        $imageName = date('mdYHis') . rand(10,100) . uniqid().'.png';
        $destinationPath = storage_path('app/public/bar_code').'/'.$imageName;

        file_put_contents($destinationPath, $generator->getBarcode((string)$save_user->id.",cp", $generator::TYPE_CODE_128));


        //QR CODE

        $imageName1 = date('mdYHis') . rand(10,100) . uniqid().'.png';
        $img_store = storage_path() . '/'. env('QR_CODE_STORAGE') . '/' . $imageName1;
        $qr_code = \QrCode::format('png')
                    ->size(500)->errorCorrection('H')
                    ->backgroundColor(199,199,199)
                    ->generate($save_user->self_reference_code, $img_store);
        //

        $save_user->bar_code = $imageName;
        $save_user->qr_code = $imageName1;

        $save_user->update();

        $admin_signup_notification_email = AdminNotification::where("uniq_id","=",7)->first();
        if(!empty($admin_signup_notification_email)){

            if(!empty($admin_signup_notification_email->title) && !empty($admin_signup_notification_email->message) && !empty($admin_signup_notification_email->image)){
               
                $prefix = "attachment_mail/";
                $index = strpos($admin_signup_notification_email->image, $prefix) + strlen($prefix);
                $file_name = substr($admin_signup_notification_email->image, $index);
                try{
                    \Mail::to($save_user->email)->send(new SignupMail($admin_signup_notification_email, $save_user, $file_name));
                }catch(\Exception $ex){
                    //return $ex->getMessage();
                }
            }
        }


        $save_user->access_token = $save_user->createToken('andrew')->accessToken;
        $user_get = $save_user;            
        return ["status" => 8, "data" => $user_get, "error_msg" => ""];
    }

    public function login($request){
        $email_mobile_number = $request->email;
        $password = $request->password;
        $device_type = $request->device_type;
        $device_token = $request->device_token;
        $user = User::whereEmail($email_mobile_number)->orWhere(DB::raw("CONCAT(users.country_code,users.mobile_number)"),'=',"+".$email_mobile_number)->first();

        $is_mobile_number = User::where(DB::raw("CONCAT(users.country_code,users.mobile_number)"),'=',"+".$email_mobile_number)->first();
        $data = [];
        if(!empty($user)){

            if(Hash::check($password, $user->password)){

                if(empty($is_mobile_number)){

                    if($user->is_verify == 0){
                        return ["status" => 3, "data" => null, "error_msg" => "Please verify the email address first to login."];
                    }
                }

                if($user->deleted_at != null){
                    return ["status" => 2, "data" => null, "error_msg" => "Your account has been deleted by admin."];
                }
                if($user->is_block == 1){
                    return ["status" => 2, "data" => null, "error_msg" => "Your account has been blocked by admin."];
                }

                DB::table("oauth_access_tokens")
                        ->where("user_id",$user->id)
                        ->where("revoked","=",0)
                        ->update(["revoked" => 1]);

                $data['device_type'] = $device_type ? $device_type : 'None';
                $data['device_token'] = $device_token ? $device_token : null;
                //$data['is_active'] = 'Active';
                
                $user_data = self::updateUser($data,$user);
                $user_data->access_token = $user_data->createToken('andrew')->accessToken;
                return ["status" => 8, "data" => $user_data, "error_msg" => ""];
            }else{
                return ["status" => 5, "data" => null, "error_msg" => "Invalid mobile number / email address or password."];
            }
        }else{
            return ["status" => 5, "data" => null, "error_msg" => "Invalid mobile number / email address or password."];
        }
    }


    public function forgot($request){
        $email = $request->email;
        $user = User::whereEmail($email)->first();
        if($user->is_blocked == 1){
          return ["status" => 3, "data" => null, "error_msg" => "Your account has been blocked by admin."];
        }
        if($user->is_verify == 0){
          return ["status" => 3, "data" => null, "error_msg" => "Please verify the email address first to reset the password."];
        }
        if($user->deleted_at != null){
          return ["status" => 3, "data" => null, "error_msg" => "Your account has been deleted by admin."];
        }
        $user_id = $user->id;
        $reset_password_token = str_random(64);
        $link = url("reset-password/$reset_password_token") . "/" . base64_encode($user_id);
        try{
          \Mail::to($user->email)->send(new UserForgotPassword($user, $link));

          DB::table('password_resets')->whereEmail($email)->delete();

          DB::table('password_resets')->insert(['email' => $user->email, 'token' => $reset_password_token,
                'created_at' => Carbon::now()]);
        }catch(\Exception $ex){
          return ["status" => 0, "data" => null, "error_msg" => "Something went wrong."];
        }
        return ["status" => 8, "data" => null, "msg" => "A reset password link has been sent to your registered email address."];
    }

    public function reset($request,$token, $tokenData){
        $data = [];
        $user = User::where(['email' => $tokenData->email])->first();

        if(Hash::check($request->password, $user->password)){
            return 0;
        }
        $data['password'] = Hash::make($request->password);
        $update_password = self::updateUser($data,$user);
        $deleteToken = DB::table('password_resets')->whereToken($token)->delete();
        return 1;
    }

    public function venueUserCustomLogin($request){
        $token = bcrypt('access_token');
        $user_find = VenueUser::whereUsername($request->username)->first();

        $venue_find = Venu::whereId($request->venu_id)->where('status', '=', 'Active')->whereDeletedAt(null)->first();

        if(empty($venue_find)){
            return ["status" => 3, "data" => null, "error_msg" => "The selected venue may be deleted or inactivate by the admin."];
        }

        if(!empty($user_find)){

            if(Hash::check($request->password, $user_find->password)){

                if($user_find->deleted_at != null){
                    return ["status" => 3, "data" => null, "error_msg" => "Your account has been deleted by admin."];
                }

                $find_assign_user_venue = AssignUserVenue::whereVenuId($request->venu_id)->whereVenueUserId($user_find->id)->first();
                if(empty($find_assign_user_venue)){
                    return ["status" => 3, "data" => null, "error_msg" => "The selected venue is not allocated to this user, please select correct venue."];
                }

                $find_login_request = LoginRequest::whereVenueUserId($user_find->id)->where('mac_address', '=', $request->mac_address)->whereVenuId($request->venu_id)->first();

                if(empty($find_login_request)){

                    if($user_find->status == "Inactive"){
                        return ["status" => 3, "data" => null, "error_msg" => "Your account has been inactive by admin."];
                    }

                    $user_find->access_token = $token;
                    $user_find->update();

                    $login_req = new LoginRequest();
                    $login_req->venue_user_id = $user_find->id;
                    $login_req->venu_id = $request->venu_id;
                    $login_req->device_model  = $request->device_model;
                    $login_req->mac_address   = $request->mac_address;
                    $login_req->authorized_status = "Unauthorized";
                    $login_req->date_time = Carbon::now()->toDateString(). " " . Carbon::now()->toTimeString();
                    $login_req->save();

                    return ["status" => 4, "data" => null, "error_msg" => "Your account authorization request is under process, please wait for confirmation."];
                }else{


                    if($find_login_request->authorized_status == "Unauthorized"){
                        return ["status" => 3, "data" => null, "error_msg" => "Your account has been unauthorized by admin."];
                    }

                    if($user_find->status == "Inactive"){
                        return ["status" => 3, "data" => null, "error_msg" => "Your account has been inactive by admin."];
                    }
                    $find_login_request->device_type = $request->device_type;
                    $find_login_request->device_token = $request->device_token;
                    $find_login_request->update();
                    $find_login_request->venue_name = $venue_find->venue_name;
                    $user_find->login_req = $find_login_request;

                    return ["status" => 8, "data" => $user_find, "error_msg" => ""];
                }

            }else{
                return ["status" => 5, "data" => null, "error_msg" => "Invalid username and password."];
            }
        }else{
            return ["status" => 5, "data" => null, "error_msg" => "Invalid username and password."];
        }
    }
}

