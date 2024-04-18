<?php

namespace App\Http\Controllers\Admin;

header('Cache-Control: no-store, private, no-cache, must-revalidate');
header('Cache-Control: pre-check=0, post-check=0, max-age=0, max-stale = 0', false);
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Hash;
use Illuminate\Support\Str;
use Session;
use Artisan;
use Carbon\Carbon;
use DB;
use App\Validation;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
use Auth;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;
use Redirect;
use Illuminate\Support\Facades\Input;
use Mail;
use App\BusinessModel\AdminAuthenticateBusiness;
use App\Http\Controllers\Admin\ResponseController;
use App\Models\GeneralSetting;

class AuthenticationController extends ResponseController
{

    public function adminAuthenticateBusiness(){
        return new AdminAuthenticateBusiness();
    }
    public function login(Request $request){
    	if($request->isMethod('GET')){

            if(Auth()->guard('admin')->user()){
                return redirect(route('admin.adminTabs'));
            }

    		return view('admin/login');
    	}

    	if($request->isMethod('POST')){

    		$validator = $this->is_validationRuleWeb(Validation::adminLoginValidation($Validation = "", $message = "") , $request);
    		if(!empty($validator)){
                return $validator;
            }

            $data = $request->all();

            $login = $this->adminAuthenticateBusiness()->login($data);

            if($login['status'] == "2"){
                Session::flash('danger', $login['error']);
                return redirect()->back();
            }else{
                Session::flash('message', $login['success']);
                return redirect(route('admin.adminTabs'));
            }
    	}
    }

    public function logout(Request $request){
        $logout = Auth()->guard('admin')->logout();
        Session::flush();
        return redirect(route('admin.login'));
    }

    public function forgotPassword(Request $request){
      if($request->isMethod('GET')){
        if(Auth::guard("admin")->check()){
                  return redirect(route('admin.adminTabs'));
              }
          return view('admin.forgot-password');
        }
      if($request->isMethod('POST')){
  
        $validator = $this->is_validationRuleWeb(Validation::adminValidationForForgotPassword($Validation = "", $message = "") , $request);
  
            if(!empty($validator)){
                return $validator;
            }
  
            $data = $request->all();
            $forgotPassword = $this->adminAuthenticateBusiness()->forgotPassword($data);
        if($forgotPassword['status'] == "1"){
            Session::flash('message', $forgotPassword['success']);
            return redirect()->back();
          }else{
            Session::flash('danger', $forgotPassword['error']);
            return redirect()->back();
          }
  
        }
  
    }


    public function resetPassword(Request $request , $token){
      if ($request->isMethod("GET")){
              // return $token; 
              $tokenData = DB::table('password_resets')
                          ->where('token' ,$token)->first();

              if(!$tokenData) {
                  return redirect("admin/link-expired");
              }
              if(Carbon::now() > Carbon::parse($tokenData->created_at)->addMinutes(10)){
                  return redirect("admin/link-expired")->with("error","Invalid token");
              } 
              $general_setting = GeneralSetting::all();
              return view("admin.email.reset-password",  compact('general_setting'));
          }
      if($request->isMethod("POST")){
        
        $validator = $this->is_validationRuleWeb(Validation::adminValidationForResetPassword($Validation = "", $message = "") , $request);
  
        if(!empty($validator)){
            return $validator;
        }
              
        $token = $request->token;
        $data = $request->all();
        $resetPassword = $this->adminAuthenticateBusiness()->resetPassword($data,$token);
        if($resetPassword['status'] == "2"){
          Session::flash('danger', $resetPassword['error']);
            return redirect()->back();
        }else{
            Session::flash('message', $resetPassword['success']);
            return redirect(route('admin.feedbackReset'));
        }
      }
                
    }

    public function PrivacyPolicy(Request $request){
      if($request->isMethod('GET')){
        return view("admin.privacy_policy");
      }
    }

    public function feedbackReset(Request $request){
      $title   = "Reset Your Password";
      $message = "Your password has been successfully updated.";
      $type    = "success";
      $general_setting = GeneralSetting::all();
      return view("admin.email.feedback" , compact("title" , "message" , "type", "general_setting"));
    }

   public function linkExpired(Request $request){
      $title   = "Link Expired";
      $message = "Link has been expired.";
      $type    = "error";
      $general_setting = GeneralSetting::all();
      return view("admin.email.feedback" , compact("title" , "message" , "type", "general_setting"));
   }

  public function lg(Request $request){
    $logout = Auth()->guard('admin')->logout();
    Session::flush();
    Session::flash('danger','Your account has been inactivated by admin or super admin.');
    return redirect(route('admin.login'));
  }
}
