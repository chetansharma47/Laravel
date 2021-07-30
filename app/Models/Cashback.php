<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cashback extends Model
{
    protected $fillable = [
    	'venu_id',
    	'promotion_cashback_name',
    	'image',
    	'day_on',
    	'from_date',
    	'to_date',
    	'from_time',
    	'to_time',
    	'cashback_percentage',
    	'status'
    ];
}
