<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Http\Controllers\Api\v1\ResponseController;
use Illuminate\Http\Request;
use App\Models\UserAssignOffer;
use App\Models\Offer;
use App\Models\OfferSetting;
use App\Models\City;
use App\User;
use Carbon\Carbon;
use App\Validation;
use App\Models\WalletTransaction;
use App\Models\TierSetting;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function responseOk($message, $data = null)
    {
        $response = [
            'result'  => 'Success',
            'message' => $message,
        ];

        $data ? $response['data'] = $data : null;
        http_response_code(200);
        echo json_encode($response); exit;
    }

    public function OfferAssignUserCronJob(Request $request){

        $today_date = Carbon::now();
        /*Change Logical*/
        $pluck_offer_ids = OfferSetting::where(function($query) use ($today_date){
                            $query->whereDate('date','=',$today_date->toDateString());
                            $query->where('offer_type','!=','BirthdayOffer');
                            $query->whereDeletedAt(null);
                        })->orWhere(function($query) use ($today_date){
                            $query->where('offer_type','=','BirthdayOffer');
                            $query->whereDeletedAt(null);
                        })->pluck('offer_id');

        $offers = Offer::whereIn('id', $pluck_offer_ids)->whereDeletedAt(null)->where('status','=','Active')->with('offerSetting')->get();
        // return $offers;

        foreach ($offers as $offer){

         //  return $offer;
            if(!empty($offer->offerSetting->city_id) && !empty($offer->offerSetting->gender)){
                $find_city_name = City::select('city_name')->whereId($offer->offerSetting->city_id)->first();
                $user_match_with_offers = User::select('id','dob')->whereCityOfResidence($find_city_name->city_name)->where('gender','=',$offer->offerSetting->gender)->whereDeletedAt(null)->get();

            }
            if(!empty($offer->offerSetting->city_id) && empty($offer->offerSetting->gender)){

                $find_city_name = City::select('city_name')->whereId($offer->offerSetting->city_id)->first();
                $user_match_with_offers = User::select('id','dob')->whereCityOfResidence($find_city_name->city_name)->whereDeletedAt(null)->get();

            }
            if(empty($offer->offerSetting->city_id) && !empty($offer->offerSetting->gender)){
                $user_match_with_offers = User::select('id','dob')->where('gender','=',$offer->offerSetting->gender)->whereDeletedAt(null)->get();
            }

            if(empty($offer->offerSetting->city_id) && empty($offer->offerSetting->gender)){
                //both are empty
                $user_match_with_offers = User::select('id','dob')->whereDeletedAt(null)->get();
            }

          //  return $user_match_with_offers;

            foreach ($user_match_with_offers as $user_match_with_offer){

                //return $user_match_with_offer;
                $user_assign_offers = UserAssignOffer::whereUserId($user_match_with_offer->id)->whereOfferId($offer->id)->whereAssignAt(Carbon::now()->toDateString())->first();

                if($offer->offer_type == "BirthdayOffer"){
                    $dob_month = Carbon::parse($user_match_with_offer->dob)->format('m');
                    $dob_date = Carbon::parse($user_match_with_offer->dob)->format('d');
                    $current_month = Carbon::now()->format('m');
                    $current_date = Carbon::now()->format('d');
                    if($dob_month == $current_month && $dob_date == $current_date){
                        $offer_assign = new UserAssignOffer();
                        $offer_assign->offer_id = $offer->id;
                        $offer_assign->offer_setting_id = $offer->offerSetting->id;
                        $offer_assign->user_id = $user_match_with_offer->id;
                        $offer_assign->city_id = $offer->offerSetting->city_id;
                        $offer_assign->dob = $offer->offerSetting->dob;
                        $offer_assign->gender = $offer->offerSetting->gender;
                        $offer_assign->date = $offer->offerSetting->date;
                        $offer_assign->assign_at = Carbon::now()->toDateString();
                        $offer_assign->txn_start_period = $offer->offerSetting->txn_start_period;
                        $offer_assign->txn_end_period = $offer->offerSetting->txn_end_period;
                        $offer_assign->txn_amount_condition = $offer->offerSetting->txn_amount_condition;
                        $offer_assign->from_price = $offer->offerSetting->from_price;
                        $offer_assign->to_price = $offer->offerSetting->to_price;
                        $offer_assign->offer_type = $offer->offerSetting->offer_type;
                        $offer_assign->save();
                    }
                }else{

                    if(empty($user_assign_offers)){

                        $is_save = 1;


                        if(!empty($offer->offerSetting->txn_start_period) && !empty($offer->offerSetting->txn_end_period)){

                            $total_amount_transaction = WalletTransaction::where(function($query) use ($user_match_with_offer,$offer){
                                    $query->whereUserId($user_match_with_offer->id);
                                    $query->whereDate('created_at','<=',$offer->offerSetting->txn_start_period);
                                    $query->whereDate('created_at','>=',$offer->offerSetting->txn_end_period);
                                })->sum('total_bill_amount');

                            if($offer->offerSetting->txn_amount_condition == "Greater"){

                                if($total_amount_transaction < $offer->offerSetting->from_price){
                                    $is_save = 0;
                                }

                            }else if($offer->offerSetting->txn_amount_condition == "Between"){
                                if($total_amount_transaction >= $offer->offerSetting->from_price && $total_amount_transaction <= $offer->offerSetting->to_price){

                                }else{
                                    $is_save = 0;
                                }
                            }

                        }

                        if($is_save == 1){

                            $offer_assign = new UserAssignOffer();
                            $offer_assign->offer_id = $offer->id;
                            $offer_assign->offer_setting_id = $offer->offerSetting->id;
                            $offer_assign->user_id = $user_match_with_offer->id;
                            $offer_assign->city_id = $offer->offerSetting->city_id;
                            $offer_assign->dob = $offer->offerSetting->dob;
                            $offer_assign->gender = $offer->offerSetting->gender;
                            $offer_assign->date = $offer->offerSetting->date;
                            $offer_assign->assign_at = Carbon::now()->toDateString();
                            $offer_assign->txn_start_period = $offer->offerSetting->txn_start_period;
                            $offer_assign->txn_end_period = $offer->offerSetting->txn_end_period;
                            $offer_assign->txn_amount_condition = $offer->offerSetting->txn_amount_condition;
                            $offer_assign->from_price = $offer->offerSetting->from_price;
                            $offer_assign->to_price = $offer->offerSetting->to_price;
                            $offer_assign->offer_type = $offer->offerSetting->offer_type;
                            $offer_assign->save();
                        }

                    }
                }


            }
            
        }
            return $this->responseOk('Offer Assign', ['message' => 'Offer assigned successfully']);
        /*End*/
    }

    public function transferToWallet(Request $request){
        $WalletTransaction = WalletTransaction::where('is_cross_verify','=',0)->get();
        foreach ($WalletTransaction as $WalletTransaction) {
            $find_user = User::whereId($WalletTransaction->user_id)->first();
            $find_user->wallet_cash = $find_user->wallet_cash + $WalletTransaction->cashback_earned;
            $find_user->update();
            $WalletTransaction->is_cross_verify = 1;
            $WalletTransaction->update();
        }

        return "success";
    } 
}
