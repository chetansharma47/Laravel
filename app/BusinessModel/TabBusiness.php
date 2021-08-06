<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\TierSetting;
use App\Models\TierCondition;
use App\Models\WalletCashback;
use App\User;
use Auth;
use App\Models\Cashback;
use Carbon\Carbon;
class TabBusiness extends Model
{
    public function saveTier($data, $admin, $tier_setting = null){
        $update = "false";
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
            $update = "true";
    	}else{

	    	$tier_condition = new TierCondition();
	    	$data['tier_setting_id'] = $tier_setting->id;
	    	$tier_condition->fill($data);
	    	$tier_condition->save();
            
        }

        User::whereDeletedAt(null)->whereCustomerTier(null)->update(['customer_tier' => $tier_condition->tier_name]);
    	return ['status' => 'success','update' => $update,'tier_name' => $data['tier_name']];
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

    public function uploadBase64Img($data){
        $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('CASHBACK_STORAGE');
        $image1 = str_replace('data:image/jpeg;base64,', '', $data);
        $image1 = str_replace('data:image/png;base64,', '', $image1);
        $image1 = str_replace(' ', '+', $image1);
        $imageName = date('mdYHis') . '1' . uniqid().'.png';
        file_put_contents($destinationPath. '/' . $imageName, base64_decode($image1));
        //\File::put($destinationPath. '/' . $imageName, base64_decode($image1));
        return $imageName;
    }


    public function saveCashback($data, $admin){
        $update = "false";
        $data['from_time'] = Carbon::parse(Carbon::now()->toDateString()." ".$data['from_time'])->toTimeString();
        $data['to_time'] = Carbon::parse(Carbon::now()->toDateString()." ".$data['to_time'])->toTimeString();
        if(isset($data['image']) && $data['image'] != ""){
            $data['image'] = $this->uploadBase64Img($data['image']);
        }
        $find_cashback = Cashback::where("unique_id_cashback","=", $data['unique_id_cashback'])->whereDeletedAt(null)->first();
        if(empty($find_cashback)){
            $find_cashback = new Cashback();
            $find_cashback->admin_id = $admin->id;
            $find_cashback->fill($data);
            $find_cashback->save();
        }else{
            $find_cashback->fill($data);
            $find_cashback->update();
            $update = "true";
        }

        return ['data' => $find_cashback, 'update' => $update];
    }
}
