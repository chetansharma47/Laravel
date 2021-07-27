<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
    
    
  
Route::group(['namespace' => 'Api\v1','prefix'=>'v1'], function() {

	Route::post('send-otp','AuthenticationController@sendOTP');
    Route::post('verify-otp','AuthenticationController@verifyOTP');
    Route::post('register', 'AuthenticationController@register');
    Route::post('login', 'AuthenticationController@login'); 
    Route::post('forgot-password','AuthenticationController@forgotPassword');
    Route::get('application-data','AuthenticationController@applicationData');
    
    Route::group(['middleware' => 'auth:api'], function(){

        Route::get('logout', 'AuthenticationController@logout');

        Route::get('profile/{id?}', 'AuthenticationController@getProfile');

        Route::post('update-user', 'AuthenticationController@updateUser');

        });
});
