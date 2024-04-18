<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cashback extends Model
{
    protected $fillable = [
        'unique_id_cashback',
    	'venu_id',
    	'promotion_cashback_name',
    	'image',
    	'day_on',
    	'from_date',
    	'to_date',
    	'from_time',
    	'to_time',
    	'cashback_percentage',
    	'status',
        'name_of_file_show'
    ];

    public $appends = ['type_of_table'];

    public function getTypeOfTableAttribute($value){
        return "promotion";  // whatever you want add here
    }


    public function getImageAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/cashback' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('CASHBACK_STORAGE_VIEW') . '/' . $value;
            }else{

                return "";
            } 
        }else{
            return $value;
        }
    }

    public function venu(){
        return $this->belongsTo(Venu::class);
    }
}
