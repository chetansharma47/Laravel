<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WalletTransaction extends Model
{
    protected $fillable = [
    	'user_id',
    	'venue_user_id',
        'venu_id',
    	'description',
    	'date_and_time',
    	'cashback_earned',
    	'cashback_percentage',
    	'redeemed_amount',
    	'total_bill_amount',
    	'pay_bill_amount',
    	'is_cross_verify',
        'invoice_number',
        'offer_product_ids',
        'cashier_name'
    ]; 

    
}
