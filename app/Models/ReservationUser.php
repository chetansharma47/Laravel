<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Reservation;
use App\User;


class ReservationUser extends Model
{
    protected $fillable = [
    	'reservation_id',
        'other_user_id',
    	'status'
    ];

    public function reservation() {
        return  $this->belongsTo(Reservation::class,"reservation_id")->with(['venue','admin_user']);
    }

    public function other_user() {
        return  $this->belongsTo(User::class,"other_user_id")->select(['id', 'first_name', 'last_name', 'image']);
    }
}

