<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdminNotification extends Model
{
    
    protected $fillable = [
    	'id',
    	'uniq_id',
    	'title',
    	'message',
    	'image',
    	'image_type',
    	'name_of_file_show',
    	'push_type',
    	'sms_type',
    	'email_type',
    	'notification_type',
    ];

    public function getImageAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/attachment_mail' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('ATTACHMENT_MAIL_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }

}
