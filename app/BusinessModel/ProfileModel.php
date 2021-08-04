<?php
namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use Hash;
use App\User;
use GuzzleHttp;
use Auth;
use Mail;
use DB;
use Carbon\Carbon;
use App\Mail\UserVerifyMail;
use App\Mail\UserForgotPassword;
use App\Models\TierCondition;
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
            return Auth::guard()->user();
        }else{
            return User::whereId($id)->first();
        }
    }

    public function logout($request, $user){
        DB::table("oauth_access_tokens")
                        ->where("user_id",$user->id)
                        ->where("revoked","=",0)
                        ->update(["revoked" => 1]);
        $data = ['device_type' => 'None', 'device_token' => null,'is_active' => 'Inactive'];
        self::updateUser($data, $user);
        return 1;
    }

    public function register($request, $id){
        $data = $request->all();
        $data['customer_id'] = mt_rand(10000000000,99999999999);

        if($data['reference_code']){
            $user_find = User::whereCustomerId($data['reference_code'])->first();
            $data['reference_by'] = $user_find->first_name . " " . $user_find->last_name;
        }
        $tier_first = TierCondition::whereDeletedAt(null)->first();
        if(!empty($tier_first)){
            $data['customer_tier'] = $tier_first->tier_name;
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
                    return ["status" => 3, "data" => null, "error_msg" => "Your account has been deleted by admin."];
                }
                if($user->is_block == 1){
                    return ["status" => 3, "data" => null, "error_msg" => "Your account has been blocked by admin."];
                }

                DB::table("oauth_access_tokens")
                        ->where("user_id",$user->id)
                        ->where("revoked","=",0)
                        ->update(["revoked" => 1]);

                $data['device_type'] = $device_type ? $device_type : 'None';
                $data['device_token'] = $device_token ? $device_token : null;
                $data['is_active'] = 'Active';
                
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
        $link = url("reset-password/$reset_password_token");
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
}

