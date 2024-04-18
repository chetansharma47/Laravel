<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NotiRecord extends Model
{
    protected $fillable = [
    	'user_id',
    	'wallet',
    	'offer',
    	'event',
    	'normal'
    ];
}
