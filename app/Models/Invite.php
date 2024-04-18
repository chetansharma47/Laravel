<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\Venu;


class Invite extends Model
{
   protected $fillable = [
   		'from_user_id',
        'to_user_id',
        'status',
        'shop_id',
        'blockage_id',
        'start_at',
        'source',
        'pax',
        'last_name',
        'customer_ref',
   ];
   public function fromUser(){
       return $this->belongsTo(User::class, 'from_user_id');
   }

   public function toUser(){
    return $this->belongsTo(User::class, 'to_user_id');
    }

    public function shopDetails(){
        return $this->belongsTo(Venu::class, 'shop_id','shop_id');
    }


}
