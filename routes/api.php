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

Route::middleware('auth:api')->get('/user', function (Request $request){
    return $request->user();
});
    
Route::get('transfer-to-wallet','Controller@transferToWallet');   
Route::get('offer-assign-user-cron-job','Controller@OfferAssignUserCronJob');
Route::get('evenet-notification-cron-job','Controller@eventNotificationCronJob');
Route::get('user-verify-email-cron-job','Controller@UserVerifyEmailCronJob');
Route::get('assign-badges-email-cron-job','Controller@AssignBadgesEmailCronJob');
  
Route::group(['namespace' => 'Api\v1','prefix'=>'v1'], function() {

    Route::post('send-otp','AuthenticationController@sendOTP');
    Route::post('verify-otp','AuthenticationController@verifyOTP');
    Route::post('register', 'AuthenticationController@register');
    Route::post('login', 'AuthenticationController@login'); 
    Route::post('check-email', 'AuthenticationController@checkEmail'); 
    Route::post('forgot-password','AuthenticationController@forgotPassword');
    Route::get('application-data','AuthenticationController@applicationData');
    Route::get('city-listing','AuthenticationController@cityListing');

    Route::get('content-managment','AuthenticationController@contentManagment');

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
        Route::post('user-assgin-badge-listing','AuthenticationController@userAssignBadgeListing');
        Route::get('user-notification-history','AuthenticationController@userNotificationHistory');

        Route::post('contactus-email-send','AuthenticationController@contactUsEmail');

        Route::get('noti-records','AuthenticationController@notiRecords');
        Route::post('read-noti-records','AuthenticationController@readNotiRecords');
        

    });


/*Venue*/

    Route::post('venueuser-login','RestaurantAuthenticationController@venuUserLogin');
    Route::get('venue_listing-without-token','RestaurantAuthenticationController@venueListingWithoutToken');
    Route::group(['middleware' => 'checkTokenVenuUser'], function(){

        Route::post('get-profile-venue-user','RestaurantAuthenticationController@venuUserProfile');
        Route::post('get-user-data/{user_id}','RestaurantAuthenticationController@getUserData');
        Route::post('send-otp-ipad','RestaurantAuthenticationController@sendOtpIpad');
        Route::post('verify-otp-ipad','RestaurantAuthenticationController@verifyOtpIpad');
        Route::post('venue-user-logout','RestaurantAuthenticationController@venueUserlogout');
        Route::post('search-user-data','RestaurantAuthenticationController@searchUserData');
        Route::post('pay-amount','RestaurantAuthenticationController@payAmount');
        Route::post('redeem-offer','RestaurantAuthenticationController@redeemOffer');
    });


    /*POS*/


    Route::group(['middleware' => 'venuePosCheck'], function(){

        Route::post('scan-pos','RestaurantAuthenticationController@scanPos');
        Route::post('pos-pay-bill','RestaurantAuthenticationController@posPayBill');
    });
    

});
