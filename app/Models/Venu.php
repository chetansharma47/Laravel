<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Cashback;
use App\Models\Offer;
use App\Models\Event;
use App\Models\VenueUser;


class Venu extends Model
{
    protected $fillable = [
    	'admin_id',
    	'venue_name',
        'unique_id',
    	'address',
    	'venue_description',
    	'phone_number',
    	'google_map_location_link',
    	'book_now_link',
    	'image',
        'name_of_file_show',
    	'menu_link',
        'status',
    	'pos_venue_id'
    ];

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

    public function cashbacks(){
        return $this->hasMany(Cashback::class)->whereDeletedAt(null);
    }

    public function offers(){
        return $this->hasMany(Offer::class)->whereDeletedAt(null)->where('status', '=', 'Active');
    }

    public function events(){
        return $this->hasMany(Event::class)->whereDeletedAt(null)->where('status', '=', 'Active');
    }
}
