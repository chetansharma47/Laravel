<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Venu extends Model
{
    protected $fillable = [
    	'admin_id',
    	'venue_name',
    	'address',
    	'venue_description',
    	'phone_number',
    	'google_map_location_link',
    	'book_now_link',
    	'image',
    	'menu_link',
    	'status'
    ];
}
