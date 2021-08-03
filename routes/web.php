<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/abc', function () {
    return view('welcome');
});


Route::get('/queue-work', function() {
   $exitCode = Artisan::call('queue:work');
    return 'queue-work';
});

Route::get('/cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return 'cache cleared';
});

Route::get('/route', function() {
    $exitCode = Artisan::call('route:clear');
    return 'route cleared';
});

Route::get('/configgg', function() {
	
    $exitCode = Artisan::call('config:clear');
    return 'config cleared';
});

Route::get('/view', function() {
    $exitCode = Artisan::call('view:clear');
    return 'view cleared';
});

Route::get('/link', function() {
    $exitCode = Artisan::call('storage:link');
    return 'link cleared';
});


Route::get('listen', function() {
    return Artisan::call('queue:listen');
});


/* USER APP URL*/
Route::get('password-reset-success','Api\v1\AuthenticationController@viewMessageResetPassword')->name('passwordReset');
Route::get('password-reset-invalid','Api\v1\AuthenticationController@viewMessageResetPasswordInvalid')->name('passwordResetInvalid');
Route::get('confirm-account/{verify_email_token?}','Api\v1\AuthenticationController@confirmAccount')->name('confirmAccount');
Route::match(['GET','POST'],'reset-password/{reset_password_token?}','Api\v1\AuthenticationController@resetPassword')->name('userResetPassword');

/*END USER APP URL*/



/*ADMIN ROUTE*/
Route::group(['middleware' => 'TimeZone','namespace' => 'Admin','prefix'=>'/admin', 'as' => 'admin.'],function(){

    Route::match(['GET','POST'],'login','AuthenticationController@login')->name('login');
    Route::match(['GET','POST'],'forgot-password','AuthenticationController@forgotPassword')->name('forgotPassword');
    Route::match(['GET' , 'POST'] , 'reset-password/{token}' , 'AuthenticationController@resetPassword')->name('resetPassword');
    Route::match(["GET","POST"],"feedbackReset","AuthenticationController@feedbackReset")->name('feedbackReset');
    Route::match(["GET","POST"],"link-expired","AuthenticationController@linkExpired")->name('linkExpired');

    Route::group(['middleware'=>['CheckAdmin']] , function() {

        Route::get('download-users','TabController@downloadUsers')->name('downloadUsers');
        Route::post('block-users','TabController@blockUsers')->name('blockUsers');
        Route::post('unblock-users','TabController@unBlockUsers')->name('unBlockUsers');
        Route::post('authorized-unauthorized','TabController@authorizedUnauthorized')->name('authorizedUnauthorized');
        Route::post('cashback-according-to-venue','TabController@cashBackAccordingToVenue')->name('cashBackAccordingToVenue');
        Route::post('cashback-save','TabController@cashbackSave')->name('cashbackSave');
        Route::post('delete_cashback','TabController@deleteCashback')->name('deleteCashback');

        Route::post('update-user-data','TabController@updateUserData')->name('updateUserData');

        Route::get('logout','AuthenticationController@logout')->name('logout');
        
        Route::match(['GET','POST'],'admin-tabs','TabController@adminTabs')->name('adminTabs');
        Route::match(['GET','POST'],'cus-tier-settings','TabController@customerTierSettings')->name('customerTierSettings');
        Route::post('cus-tier-settings-ajax','TabController@customerTierSettingsAjax')->name('customerTierSettingsAjax');
        Route::post('cus-tier-name-remove-ajax','TabController@customerTierNameRemove')->name('customerTierNameRemove');
        Route::post('add-customer-tier-ajax','TabController@addCustomerTierAjax')->name('addCustomerTierAjax');
        Route::match(['GET','POST'],'cus-tier-settings-gold','TabController@customerTierSettingsGold')->name('customerTierSettingsGold');
        Route::match(['GET','POST'],'cus-tier-settings-dimond','TabController@customerTierSettingsDimond')->name('customerTierSettingsDimond');

        Route::match(['GET','POST'],'adding-venue-table','TabController@addingVenueTable')->name('addingVenueTable');
        Route::match(['GET','POST'],'cash-back','TabController@cashBack')->name('cashBack');
        Route::match(['GET','POST'],'all-data-availability','TabController@allDataAvailability')->name('allDataAvailability');
        Route::match(['GET','POST'],'adding-venue','TabController@addingVenue')->name('addingVenue');
        Route::match(['GET','POST'],'adding-events','TabController@addingEvents')->name('addingEvents');
        Route::match(['GET','POST'],'offer-settings','TabController@offerSettings')->name('offerSettings');
        Route::match(['GET','POST'],'venue-user','TabController@venueUser')->name('venueUser');
        Route::match(['GET','POST'],'notification-settings','TabController@notificationSetting')->name('notificationSetting');
        Route::match(['GET','POST'],'admin-user','TabController@adminUser')->name('adminUser');
        Route::match(['GET','POST'],'performance-dashboard','TabController@performanceDashboard')->name('performanceDashboard');
        Route::match(['GET','POST'],'cross-verification-sales','TabController@crossVerificationSales')->name('crossVerificationSales');
        Route::match(['GET','POST'],'general-settings','TabController@generalSettings')->name('generalSettings');
    }); 
           
});

/*END OF ADMIN ROUTE*/