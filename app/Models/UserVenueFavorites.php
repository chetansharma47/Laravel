<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserVenueFavorites extends Model
{
   protected $fillable = [
   		'id',
   		'venue_id',
   		'user_id',
   ];

   public $timestamps = false;



}