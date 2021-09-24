<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AssignUserVenue extends Model
{
    protected $fillable = [
    	'venu_id',
    	'venue_user_id'
    ];
}
