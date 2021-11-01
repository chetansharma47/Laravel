<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\Venu;
use App\Models\VenueUser;
use App\User;
use Auth;
use Carbon\Carbon;
use App\Models\Event;
use App\Models\Offer;
use App\Models\OfferSetting;
use App\Models\City;
use App\Models\Badge;
use App\Models\AssignBadge;

class VenueBusinessModel extends Model
{
	public function UploadBase64Data($data,$imgoriginalname){
		$auth = Auth::guard('admin')->user();
		$extension = pathinfo($imgoriginalname)['extension'];
		if($extension=='png'){
        	$image1 = str_replace('data:image/png;base64,', '', $data);
        	$destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('VENUE_STORAGE');
        	$imageName = date('mdYHis') . rand(10,100) . uniqid().'.png';
		}else{
	        $image1 = str_replace('data:image/jpeg;base64,', '', $data);
	        $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('VENUE_STORAGE');
        	$imageName = date('mdYHis') . rand(10,100) . uniqid().'.jpeg';
		}
        
        file_put_contents($destinationPath. '/' . $imageName, base64_decode($image1));
        return $imageName;
	}


	Public function VenueCreate($data,$admin){
		$venue_name = $data['vname'];

		if(empty($data['hidden_img2'])){
			if($data['vimg']){
				$data['vimg'] = $this->UploadBase64Data($data['vimg'],$data['vimg_val']);
			}
		}
		

		//exist query
		$venue = Venu::whereAdminId($admin->id)->whereUniqueId($data['uniq'])->whereDeletedAt(null)->first();


		if(empty($venue)){
			$venue = new Venu();
			$venue->admin_id = $admin->id;
			$venue->unique_id = $data['uniq'];
			$venue->venue_name= $data['vname'];
			$venue->address = $data['vaddr'];
			$venue->venue_description = $data['vdesc'];
			$venue->phone_number = $data['vphone'];
			$venue->google_map_location_link = $data['vmap'];
			$venue->book_now_link = $data['vbook'];
			$venue->image = $data['vimg'];
			$venue->name_of_file_show = $data['vimg_val'];
			$venue->menu_link= $data['vmenu'];
			$venue->status= $data['vstatus'];
			$venue->pos_venue_id= $data['pos_venue_id'];
			$venue->save();

			$offer_data = Offer::whereAdminId($admin->id)->orderBy('unique_id','desc')->first();

            if(empty($offer_data)){
                $new_uniq_id = 1;
            }else{
                $new_uniq_id = $offer_data->unique_id+1;
            }

            $offer = new Offer();
            $offer->admin_id = $admin->id;
            $offer->venu_id = $venue->id;
            $offer->unique_id = $new_uniq_id;
            $offer->offer_name = 'Birthday Offer';
            $offer->offer_desc = 'Birthday Offer';
            $offer->image = 'app_icon.png';
            $offer->name_of_file_show = 'app icon';
            $offer->status = 'Active';
            $offer->offer_type = 'BirthdayOffer';
            $offer->save();

            if($offer){
	            $offerSetting = new OfferSetting();
	            $offerSetting->offer_id = $offer->id;
	            $offerSetting->offer_type = 'BirthdayOffer';
	            $offerSetting->save();
	        }

			if($venue && $offer){
				$message = 'Venue added successfully.';
			}

		}else{

			$venue->venue_name= $data['vname'];
			$venue->address = $data['vaddr'];
			$venue->venue_description = $data['vdesc'];
			$venue->phone_number = $data['vphone'];
			$venue->google_map_location_link = $data['vmap'];
			$venue->book_now_link = $data['vbook'];
			if(empty($data['hidden_img2'])){
				$venue->image = $data['vimg'];
				$venue->name_of_file_show = $data['vimg_val'];
			}
			$venue->menu_link= $data['vmenu'];
			$venue->status= $data['vstatus'];
			$venue->pos_venue_id= $data['pos_venue_id'];
			$venue->update();

			if($venue){
				$message = 'Venue details updated successfully.';
			}

		}

		return ['data' => $venue, 'message' => $message];

	}

	public function eventCreate($data,$admin){
		if(empty($data['event_img_exists'])){
			if($data['eventimg']){
				$data['eventimg'] = $this->UploadBase64Data($data['eventimg'],$data['org_img_valu']);
			}
		}

		$event = Event::whereAdminId($admin->id)->whereUniqueId($data['uniq'])->whereDeletedAt(null)->first();

		if(empty($event)){
			$event = new Event();
			$event->admin_id = $admin->id;
			$event->unique_id = $data['uniq'];
			$event->venu_id = $data['eventvenueid'];
			$event->event_name = $data['eventname'];
			$event->event_description = $data['eventdesc'];
			$event->when_day = $data['get_selected_days'];
			$event->from_date = $data['from_date'];
			$event->to_date = $data['to_date'];
			$event->event_time = $data['event_time_data'];
			$event->to_time = $data['to_time_data'];
			$event->image = $data['eventimg'];
			$event->name_of_file_show = $data['org_img_valu'];
			$event->status = $data['event_status'];
			$event->save();

			if($event){
				$message = 'Event added successfully.';
			}

		}else{
			$event->venu_id = $data['eventvenueid'];
			$event->event_name = $data['eventname'];
			$event->event_description = $data['eventdesc'];
			$event->when_day =  $data['get_selected_days'];
			$event->from_date = $data['from_date'];
			$event->to_date = $data['to_date'];
			$event->event_time = $data['event_time_data'];
			$event->to_time = $data['to_time_data'];
			if(empty($data['event_img_exists'])){
				if($data['eventimg']){
					$event->image = $data['eventimg'];
					$event->name_of_file_show = $data['org_img_valu'];
				}
			}
			
			$event->status = $data['event_status'];
			$event->update();

			if($event){
				$message = 'Event details updated successfully.';
			}
		}

		return ['data' => $event, 'message' => $message];
	}

