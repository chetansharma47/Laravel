<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WalletCashback extends Model
{
    protected $fillable = [
    	'admin_id',
    	'bonus',
    	'bonus_text',
    	'refer_friend',
    	'refer_friend_text'
    ];
}
