<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\Admin;
use Auth;
use Illuminate\Support\Str;
use DB;
use Mail;
use App\Mail\ForgotAdminPassword;
use Hash;
class AdminAuthenticateBusiness extends Model
{
    public function login($data){

    	$admin_find = Admin::whereEmail($data['email'])->first();

    	if(!empty($admin_find)){

    		if(Auth::guard('admin')->attempt(array('email' =>  $data['email']  , 'password' => $data['password'] ))){

                $remember_token = str_random(64);
	    		$admin_find->remember_token = $remember_token;
	    		$admin_find->update();

	    		return ['status' => "1", 'success' => "Admin logged in successfully."]; 

			}else{
				return ['status' => "2", 'error' => "Please enter valid email address or password."];
			}

    	}else{

    		return ['status' => "2", 'error' => "Please enter valid email address or password."];
    	}
    }

    public function forgotPassword($data){
        $exist = Admin::whereEmail($data['email'])->first();
        $token = Str::random(32);
        $link = url('admin/reset-password',$token);

        if ($exist) {
            DB::table('password_resets')->insert([
                        'email' => $data['email'],
                        'token' => $token,
                        ]);
                $email = $data['email'];

            Mail::to($email)->send(new ForgotAdminPassword($link));
            return ['status' => "1", 'success' => "A reset password link has been sent to your registered email address."];
        }else{
            return ['status' => "2", 'error' => "This email address is not registered with us, please enter registered email address."];
        }

    }

    public function resetPassword($data,$token){
        $getDetails = DB::table('password_resets')->whereToken($token)->first();
         
        if($getDetails) {
            $email = $getDetails->email;

            $password = Hash::make($data['new_password']);
            $data = array('password'=>$password);

            $is_updated  = Admin::where("email",$email)->update($data);

            if($is_updated)
            {
                DB::table('password_resets')->where("email",$email)->delete();
                return ['status' => "1", 'success' => "Your password changed successfully."];
                
            }else {
                
                return ['status' => "2", 'error' => "Unable to reset your password."];
            }
             
        }else {
            return ['status' => "2", 'error' => "Unable to reset your password."];
            
        }
    }
}
