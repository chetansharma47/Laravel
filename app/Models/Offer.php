<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Venu;
use App\Models\OfferSetting;

class Offer extends Model
{
    protected $fillable = [
    	'admin_id',
    	'venu_id',
    	'unique_id',
    	'offer_name',
    	'offer_desc',
    	'image',
    	'name_of_file_show',
    	'from_date',
    	'to_date',
    	'time',
    	'to_time',
    	'status',
    	'offer_type',
    ];

    public function venu(){
    	return $this->belongsTo(Venu::class);
    }

    public function offerSetting(){
        return $this->hasOne(OfferSetting::class);
    }

    public function getImageAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/venue' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('VENUE_STORAGE_VIEW') . '/' . $value;
            }else{

                return url("public/app_icon.png");
            } 
        }else{
            return $value;
        }
    }
}
