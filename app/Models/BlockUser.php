<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class BlockUser extends Model
{
    protected $fillable = [
    	'id',
    	'user_id',
    	'blocked_user_id',
    ];

    public function blocked_user(){
        return $this->belongsTo(User::class, 'blocked_user_id');
    }

}

