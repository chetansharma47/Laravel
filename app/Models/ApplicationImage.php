<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ApplicationData;

class ApplicationImage extends Model
{
    protected $fillable = [
        'application_data_id',
        'image',
        'name_of_file_show',
        'uniq_id',
        'image_type',
    ];

    //Relationships

    public function applicationData(){
    	return $this->belongsTo(ApplicationData::class);
    }

    public function getImageAttribute($value){

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
