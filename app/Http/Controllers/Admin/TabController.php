<?php

namespace App\Http\Controllers\Admin;

header('Cache-Control: no-store, private, no-cache, must-revalidate');
header('Cache-Control: pre-check=0, post-check=0, max-age=0, max-stale = 0', false);
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Hash;
use Illuminate\Support\Str;
use Session;
use Artisan;
use Carbon\Carbon;
use DB;
use App\Validation;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
use Auth;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;
use Redirect;
use Illuminate\Support\Facades\Input;
use Mail;
use App\BusinessModel\AdminAuthenticateBusiness;
use App\Http\Controllers\Admin\ResponseController;

class TabController extends Controller
{
    public function adminTabs(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.admin_tabs');
    	}
    }

    public function customerTierSettings(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.cust_tier_settings');
    	}
    }

    public function customerTierSettingsGold(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.cust_tier_settings2');
    	}
    }

    public function customerTierSettingsDimond(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.cust_tier_settings3');
    	}
    }

    public function addingVenueTable(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.adding_venue_table');
    	}
    }

    public function cashBack(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.cash-back');
    	}
    }

    public function allDataAvailability(Request $request){
    	if($request->isMethod('GET')){
    		return view('admin.all-data-availability');
    	}
    }
}
