<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\TierSetting;
use App\Models\TierCondition;
use App\User;
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
}
