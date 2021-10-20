<?php

namespace App\Http\Middleware;

use Closure;

class VenuePosCheck
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

        if(empty($request->password)){
            return response()->json(['result' => 'Failure', 'message' => "Please enter password."], 406);
        }

        if(empty($request->timezone)){
            return response()->json(['result' => 'Failure', 'message' => "Please enter timezone."], 406);
        }
        return $next($request);
    }
}
