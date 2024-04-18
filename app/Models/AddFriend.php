<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AddFriend extends Model
{
   protected $fillable = [
   		'id',
   		'from_user_id',
   		'to_user_id',
         'status',
   ];

   public $timestamps = false;



}