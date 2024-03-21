<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
   protected $fillable = [
   	'message',
        'from_user_id',
        'to_user_id',
        'is_read',
        'type',
        
   ];
}
