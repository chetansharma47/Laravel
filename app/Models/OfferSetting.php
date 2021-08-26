<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Offer;
use App\Models\City;

class OfferSetting extends Model
{
    protected $fillable = [
    	'offer_id',
    	'city_id',
    	'dob',
    	'gender',
    	'date',
    	'txn_start_period',
    	'txn_end_period',
    	'txn_amount_condition',
    	'from_price',
    	'to_price',
    	'offe_type'
    ];

    public function offer(){
    	return $this->belongsTo(Offer::class)->whereStatus('Active')->whereDeletedAt(null);;
    }

    public function city(){
    	return $this->belongsTo(City::class);
    }


}
