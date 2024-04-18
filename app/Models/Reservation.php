<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Venu;
use App\User;

class Reservation extends Model
{
    protected $fillable = [
    	'user_id',
    	'reservation_id',
        'venue_id',
    	'shop_id',
    	'pax',
    	'start_at'
    ];

    public function venue() {
        return  $this->belongsTo(Venu::class,"venue_id")->select(['id', 'venue_name','address','logo']);
    }

    public function admin_user() {
        return  $this->belongsTo(User::class,"user_id")->select(['id', 'first_name', 'last_name', 'image']);
    }

    public function joined_users() {
        $joinedList =  $this->hasMany(ReservationUser::class)->whereStatus("Accepted")->with(['other_user']);
        // return count((array)$joinedList);
        return $joinedList;
    }

    public function total_users() {
        $joinedList =  $this->hasMany(ReservationUser::class)->with(['other_user']);
        return $joinedList;
    }

    public function pending_users() {
        $joinedList =  $this->hasMany(ReservationUser::class)->whereStatus("Pending")->with(['other_user']);
        // return count((array)$joinedList);
        return $joinedList;
    }
}
