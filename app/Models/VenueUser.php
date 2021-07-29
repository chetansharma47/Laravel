<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VenueUser extends Model
{
    protected $fillable = [
    	'venu_id',
    	'username',
    	'password',
    	'venue_name',
    	'status',
    	'device_model',
    	'mac_address',
    	'authorized_status',
    	'date_time'

    ];
}
