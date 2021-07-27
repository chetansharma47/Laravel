<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ApplicationImage;

class ApplicationData extends Model
{
    protected $fillable = [
    	'admin_id',
    	'logo',
    	'video',
    	'color'
    ];

    public function applicationImages(){
    	return $this->hasMany(ApplicationImage::class);
    }

    public function getVideoAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/application_data' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('APPLICATION_DATA_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }

    public function getLogoAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/application_data' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('APPLICATION_DATA_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }
}
