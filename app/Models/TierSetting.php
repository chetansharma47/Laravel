<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\TierCondition;

class TierSetting extends Model
{
    protected $fillable = [
    	'admin_id',
    	'transaction_amount_check_last_days',
    	'customer_tier_validity_check'
    ];


    //Relationships
    public function tierConditions(){
    	return $this->hasMany(TierCondition::class)->whereDeletedAt(null);
    }
}
