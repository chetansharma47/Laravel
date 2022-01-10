<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Validation extends Model
{

	//App User Athuntication Validation
    public static function userAppRegister($validation = null, $message = null){

    	$validation = [
            'image'             => 'sometimes|nullable',
            'country_code'      => 'required',
            'mobile_number'     => 'required|numeric|digits_between:8,15|unique:users,mobile_number',
            'first_name'        => 'required|max:50',
    		    'last_name'         => 'required|max:50',
            'email'        	    => 'required|max:100|unique:users,email',
            'password'     	    => ['required',
                                'max:100',
                                'min:6'],
            'city_of_residence' => 'required|max:100',
            'nationality'       => 'required|max:50',
            'dob'               => 'required|date_format:Y-m-d',
            'gender'            => 'required|in:Male,Female,Other',
            'reference_code'    => 'sometimes|nullable|max:12',
            'timezone'          => 'required'

    	];

    	$message = [
              'country_code.required'       =>  "Please enter country code",
              'mobile_number.required'      =>  "Please enter mobile number.",
              'mobile_number.numeric'       =>  "Mobile number should be numeric only.",
              'mobile_number.digits_between' =>  "Mobile number should be between 8 to 15 digits only.",
              'mobile_number.unique'        =>  "Mobile number already registered with us. Please use another mobile number.",
              'image.required'              =>  "Please enter image.",
              'first_name.required'         =>  "Please enter first name.",
              'last_name.required'          =>  "Please enter last name.",
              'email.required'              =>  "Please enter email.",
              'email.unique'                =>  "Email already exists.",
              'password.required'           =>  "Please enter password.",
              'password.min'                =>  "Password must be at 6 characters long.",
              'city_of_residence.required'  =>  "Please enter city of residence.",
              'city_of_residence.max'       =>  "City of residence should be less than 100 characters.",
              'nationality.required'        =>  "Please enter nationality.",
              'nationality.max'             =>  "Nationality should be less than 50 characters.",
              'dob.required'                =>  "Please enter DOB.",
              'dob.date_format'             =>  "DOB should be Y-m-d format only.",
              'gender.required'             =>  "Please enter gender.",
              'gender.in'                   =>  "Gender should be male,female,other only.",
              'reference_code.max'          =>  "Referral code should be less than or equal to 12 characters."
    	];

    	return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function userAppLogin($validation = null, $message = null){


        $validation = [
            'email' => 'required',
            'password'     	=> 'required',
            'device_type'   => 'required|in:Ios,Android',  //I=>IOS, A=>Android
            'device_token'  => 'required',
           
        ];
        
        $message = [
            'email.required'    => 'Please enter email or mobile number.',
            'password.required'  => 'Please enter password.',
            'device_type.required' => 'Please enter device type.',
            'device_token.required' => 'Please enter device token.',
             
        ];

        return $data = ['validation' => $validation, 'message' => $message];
    }

    
    public static function userAppForgot($validation = null, $message = null){


        $validation =  [
            'email' => 'required|email|exists:users,email'
        ];

        $message = [
            'email.required'    => 'Please enter email address.',
            'email.email'       => 'Please enter valid email address.',
            'email.exists'      => 'Please enter registered email address.'
        ];

        return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function userAppChangePassword($validation = null, $message = null){
        $validation =  [
            'old_password'              =>      'required',
            'new_password'              =>      ['required',
                                                'max:100',
                                                'min:6']
        ];

        $message = [
            'password.required'                 => 'Please enter old password.',
            'new_password.required'             => 'Please enter new password.',
            'new_password.min'                  =>  "New Password must be at 6 characters long.",
            'new_password.regex'                =>  "New Password must have at least 1 upper case character and 1 lower case character and 1 special character."
        ];
        
        return $data = ['validation' => $validation, 'message' => $message];

    }

    public static  function userAppReset($validation = null, $message = null){

        $validation =  [
            'password'          => ['required',
                                    'max:100',
                                    'min:6'],
            'confirm_password'  => 'required|same:password',
         ];

         $message = [
             'password.required'          => 'Please enter new password.',
             'password.min'               =>  "New Password must be at 6 characters long.",
             'password.regex'             =>  "New Password must have at least 1 upper case character and 1 lower case character and 1 special character.",
             'confirm_password.required'  => 'Please enter confirm password.',
             'confirm_password.same'      => 'New password and confirm password must be same.',
             'password.min'               => 'The new password must be at least 6 characters.',
             'password.max'               => 'The new password may not be greater than 100 characters.'
        ];
        
        return $data = ['validation' => $validation, 'message' => $message];

    }

  public static function userAppUpdateUser($validation = null, $message = null){


      $validation = [
            'country_code'      => 'sometimes|nullable',
            'mobile_number'     => 'sometimes|nullable|numeric|digits_between:8,15|unique:users,mobile_number',
            'email'             => 'sometimes|nullable|email|max:100|unique:users,email',
            'city_of_residence' => 'sometimes|nullable|max:100',
            'password'  => ['sometimes','nullable','max:100','min:6'],
            'confirm_password'  => 'sometimes|required|same:password',
            'otp'  => 'sometimes|nullable|min:4',
            'first_name'        => 'sometimes|max:50',
            'last_name'         => 'sometimes|max:50',
            'nationality'       => 'sometimes|max:50',
            'dob'               => 'sometimes|date_format:Y-m-d',
            'gender'            => 'sometimes|in:Male,Female,Other',


      ];

      $message = [
              'country_code.required'         =>  "Please enter country code",
              'mobile_number.required'        =>  "Please enter mobile number.",
              'mobile_number.numeric'         =>  "Mobile number should be numeric only.",
              'mobile_number.digits_between'  =>  "Mobile number should be between 8 to 15 digits only.",
              'mobile_number.unique'        =>  "Mobile number already registered with us. Please use another mobile number.",
              'email.unique'                  =>  "Email address already registered with us. Please use another email address.",
              'email.email'       => 'Please enter valid email address.',
              'city_of_residence.max'         =>  "City of residence should be less than 100 characters.",
              'password.required'             => 'Please enter new password.',
              'password.min'                  =>  "New Password must be at 6 characters long.",
              'confirm_password.required'     => 'Please enter confirm password.',
              'confirm_password.same'         => 'New password and confirm password must be same.',
              'password.min'                  => 'The new password must be at least 6 characters.',
              'password.max'                  => 'The new password may not be greater than 100 characters.',
              'otp.required'                  =>  "Please enter OTP.",
              'otp.min'                  =>  "Please enter valid OTP.",
              'first_name.required'         =>  "Please enter first name.",
              'last_name.required'          =>  "Please enter last name.",
              'nationality.required'        =>  "Please enter nationality.",
              'nationality.max'             =>  "Nationality should be less than 50 characters.",
              'dob.required'                =>  "Please enter DOB.",
              'dob.date_format'             =>  "DOB should be Y-m-d format only.",
              'gender.required'             =>  "Please enter gender.",
              'gender.in'                   =>  "Gender should be male,female,other only.",
              
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }


    public static function sendOTP($validation = null, $message = null){


      $validation = [
            'country_code'      => 'required',
            'mobile_number'     => 'required|numeric|digits_between:8,15|unique:users,mobile_number'

      ];

      $message = [
              'country_code.required'       =>  "Please enter country code",
              'mobile_number.required'      =>  "Please enter mobile number.",
              'mobile_number.numeric'       =>  "Mobile number should be numeric only.",
              'mobile_number.digits_between' =>  "Mobile number should be between 8 to 15 digits only.",
              'mobile_number.unique'        => "Mobile number already registered with us. Please use another mobile number."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function verifyOTP($validation = null, $message = null){


      $validation = [
            'country_code'      => 'required',
            'mobile_number'     => 'required|numeric|digits_between:8,15',
            'otp'               => 'required'

      ];

      $message = [
              'country_code.required'       =>  "Please enter country code",
              'mobile_number.required'      =>  "Please enter mobile number.",
              'mobile_number.numeric'       =>  "Mobile number should be numeric only.",
              'mobile_number.digits_between'=>  "Mobile number should be between 8 to 15 digits only.",
              'otp.required'                =>  "Please enter OTP."  
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function todayEvent($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function offerList($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function eventAndPromotion($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function cashbackListing($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function assignBadgeListing($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function getUserDataValidation($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function getSearchUserDataValidation($validation = null, $message = null){


      $validation = [
            'search_txt'      => 'required'
      ];

      $message = [
        'search_txt.required'           =>  "Please enter Customer ID or Mobile Number."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function PayAmount($validation = null, $message = null){
      $validation = [
            'timezone'      => 'required',
            'user_id'       => 'required',
            'description'   => 'sometimes||nullable|max:500',
            'invoice_number' => 'required|max:50',
            'redeemed_amount'  => 'sometimes|nullable|numeric|min:0|max:10000000',
            'total_bill_amount'    => 'required|numeric|max:10000000'
      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone.",
        'user_id.required'        =>  "Please enter user id.",
        'description.sometimes'   =>  "Please enter description id.",
        'redeemed_amount.required'  =>  "Please enter redeemed amount.",
        'total_bill_amount.required'    =>  "Please enter total bill amount."
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }

    public static function offerRedeemed($validation = null, $message = null){
      $validation = [
            'timezone'      => 'required',
            'user_id'       => 'required|exists:users,id',
            'offer_id'       => 'required|exists:offers,id'
      ];

      $message = [
        'user_id.required'        => "Please enter user id.",
        'timezone.required'       =>  "Please enter timezone.",
        'offer_id.required'        =>  "Please enter offer id."
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }



    public static function readNotification($validation = null, $message = null){
      $validation = [
            'timezone'      => 'required',
            'type_of_read'  => 'required|in:wallet,offer,event,normal'
      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone.",
        'type_of_read.required'   =>  "Please enter type of read.",
        'type_of_read.in'         =>  "Type of read should be wallet,offer,event & normal only.",
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }


    public static function sendOtpIpadValidation($validation = null, $message = null){


      $validation = [
            'timezone'      => 'required',
            'user_id'       => 'required|exists:users,id',
            'redeemed_amount' => 'sometimes|nullable|numeric'

      ];

      $message = [
        'timezone.required'       =>  "Please enter timezone."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function venuUserAppLogin($validation = null, $message = null){


      $validation = [
          'username'      => 'required',
          'password'      => 'required',
          'device_model'  => 'required',
          'mac_address'   => 'required',
          'venu_id'       => 'required|exists:venus,id,deleted_at,NULL',
          'timezone'      => 'required',
          'device_type'   => 'required|in:Ipad',  //I=>IOS, A=>Android
          'device_token'  => 'required',
         
      ];
      
      $message = [
        'username.required'     => 'Please enter username.',
        'password.required'     => 'Please enter password.',
        'device_model.required' => 'Please enter device model.',
        'mac_address.required'  => 'Please enter device mac address.',
        'venu_id.exists'        => 'The selected venue may be deleted or inactivate by the admin.',
        'device_type.required'  => 'Please enter device type.',
        'device_type.in'        => 'Device type should be Ipad only.',
        'device_token'          => 'Please enter device token.'
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }


    /*ADMIN VALIDATIONS*/

    public static function adminLoginValidation($validation = null, $message = null){


      $validation = [
            'email'      => 'required',
            'password'     => 'required'

      ];

      $message = [
              'email.required'  =>  "Please enter email address.",
              'password.required' =>  "Please enter password."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function adminValidationForForgotPassword($validation = null, $message = null){

        $validation = [
          'email'  =>  'required',  
        ];
        $message = [
          'email.required'  => '* Please enter email address.',  
        ];
        return $data = ['validation' => $validation, 'message' => $message];
    }

    public static function adminValidationForResetPassword($validation = null, $message = null){

        $validation = [ 
          'new_password'  =>  'required', 
          'confirm_password'  =>  'required', 
        ];
        $message = [ 
          'new_password.required'  => 'Please enter new password.',
          'confirm_password.required'  => 'Please confirm new password.', 
        ];
        return $data = ['validation' => $validation, 'message' => $message];
      }

    /*END OF ADMIN VALIDATION*/


    /*POS LOGIN Validation APP*/

    public static function scanPosValidate($validation = null, $message = null){


      $validation = [
          'venue_pos_id' => 'required|exists:venus,pos_venue_id',
          'user_id'  => 'required',
          'timezone'  => 'required'
         
      ];
      
      $message = [
        'venue_pos_id.required' => 'Please enter venue POS ID.',
        'user_id.required'     => 'Please enter user ID.'
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }

    public static function posPayBillValidate($validation = null, $message = null){


      $validation = [
          'venue_pos_id' => 'required|exists:venus,pos_venue_id',
          'user_id'  => 'required',
          'timezone'  => 'required',
          'description'   => 'sometimes||nullable|max:500',
          'invoice_number' => 'required|max:50',
          'redeemed_amount'  => 'sometimes|nullable|numeric|min:0|max:10000000',
          'total_bill_amount'    => 'required|numeric|max:10000000'
         
      ];
      
      $message = [
        'venue_pos_id.required' => 'Please enter venue POS ID.',
        'user_id.required'     => 'Please enter user ID.',
        'timezone.required'    => 'Please enter timezone.',
        'description.sometimes'   =>  "Please enter description id.",
        'invoice_number.required' => "Please enter invoice number.",
        'redeemed_amount.required'  =>  "Please enter redeemed amount.",
        'total_bill_amount.required'    =>  "Please enter total bill amount."
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }
    
    public static function contactUsEmail($validation = null, $message = null){
      $validation = [
            'message'      => 'required|max:500',
      ];

      $message = [
        'message.required'       =>  "Please enter message.",
      ];

      return $data = ['validation' => $validation, 'message' => $message];
    }

}

