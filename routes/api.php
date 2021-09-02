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
    Route::post('check-email', 'AuthenticationController@checkEmail'); 
    Route::post('forgot-password','AuthenticationController@forgotPassword');
    Route::get('application-data','AuthenticationController@applicationData');
    Route::get('city-listing','AuthenticationController@cityListing');
    
    Route::group(['middleware' => ['auth:api','checkBlockDelete']], function(){

        Route::get('logout', 'AuthenticationController@logout');

        Route::get('profile/{id?}', 'AuthenticationController@getProfile');

        Route::post('update-user', 'AuthenticationController@updateUser');

        Route::get('venue-listing','AuthenticationController@venueListing');
        Route::get('venue-details/{venue_id}','AuthenticationController@venueDetails');

        Route::get('event-listing','AuthenticationController@eventListing');
        Route::post('today-events','AuthenticationController@todayEvent');
        Route::get('event-details/{event_id}','AuthenticationController@eventDetails');
        Route::post('offer-listing','AuthenticationController@offerListing');
        Route::get('offer-details/{offer_id}','AuthenticationController@offerDetails');
        Route::post('promotion-cashbacks','AuthenticationController@promotionCashbackListing');
        Route::get('promotion-cashback-details/{promotion_cashback_id}','AuthenticationController@promotionCashbackDetails');
        Route::post('event-and-promotion','AuthenticationController@eventAndPromotion');

    });




    Route::post('venueuser-login','RestaurantAuthenticationController@venuUserLogin');
    Route::get('venue_listing-without-token','RestaurantAuthenticationController@venueListingWithoutToken');
    Route::group(['middleware' => 'checkTokenVenuUser'], function(){

        Route::get('get-profile-venue-user/{id?}','RestaurantAuthenticationController@venuUserProfile');
    });

});
