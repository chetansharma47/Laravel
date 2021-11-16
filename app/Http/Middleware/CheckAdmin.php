<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Session;

class CheckAdmin
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

        if(!Auth::guard('admin')->check()){
            return redirect(route('admin.login'));
        }

        if(Auth::guard('admin')->user()->status == 'Inactive'){
            Auth::guard('admin')->logout();
            Session::flush();
            Session::flash('danger', 'Your account has been inactivated by admin or super admin.');
            return redirect(route('admin.login'));
        }
        
        return $next($request);
    }
}
