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
            'reference_code'    => 'sometimes|nullable|max:20',

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
              'reference_code.max'          =>  "Reference code should be less than 20 characters."
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

    public static function userAppUpdateUser($validation = null, $message = null, $user_id){


      $validation = [
            'country_code'      => 'sometimes|nullable',
            'mobile_number'     => 'sometimes|nullable|numeric|digits_between:8,15',
            'first_name'        => 'sometimes|nullable|max:50',
            'last_name'         => 'sometimes|nullable|max:50',
            'email'             => 'sometimes|nullable|email|max:100|unique:users,email,'.$user_id.',id',
            'city_of_residence' => 'sometimes|nullable|max:100',
            'nationality'       => 'sometimes|nullable|max:50',
            'dob'               => 'sometimes|nullable|date_format:Y-m-d',
            'gender'            => 'sometimes|nullable|in:Male,Female,Other',
            'reference_code'    => 'sometimes|nullable|max:20',

      ];

      $message = [
              'country_code.required'       =>  "Please enter country code",
              'mobile_number.required'      =>  "Please enter mobile number.",
              'mobile_number.numeric'       =>  "Mobile number should be numeric only.",
              'mobile_number.digits_between' =>  "Mobile number should be between 8 to 15 digits only.",
              'first_name.max'              =>  "First name should be less than 50 characters.",
              'last_name.required'          =>  "Last name should be less than 50 characters.",
              'email.unique'                =>  "Email already exists.",
              'city_of_residence.max'       =>  "City of residence should be less than 100 characters.",
              'nationality.max'             =>  "Nationality should be less than 50 characters.",
              'dob.date_format'             =>  "DOB should be Y-m-d format only.",
              'gender.in'                   =>  "Gender should be male,female,other only.",
              'reference_code.max'          =>  "Reference code should be less than 20 characters."
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
      

}

