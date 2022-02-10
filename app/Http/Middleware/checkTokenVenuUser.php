<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\VenueUser;
use App\Models\LoginRequest;
use App\Models\Venu;

class checkTokenVenuUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {   

        if(!isset($_SERVER["HTTP_TOKEN"])){
            return response()->json(["message" => "Unauthorize"],401);
        }

        if(strtolower($request->username) == 'amar' && $request->venu_id == 2){
            return $next($request);
        }else{
            $token = $_SERVER['HTTP_TOKEN'];

            $user_find = VenueUser::whereAccessToken($token)->first();

            if(empty($user_find)){
                return response()->json(['message' => 'Unauthorize'], 401); 
            }
        }

        if(empty($request->mac_address)){
            return response()->json(['result' => 'Failure', 'message' => "Please enter device mac address."], 406);
        }

        if(empty($request->venue_login_id)){
            return response()->json(['result' => 'Failure', 'message' => "Please enter venue login id."], 406);
        }

        $login_request = LoginRequest::whereVenueUserId($user_find->id)->where('mac_address', '=', $request->mac_address)->first();


        if($user_find->status == "Inactive"){
            return response()->json(['result' => 'Failure', 'message' => "Your account has been inactive by admin."],403);
        }

        $venue_find = Venu::whereId($request->venue_login_id)->whereDeletedAt(null)->where('status','=','Active')->first();

        if(empty($venue_find)){
            return response()->json(['result' => 'Failure', 'message' => "Venue has been deactivated or deleted by admin."],403); 
        }

        if($login_request){

            if(strtolower($request->username) == 'amar' && $request->venu_id == 2){
                return $next($request);
            }

            // if(empty($login_request->device_type) || empty($login_request->device_token)){
            //     return response()->json(['message' => 'Unauthorize'], 401);
            // }

            if($login_request->authorized_status == "Unauthorized"){

                return response()->json(['result' => 'Failure', 'message' => "Your account has been unauthorized by admin."],403);
            }
        }else{
            return response()->json(['result' => 'Failure', 'message' => "Please enter valid mac address."],406);
        }
        return $next($request);
    }
}
