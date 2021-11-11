<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Event;
use App\Models\Offer;

class AdminCriteriaNotification extends Model
{
    protected $fillable = [
    	'id',
    	'city_id',
        'user_id',
        'city_name',
    	'message',
    	'push_type',
    	'sms_type',
    	'gender',
    	'nationality',
    	'txn_start_period',
    	'txn_end_period',
    	'txn_amount_condition',
    	'from_price',
        'to_price',
        'noti_type',
        'event_id',
    	'offer_id',
        'created_at',
        'updated_at',
        'sent_by'
    ];

    public function event(){
        return $this->belongsTo(Event::class);
    }

    public function offer(){
        return $this->belongsTo(Offer::class);
    }

    // public function getPushTypeAttribute($value){

    //     if(!empty($value)){

    //         if($value == 1){
    //             return 'Push';
    //         }else{
    //             return 0;
    //         }
    //     }
    // }

    // public function getSmsTypeAttribute($value){

    //     if(!empty($value)){

    //         if($value == 1){
    //             return 'Sms';
    //         }else{
    //             return 0;
    //         }
    //     }
    // }
}
