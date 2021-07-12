<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Otp extends Model
{
    protected $fillable = [
    	'country_code',
    	'mobile_number',
    	'otp'
    ];
}
