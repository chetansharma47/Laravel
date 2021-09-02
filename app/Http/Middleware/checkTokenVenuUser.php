<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\VenueUser;

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
        $token = $_SERVER['HTTP_TOKEN'];

        $user_find = VenueUser::whereAccessToken($token)->first();

        if(empty($user_find)){
            return response()->json(['message' => 'Unauthorize'], 401); 
        }
        return $next($request);
    }
}
