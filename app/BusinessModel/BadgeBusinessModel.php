<?php

namespace App\BusinessModel;

use Illuminate\Database\Eloquent\Model;
use App\Models\Badge;
use Auth;
use Carbon\Carbon;
use Image;

class BadgeBusinessModel extends Model
{
	public function UploadBase64Data($data,$imgoriginalname){
		$auth = Auth::guard('admin')->user();
        try{
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
            
            //file_put_contents($destinationPath. '/' . $imageName, base64_decode($image1));

            $img_new = Image::make(base64_decode($image1))->stream($extension, 50);
            
            file_put_contents($destinationPath. '/' . $imageName, $img_new);
            
            return $imageName;
        }catch(\Exception $e){
            return $e->getMessage();
        }
	}

	public function addBadge($data,$admin){
		if(empty($data['hidden_img2'])){
            if($data['badge_image_src']){
                $badge_image_hidden_imgname = $data['badge_image_hidden_imgname'];
                $data['badge_image_hidden_imgname'] = $this->UploadBase64Data($data['badge_image_src'],$data['badge_image_hidden_imgname']);
            }
        }

        if($data['badge_image_hidden_imgname'] == "Unable to init from given binary data."){
            return ['message' => 'Please upload valid image.'];
        }

        $add_badge = new Badge;
        $add_badge->admin_id = $admin->id;
        $add_badge->badge_name = $data['badge_name'];
        $add_badge->image = $data['badge_image_hidden_imgname'];
        $add_badge->name_of_file_show = $badge_image_hidden_imgname;
        $add_badge->status = $data['badge_select'];
        $add_badge->created_by = $admin->name;
        $add_badge->updated_by = $admin->name;
        $add_badge->save();

        if($add_badge){
            $message = 'Badge added successfully.';
        }
         return ['data' => $add_badge, 'message' => $message];
	}

    public function updateBadge($data,$admin){
        if(empty($data['hidden_img2']) && isset($data['badge_image_hidden_imgname'])){
            if($data['badge_image_src']){
                $badge_image_hidden_imgname = $data['badge_image_hidden_imgname'];
                $data['badge_image_hidden_imgname'] = $this->UploadBase64Data($data['badge_image_src'],$data['badge_image_hidden_imgname']);
            }
        }


        $find_badge = Badge::find($data['badge_id']);
        $find_badge->badge_name = $data['badge_name'];

        if(isset($badge_image_hidden_imgname)){

            if($data['badge_image_hidden_imgname'] == "Unable to init from given binary data."){
                return ['data' => null, 'message' => 'Please upload valid image.'];
            }
            $find_badge->image = $data['badge_image_hidden_imgname'];
            $find_badge->name_of_file_show = $badge_image_hidden_imgname;
        }
        $find_badge->status = $data['badge_select'];
        $find_badge->updated_by = $admin->name;
        $find_badge->deleted_at = null;
        $find_badge->update();

        if($find_badge){
            $message = 'Badge details has been updated successfully.';
        }
        return ['data' => $find_badge, 'message' => $message];
    }


}

