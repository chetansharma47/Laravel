<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAssignOffer extends Model
{
    protected $fillable = ['id','offer_id','offer_setting_id','user_id','city_id','dob','gender','date','txn_start_period','txn_end_period','txn_amount_condition','from_price','to_price','offer_type','assign_at'];
}
