<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\Badge;
use Auth;
use Carbon\Carbon;

class BadgeBusinessModel extends Model
{
	public function UploadBase64Data($data,$imgoriginalname){
		$auth = Auth::guard('admin')->user();
		$extension = pathinfo($imgoriginalname)['extension'];
		if($extension=='png'){
        	$image1 = str_replace('data:image/png;base64,', '', $data);
        	$destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('BADGE_STORAGE');
        	$imageName = date('mdYHis') . rand(10,100) . uniqid().'.png';
		}else{
	        $image1 = str_replace('data:image/jpeg;base64,', '', $data);
	        $destinationPath = storage_path(). DIRECTORY_SEPARATOR . env('BADGE_STORAGE');
        	$imageName = date('mdYHis') . rand(10,100) . uniqid().'.jpeg';
		}
        
        file_put_contents($destinationPath. '/' . $imageName, base64_decode($image1));
        return $imageName;
	}

	public function addBadge($data,$admin){
		if(empty($data['hidden_img2'])){
            if($data['badge_image_src']){
                $data['badge_image_hidden_val'] = $this->UploadBase64Data($data['badge_image_src'],$data['badge_image_hidden_val']);
            }
        }

        $add_badge = new Badge;
        $add_badge->admin_id = $admin->id;
        $add_badge->badge_name = $data['badge_name'];
        $add_badge->image = $data['badge_image_hidden_val'];
        $add_badge->name_of_file_show = $data['badge_image_hidden_imgname'];
        $add_badge->status = $data['badge_select'];
        $add_badge->created_by = 'Admin';
        $add_badge->updated_by = 'Admin';
        $add_badge->save();

        if($add_badge){
            $message = 'Badge added successfully.';
        }
         return ['data' => $add_badge, 'message' => $message];
	}


}

