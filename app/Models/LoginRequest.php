<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Venu;
use App\Models\VenueUser;

class LoginRequest extends Model
{
    protected $fillable = [
    	'venue_user_id',
    	'venu_id',
    	'device_model',
    	'mac_address',
    	'authorized_status',
    	'date_time'
    ];

    public function venu(){
    	return $this->belongsTo(Venu::class);
    }

    public function venueUser(){
    	return $this->belongsTo(VenueUser::class);
    }
}
