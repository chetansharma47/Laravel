<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NewVenues extends Model
{
   protected $fillable = [
      'id',
      'user_id',
      'u_v_fav_id',
   	'venue_id',
      'new_venue_id'
   ];

   public $timestamps = false;



}