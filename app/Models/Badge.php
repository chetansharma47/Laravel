<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Badge extends Model
{
    protected $fillable = [
    	'admin_id',
    	'badge_name',
    	'image',
    	'name_of_file_show',
    	'status',
    	'created_by',
    	'updated_by'
    ];


    public function getImageAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/badge' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('BADGE_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }
}
