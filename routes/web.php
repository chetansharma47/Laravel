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
