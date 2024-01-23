  public function likeList(){ 
        $like=Like::get(['id','name','image']);
        $userLikeList = auth()->user()->getOriginal("like_list");
        if($userLikeList){
            $userLikeList = explode(",", $userLikeList);
            $like = $like->map(function($each) use ($userLikeList){
                if(in_array($each->id, $userLikeList)){
                    $each->isSelected = true;
                }else{
                    $each->isSelected = false;
                }
                return $each;
            });
        }
        return $this->responseOk('Like list fetched successfully.', ["like_list" => $like]);
    }

    ============================================================================================
    public function musicList(){
        $music=Music::get(['id','name', 'image']);
        $userMusicList=auth()->user()->getOriginal("like_list");
        if($userMusicList){
            $userLikeList=explode(",",$userMusicList);
            $like=$like->map(function ($each)use ($userMusicList){
                if(in_array($each->id,$userMusicList)){
                    $each->isSelected=true;
                }
                else{
                    $each->isSelected=false;
                }
                return $each;

            });
            return $this->responseOk('like list fetched successfully.', ["music_list"=>$like]);


        }
    }
    


   



    