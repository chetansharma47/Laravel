<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'customer_id',
        'country_code',
        'mobile_number',
        'image',
        'first_name',
        'last_name', 
        'email', 
        'password',
        'city_of_residence',
        'nationality',
        'dob',
        'gender',
        'reference_code',
        'device_type',
        'device_token',
        'reset_password_token',
        'verify_email_token',
        'is_block',
        'is_verify',
        'is_active',
        'refresh_token',
        'wallet_cash',
        'customer_tier',
        'reference_by',
        'remember_token',
        'bar_code',
        'self_reference_code',
        'qr_code',
        'tier_update_date',
        'refer_amount',
        'refer_amount_used',
        'request_change_email',
        'id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    // protected $casts = [
    //     'email_verified_at' => 'datetime',
    // ];




    public function getImageAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/users' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('IMG_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }


    public function getBarCodeAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/bar_code' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('BAR_CODE_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }

    public function getQrCodeAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/qr_code' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('QR_CODE_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }


    public function getWalletCashAttribute($value){

        if(!empty($value)){

           return $value;
        }else{
            return 0;
        }
    }

    public function getReferenceCodeAttribute($value){

        if(!empty($value)){

           return $value;
        }else{
            return "N/A";
        }
    }

    public function getReferenceByAttribute($value){

        if(!empty($value)){

           return $value;
        }else{
            return "N/A";
        }
    }
}
