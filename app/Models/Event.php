<?php

namespace App\Models;
use App\Models\Venu;
use Illuminate\Database\Eloquent\Model;
class Event extends Model
{
    //

    protected $fillable = [
        'admin_id',
        'venu_id',
        'unique_id',
        'event_name',
        'event_description',
        'when_day',
        'from_date',
        'to_date',
        'event_time',
        'to_time',
        'image',
        'status',
        'name_of_file_show'
    ];

    public $appends = ['type_of_table'];

    public function getTypeOfTableAttribute($value){
        return "event";  // whatever you want add here
    }


    public function getImageAttribute($value){

        if(!empty($value)){

            $path_img = public_path(). '/storage/venue' . '/' . $value;

            if(file_exists($path_img)){
                return url('/') . '/' . env('VENUE_STORAGE_VIEW') . '/' . $value;
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

    public function venueAll(){
        return $this->hasMany(Venu::class,'admin_id','admin_id')->whereDeletedAt(null);
    }
}
