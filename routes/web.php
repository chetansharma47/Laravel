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

Route::get('/queue-restart', function() {
   $exitCode = Artisan::call('queue:restart');
    return 'queue-restart';
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
Route::get('password-reset-success/{user_id?}','Api\v1\AuthenticationController@viewMessageResetPassword')->name('passwordReset');
Route::get('password-reset-invalid/{user_id?}','Api\v1\AuthenticationController@viewMessageResetPasswordInvalid')->name('passwordResetInvalid');
Route::get('confirm-account/{verify_email_token?}/{user_id?}','Api\v1\AuthenticationController@confirmAccount')->name('confirmAccount');
Route::match(['GET','POST'],'reset-password/{reset_password_token?}/{user_id?}','Api\v1\AuthenticationController@resetPassword')->name('userResetPassword');

/*END USER APP URL*/



/*ADMIN ROUTE*/
Route::group(['middleware' => 'TimeZone','namespace' => 'Admin','prefix'=>'/admin', 'as' => 'admin.'],function(){

    Route::match(['GET','POST'],'login','AuthenticationController@login')->name('login');
    Route::match(['GET','POST'],'privacy-policy','AuthenticationController@PrivacyPolicy')->name('PrivacyPolicy');
    Route::match(['GET','POST'],'forgot-password','AuthenticationController@forgotPassword')->name('forgotPassword');
    Route::match(['GET' , 'POST'] , 'reset-password/{token}' , 'AuthenticationController@resetPassword')->name('resetPassword');
    Route::match(["GET","POST"],"feedbackReset","AuthenticationController@feedbackReset")->name('feedbackReset');
    Route::match(["GET","POST"],"link-expired","AuthenticationController@linkExpired")->name('linkExpired');

    Route::group(['middleware'=>['CheckAdmin']] , function() {

        Route::post('download-users','TabController@downloadUsers')->name('downloadUsers');
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
        Route::post('wallet-transactions','TabController@walletTransactions')->name('walletTransactions');
        Route::post('download-wallet-transactions','TabController@downloadWalletTransactions')->name('downloadWalletTransactions');
        Route::match(['GET','POST'],'adding-venue','TabController@addingVenue')->name('addingVenue');
        Route::match(['GET','POST'],'adding-events','TabController@addingEvents')->name('addingEvents');
        Route::match(['GET','POST'],'offer-settings','TabController@offerSettings')->name('offerSettings');
        Route::match(['GET','POST'],'venue-user','TabController@venueUser')->name('venueUser');
        Route::post('single-venue-user','TabController@getSingleVenueUser')->name('getSingleVenueUser');
        Route::post('update-venue-user','TabController@updateVenueUser')->name('updateVenueUser');

        Route::match(['GET','POST'],'venue-ls','TabController@venueList')->name('venuels');
        Route::match(['GET','POST'],'venue-remove','TabController@venueRemove')->name('remove_elem');
        Route::match(['GET','POST'],'venue-save','TabController@venuSave')->name('venusave');
        Route::match(['GET','POST'],'all-venu','TabController@allVenuEvents')->name('allvenu');
        Route::match(['GET','POST'],'particular-venu','TabController@ParticularVenu')->name('particularVenu');
        Route::match(['GET','POST'],'save-event','TabController@SaveEvent')->name('saveEvent');
        Route::match(['GET','POST'],'events-alldata','TabController@eventsallData')->name('eventsalldata');
        Route::match(['GET','POST'],'events-remove','TabController@eventRemove')->name('eventremove');

        Route::match(['GET','POST'],'venue-create-display','TabController@CreateVenue')->name('createvenue');
        Route::match(['GET','POST'],'venue-table','TabController@venueTableRecords')->name('venuetable');

        Route::match(['GET','POST'],'venu-select','TabController@venuSelect')->name('venu_select');
        Route::match(['GET','POST'],'save-offers','TabController@saveOffers')->name('saveoffers');
        Route::match(['GET','POST'],'all-offers','TabController@AllOffers')->name('alloffers');
        Route::match(['GET','POST'],'offer-remove','TabController@offerRemove')->name('offerremove');
        
        
        Route::match(['GET','POST'],'notification-settings','TabController@notificationSetting')->name('notificationSetting');
        Route::match(['GET','POST'],'admin-user','TabController@adminUser')->name('adminUser');
        Route::match(['GET','POST'],'performance-dashboard','TabController@performanceDashboard')->name('performanceDashboard');
        Route::match(['GET','POST'],'cross-verification-sales','TabController@crossVerificationSales')->name('crossVerificationSales');
        Route::match(['GET','POST'],'general-settings','TabController@generalSettings')->name('generalSettings');

        Route::match(['GET','POST'],'edit-venuetable','TabController@editVenueTable')->name('editvenuetable');

        Route::post('activate-users','TabController@activateUsers')->name('activateUsers');
        Route::post('deactivate-users','TabController@deactivateUsers')->name('deactivateUsers');
        Route::post('verify-users','TabController@verifyUsers')->name('verifyUsers');
        Route::post('reset-password-send-link','TabController@resetPasswordSendLink')->name('resetPasswordSendLink');

        Route::post('total-transaction-amount-for-tier','TabController@totalTransactionAmountForDays')->name('totalTransactionAmountForDays');
        Route::post('total-validate-check-for-tier','TabController@totalValidateCheckForDays')->name('totalValidateCheckForDays');

        Route::get('badges','TabController@badges')->name('badges');
        Route::get('assign-badges','TabController@assignBadges')->name('assignBadges');
        Route::post('search-users-assign-badges','TabController@searchAssignBadges')->name('searchAssignBadges');
        Route::post('badge-assign-list-users','TabController@badgeAssignListUsers')->name('badgeAssignListUsers');
        Route::post('add-or-update-badge-assign','TabController@addOrUpdateBadgeAssign')->name('addOrUpdateBadgeAssign');
        Route::post('findBadge','TabController@findBadge')->name('findBadge');
        Route::post('find-badge-by-id','TabController@findBadgeById')->name('findBadgeById');
        Route::post('delete-assign-badge','TabController@deleteAssignBadge')->name('deleteAssignBadge');



        Route::post('badges','TabController@AddNewBadge')->name('addNewBadge');
        Route::post('badges-list','TabController@BadgesList')->name('badgeslist');
        Route::post('edit-badges','TabController@editBadges')->name('editbadges');
        Route::post('assign-users-list','TabController@assignUserList')->name('assign_user_list');
        Route::post('delete-badges','TabController@deleteBadge')->name('deleteBadge');
        Route::get('download-assign-badge-users/{badge_id?}/{search_txt?}','TabController@downloadBadgeAssignUsers')->name('download_badge_assign_users');

        /* Notification management */

        Route::post('save-notification-message','TabController@SaveNotificationMessage')->name('save_notification_message');
        Route::post('save-notification-message-email','TabController@SaveNotificationMessageEmail')->name('save_notification_message_email');
        Route::post('save-criteria-message','TabController@SaveCriteriaMessage')->name('saveCriteriaMessage');
        Route::get('get-admins-notifications','TabController@getAdminNotifications')->name('getAdminNotification');
        Route::post('notifications-history','TabController@notificationHistory')->name('notification_history');

        /*Analytics dashboard*/
        
        Route::post('analytics-dashboard','TabController@AnalyticsDashboard')->name('analyticsDashboard');

         /*Cross Verifiction Sales*/

        Route::post('cross-verification-sales-dashboard','TabController@CrossVerificationSalesDashboard')->name('CrossVerificationSalesDashboard');
        Route::post('excel-verify-transaction','TabController@ExcelVerifyTransaction')->name('excel_verify_transaction');
        Route::get('export-cross-verification-sales','TabController@ExportCrossVerificationSales')->name('export_cross_verification_sales');
        Route::post('force-verify-all-pending-sales','TabController@ForceVerifyAllPendingSales')->name('force_verify_all_pending_sales');
        Route::post('delete-selected-transactions','TabController@DeleteSelectedTransactions')->name('delete_selected_transactions');
        Route::post('verify-selected-transactions','TabController@VerifySelectTransactions')->name('verify_select_transactions');

        Route::get('download-verify-sales-after-successfully-uploded-file/{ids_data}','TabController@donwloadSalesVerifyAfterSuccessfullyUplodedFile')->name('donwloadSalesVerifyAfterSuccessfullyUplodedFile');
        
        Route::post('end-user-customer-transactions','TabController@EndUserCustomerTransactions')->name('EndUserCustomerTransactions');
        Route::POST('excel-download-customer-transactions','TabController@ExcelDownloadCustomerTransactions')->name('ExcelDownloadCustomerTransactions');

        Route::get('get-general-settings','TabController@getGeneralSettings')->name('getGeneralSettings');
        Route::post('general-settings-save','TabController@generalSettingsSave')->name('generalSettingsSave');
        Route::post('application-data-save','TabController@applicationDataSave')->name('application_data_save');
        Route::post('save-gen-application-data','TabController@saveGenApplicationData')->name('save_gen_application_data');
        Route::post('admin-user-save','TabController@adminUserSave')->name('admin_user_save');
        Route::post('admin-user-update','TabController@adminUserUpdate')->name('admin_user_update');


        Route::post('get-admin-users-list','TabController@getAdminUsersList')->name('get_admin_users_list');
        Route::post('get-single-admin-user','TabController@getSingleAdminUser')->name('get_single_admin_user');

        Route::get('lg','AuthenticationController@lg')->name('lg');
        Route::get('download-wallet-transactions-after-criteria-match/{ids_data}','TabController@downloadWalletTransactionsAfterCriteriaMatch')->name('downloadWalletTransactionsAfterCriteriaMatch');
        Route::get('download-wallet-transactions-after-selected-user/{ids_data}','TabController@downloadWalletTransactionsAfterSelectedUser')->name('downloadWalletTransactionsAfterSelectedUser');
        Route::get('download-user-after-criteria/{ids_data}','TabController@downloadUserAfterCriteria')->name('downloadUserAfterCriteria');
    }); 
           
});

/*END OF ADMIN ROUTE*/