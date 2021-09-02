<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
use Session;
class CheckUserBlockDelete
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


        if(Auth::User()->is_block == '1') { //error
            // return redirect('/admin');
            $user = auth()->user();
            $user->update(['device_token' => null, 'device_type' => "None"]);
            http_response_code(403);
            echo json_encode(['result'=>'Failure','message'=>'Your account has been blocked by admin']);exit;
        }elseif (Auth::User()->deleted_at != null) {
            $user = auth()->user();
            $user->update(['device_token' => null, 'device_type' => "None"]);
            http_response_code(403);
            echo json_encode(['result'=>'Failure','message'=>'Your account has been deleted by admin']);exit;
        }


        return $next($request);
    }
}
