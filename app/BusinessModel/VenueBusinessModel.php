<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\Venu;
use App\Models\VenuUser;
use App\User;
use Auth;
use Carbon\Carbon;

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

		if($data['vimg']){

			$data['vimg'] = $this->UploadBase64Data($data['vimg'],$data['vimg_val']);
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
			$venue->menu_link= $data['vmenu'];
			$venue->status= $data['vstatus'];
			$venue->save();

		}else{

			$venue->venue_name= $data['vname'];
			$venue->address = $data['vaddr'];
			$venue->venue_description = $data['vdesc'];
			$venue->phone_number = $data['vphone'];
			$venue->google_map_location_link = $data['vmap'];
			$venue->book_now_link = $data['vbook'];
			$venue->image = $data['vimg'];
			$venue->menu_link= $data['vmenu'];
			$venue->status= $data['vstatus'];
			$venue->update();

		}

		return $venue;

	}

}