	public function offersCreate($data,$admin){
		if(empty($data['offer_img_hidden2'])){
			if($data['offer_img_hidden_attr']){
				$data['offer_img_hidden_attr'] = $this->UploadBase64Data($data['offer_img_hidden_attr'],$data['offer_img_hidden_value']);
			}
		}

		$offer = Offer::whereAdminId($admin->id)->whereUniqueId($data['uniq_id'])->whereDeletedAt(null)->first();

		if(empty($offer)){

			$offer = new Offer();
			$offer->admin_id = $admin->id;
			$offer->venu_id = $data['venu_id'];
			$offer->unique_id = $data['uniq_id'];
			$offer->offer_name = $data['offer_name'];
			$offer->offer_desc = $data['offer_desc'];
			$offer->image = $data['offer_img_hidden_attr'];
			$offer->from_date = $data['offer_from_date'];
			$offer->to_date = $data['offer_to_date'];
			$offer->time = $data['offer_time_data'];
			$offer->to_time = $data['offer_to_time_data'];
			$offer->status = $data['offer_status'];
			$offer->offer_type = 'Normal';
			$offer->name_of_file_show = $data['offer_img_hidden_value'];
			$offer->pos_product_id = $data['pos_product_id'];
			$offer->save();

			if($offer){
				$message = 'Offer added successfully.';
			}

		}else{

			$offer->venu_id = $data['venu_id'];
			$offer->offer_name = $data['offer_name'];
			$offer->offer_desc = $data['offer_desc'];
			if(empty($data['offer_img_hidden2'])){
				if($data['offer_img_hidden_attr']){
					$offer->image = $data['offer_img_hidden_attr'];
					$offer->name_of_file_show = $data['offer_img_hidden_value'];
				}
			}
			$offer->from_date = $data['offer_from_date'];
			$offer->to_date = $data['offer_to_date'];
			$offer->time = $data['offer_time_data'];
			$offer->to_time = $data['offer_to_time_data'];
			$offer->status = $data['offer_status'];
			$offer->pos_product_id = $data['pos_product_id'];
			$offer->update();

			if($offer){
				$message = 'Offer details updated successfully.';
			}

		}

		$offersetting = OfferSetting::whereOfferId($offer->id)->first();

		if(empty($offersetting)){
			$offersetting = new OfferSetting;
			$offersetting->offer_id = $offer->id;
			$offersetting->dob = "Today";
			$offersetting->gender = $data['gender_condition'];
			$offersetting->date = $data['date_condition'];
			$offersetting->city_id = $data['city_condition'];
			$offersetting->txn_start_period = $data['txn_start_condition'];
			$offersetting->txn_end_period = $data['txn_end_condition'];
			$offersetting->txn_amount_condition = $data['txn_condition'];
			$offersetting->from_price = $data['from_price_condition'];
			$offersetting->to_price = $data['to_price_condition'];
			$offersetting->offer_type = $offer->offer_type;
			$offersetting->save();

		}/*else{

			$offersetting->dob = $data['dob_condition'];
			$offersetting->gender = $data['gender_condition'];
			$offersetting->date = $data['date_condition'];
			$offersetting->city_id = $data['city_condition'];
			$offersetting->txn_start_period = $data['txn_start_condition'];
			$offersetting->txn_end_period = $data['txn_end_condition'];
			$offersetting->txn_amount_condition = $data['txn_condition'];
			$offersetting->from_price = $data['from_price_condition'];
			$offersetting->to_price = $data['to_price_condition'];
			$offersetting->offer_type = $offer->offer_type;
			$offersetting->update();

		}*/

		return ['data' => $offer, 'message' => $message];
	}

	public function addOrUpdateBadgeAssignInTable($data){
		$find_user = User::whereCustomerId($data['customer_id'])->first();
		$find_badge_assign = AssignBadge::whereUserId($find_user->id)->whereBadgeId($data['badge_id'])->whereDeletedAt(null)->first();

		if(empty($find_badge_assign)){

			$assign_badge = new AssignBadge();
			$assign_badge->user_id = $find_user->id;
			$assign_badge->badge_id = $data['badge_id'];
			$assign_badge->comment = $data['comment'];
			$assign_badge->status = $data['status'];
			$assign_badge->when_day = $data['when'];
			$assign_badge->from_date = $data['from_date'];
			$assign_badge->to_date = $data['to_date'];
			$assign_badge->from_time = $data['from_time'];
			$assign_badge->to_time = $data['to_time'];
			$assign_badge->created_by = "Admin";
			$assign_badge->updated_by = "Admin";
			$assign_badge->save();
			$assign_badge_find = AssignBadge::whereId($assign_badge->id)->with('user','badge')->first();
		}else{
			$find_badge_assign->badge_id = $data['badge_id'];
			$find_badge_assign->comment = $data['comment'];
			$find_badge_assign->status = $data['status'];
			$find_badge_assign->when_day = $data['when'];
			$find_badge_assign->from_date = $data['from_date'];
			$find_badge_assign->to_date = $data['to_date'];
			$find_badge_assign->from_time = $data['from_time'];
			$find_badge_assign->to_time = $data['to_time'];
			$find_badge_assign->created_by = "Admin";
			$find_badge_assign->updated_by = "Admin";
			$find_badge_assign->update();
			$assign_badge_find = AssignBadge::whereId($find_badge_assign->id)->with('user','badge')->first();
		}
		return $assign_badge_find;

	}

}

