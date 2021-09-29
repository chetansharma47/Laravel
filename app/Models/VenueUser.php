<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Venu;
use App\Models\AssignUserVenue;

class VenueUser extends Model
{
    protected $fillable = [
    	'venu_id',
    	'username',
    	'password',
    	'status',
    	'device_model',
    	'mac_address',
    	'authorized_status',
    	'date_time',
        'access_token',
        'created_by',
        'updated_by'
    ];

    public function venu(){
       return $this->belongsTo(Venu::class);
    }

    public function assignUserVenues(){
        return $this->hasMany(AssignUserVenue::class);
    }
}
