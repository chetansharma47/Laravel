<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Cashback;

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
    	'menu_link',
    	'status'
    ];

    public function cashbacks(){
        return $this->hasMany(Cashback::class)->whereDeletedAt(null);
    }
}
