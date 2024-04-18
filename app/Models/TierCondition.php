<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TierCondition extends Model
{
    protected $fillable = [
    	'unique_id_by_tier',
    	'tier_setting_id',
    	'tier_name',
    	'from_amount',
    	'to_amount',
    	'color_code',
    	'percentage'
    ];
}
