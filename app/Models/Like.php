<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
   protected $fillable = [
   		
   		'id',
   		'name',
   		'status',
		'image',
   ];

   public function getImageAttribute($value){

	if(!empty($value)){

		$path_img = public_path(). '/likeListImages' . '/' . $value;

		if(file_exists($path_img)){
			return url('/') . '/' . env('LIKE_LIST_STORAGE_VIEW') . '/' . $value;
		}else{

			return "";
		} 
		
	}else{
		return $value;
	}
}
}