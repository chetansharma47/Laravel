<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
   protected $fillable = [
   		'name',
        'phone_number',
        'user_id',
        'country_code',
   ];
}
