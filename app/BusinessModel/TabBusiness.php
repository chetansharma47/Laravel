<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\TierSetting;
use App\Models\TierCondition;
use App\Models\WalletCashback;
use App\User;
use Auth;
class TabBusiness extends Model
{
    public function saveTier($data, $admin, $tier_setting = null){
    	$data['admin_id'] = $admin->id;
    	if(!empty($tier_setting)){
    		$tier_setting->fill($data);
    		$tier_setting->update();
    	}else{

	    	$tier_setting = new TierSetting();
	    	$tier_setting->fill($data);
	    	$tier_setting->save();
    	}

    	$tier_condition = TierCondition::whereTierSettingId($tier_setting->id)->where("unique_id_by_tier","=", $data['unique_id_by_tier'])->first();

    	if(!empty($tier_condition)){
            User::whereDeletedAt(null)->whereCustomerTier($tier_condition->tier_name)->update(['customer_tier' => $data['tier_name']]);
    		$tier_condition->fill($data);
    		$tier_condition->update();
    	}else{

	    	$tier_condition = new TierCondition();
	    	$data['tier_setting_id'] = $tier_setting->id;
	    	$tier_condition->fill($data);
	    	$tier_condition->save();
            
        }

        User::whereDeletedAt(null)->whereCustomerTier(null)->update(['customer_tier' => $tier_condition->tier_name]);
    	return "success";
    }

    public function loyalityCashBackPage($data){
        $admin = Auth::guard('admin')->user();
        if($data['update_type'] == "tier_percentage"){
            TierCondition::whereId($data['tier_condition_id'])->update(['percentage' => $data['percentage_value']]);

            return ['status' => 'success', 'tier_name' => $data['tier_name'], 'update_type' => $data['update_type']];
        }else if($data['update_type'] == "more_wallet_cashback"){

            $find_wallet_cashback = WalletCashback::whereAdminId($admin->id)->whereDeletedAt(null)->first();
            if(!empty($find_wallet_cashback)){
                $find_wallet_cashback->fill($data);
                $find_wallet_cashback->update();
            }else{
                $wallet_cashback = new WalletCashback();
                $wallet_cashback->admin_id = $admin->id;
                $wallet_cashback->fill($data);
                $wallet_cashback->save();
            }

            return ['status' => 'success', 'wallet_type' => $data['wallet_type'], 'update_type' => $data['update_type']]; 
        }


    }
}
