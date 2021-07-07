<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Validation extends Model
{

	//App User Athuntication Validation
    public static function userAppRegister($validation = null, $message = null){

    	$validation = [

            'first_name'        => 'required|max:50',
    		    'last_name'         => 'required|max:50',
            'email'        	    => 'required|max:100|unique:users,email',
            'password'     	    => ['required',
                                'max:100',
                                'min:8'],
            'city_of_residence' => 'required|max:100',
            'nationality'       => 'required|max:50',
            'dob'               => 'required|date_format:Y-m-d',
            'gender'            => 'required|in:Male,Female',
            'reference_code'    => 'sometimes|nullable|max:20',

    	];

    	$message = [
              'first_name.required'         =>  "Please enter first name.",
              'last_name.required'          =>  "Please enter last name.",
              'email.required'              =>  "Please enter email.",
              'email.unique'                =>  "Email already exists.",
              'password.required'           =>  "Please enter password.",
              'password.min'                =>  "Password must be at 8 characters long.",
              'city_of_residence.required'  =>  "Please enter city of residence.",
              'city_of_residence.max'       =>  "City of residence should be less than 100 characters.",
              'nationality.required'        =>  "Please enter nationality.",
              'nationality.max'             =>  "Nationality should be less than 50 characters.",
              'dob.required'                =>  "Please enter DOB.",
              'dob.date_format'             =>  "DOB should be Y-m-d format only.",
              'gender.required'             =>  "Please enter gender.",
              'gender.in'                   =>  "Gender should be male,female only.",
              'reference_code.max'          =>  "Reference code should be less than 20 characters."
    	];

    	return $data = ['validation' => $validation, 'message' => $message];

    }

    public static function userAppLogin($validation = null, $message = null){


        $validation = [
            'email'         => 'required',
            'password'     	=> 'required',
            'device_type'   => 'required|in:Ios,Android',  //I=>IOS, A=>Android
            'device_token'  => 'required',
           
        ];
        
        $message = [
            'email.required'                => 'Please enter email.',
            'password.required'             => 'Please enter password.',
            'device_type.required'          => 'Please enter device type.',
            'device_token.required'         => 'Please enter device token.',
             
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
                                                'min:8']
        ];

        $message = [
            'password.required'                 => 'Please enter old password.',
            'new_password.required'             => 'Please enter new password.',
            'new_password.min'                  =>  "New Password must be at 8 characters long.",
            'new_password.regex'                =>  "New Password must have at least 1 upper case character and 1 lower case character and 1 special character."
        ];
        
        return $data = ['validation' => $validation, 'message' => $message];

    }

    public static  function userAppReset($validation = null, $message = null){

        $validation =  [
            'password'          => ['required',
                                    'max:100',
                                    'min:8'],
            'confirm_password'  => 'required|same:password',
         ];

         $message = [
             'password.required'          => 'Please enter new password.',
             'password.min'               =>  "New Password must be at 8 characters long.",
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

            'first_name'        => 'sometimes|nullable|max:50',
            'last_name'         => 'sometimes|nullable|max:50',
            'email'             => 'sometimes|nullable|email|max:100|unique:users,email,'.$user_id.',id',
            'city_of_residence' => 'sometimes|nullable|max:100',
            'nationality'       => 'sometimes|nullable|max:50',
            'dob'               => 'sometimes|nullable|date_format:Y-m-d',
            'gender'            => 'sometimes|nullable|in:Male,Female',
            'reference_code'    => 'sometimes|nullable|max:20',

      ];

      $message = [
              'first_name.max'              =>  "First name should be less than 50 characters.",
              'last_name.required'          =>  "Last name should be less than 50 characters.",
              'email.unique'                =>  "Email already exists.",
              'city_of_residence.max'       =>  "City of residence should be less than 100 characters.",
              'nationality.max'             =>  "Nationality should be less than 50 characters.",
              'dob.date_format'             =>  "DOB should be Y-m-d format only.",
              'gender.in'                   =>  "Gender should be male,female only.",
              'reference_code.max'          =>  "Reference code should be less than 20 characters."
      ];

      return $data = ['validation' => $validation, 'message' => $message];

    }
      

}

