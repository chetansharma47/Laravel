public function getProfile($id){

if(empty($id)){
    $user = Auth::guard()->user();
}else{
    $user = User::whereId($id)->first();
}

$tier = TierCondition::whereTierName($user->customer_tier)->orderBy('id','desc')->first();
$user->tier = $tier;
$user->wallet_cash = floor($user->wallet_cash);

$favList = UserVenueFavorites::where("user_id", $user->id)->get();
$favList = $favList->map(function($each){
    return $each->venue_id;
})->reverse();
// dd($favList);

$direction = 'asc'; 

if($favList->count() > 0){
    $venues = Venu::whereIn("id", $favList)
    ->orderByRaw("FIELD(id, " . implode(",", $favList->toArray()) . ") $direction")
    ->limit(3)
    ->get(['id', 'venue_name']);
}else{
    $venues = [];
}

$user->venue_listing = $venues;
return $user;
}
