<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\UserAssignOffer;
use Carbon\Carbon;

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
        'cashier_name',
        'updated_at',
        'updated_by',
        'created_at',
        'created_by',
        'check_amount_pos',
        'user_wallet_cash'
    ]; 

    public function offerProductIds(){
        return $this->hasMany(UserAssignOffer::class,'offer_id','offer_product_ids');
    }
    
}
