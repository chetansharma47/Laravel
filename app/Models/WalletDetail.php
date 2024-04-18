<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WalletDetail extends Model
{
    protected $fillable = [
    	'user_id',
    	'description',
    	'cashback_earned',
    	'redeemed_amount',
    	'user_wallet_cash',
    	'date_and_time',
    	'type_of_transaction'
    ];
}
