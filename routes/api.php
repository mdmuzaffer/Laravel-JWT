<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
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
/*Route::group(['middleware' => 'api','prefix' => 'auth'], function ($router){
    Route::post('login', 'App\Http\Controllers\AuthController@login');
    Route::post('register', 'App\Http\Controllers\AuthController@register');
    Route::post('logout', 'App\Http\Controllers\AuthController@logout');
    Route::post('refresh', 'App\Http\Controllers\AuthController@refresh');
    Route::post('me', 'App\Http\Controllers\AuthController@me');
    Route::post('test', 'App\Http\Controllers\AuthController@test');
});*/

Route::group(['middleware' => 'api','prefix' => 'auth'], function ($router){
    Route::post('login', 'App\Http\Controllers\Api\AuthController@login');
    Route::post('register', 'App\Http\Controllers\Api\AuthController@register');
    Route::post('logout', 'App\Http\Controllers\Api\AuthController@logout');
    Route::post('refresh', 'App\Http\Controllers\Api\AuthController@refresh');
    Route::post('me', 'App\Http\Controllers\Api\AuthController@me');
    Route::post('test', 'App\Http\Controllers\Api\AuthController@test');

    //Country controller
	Route::get('country', 'App\Http\Controllers\CountryController@country');
	Route::get('country/{id}','App\Http\Controllers\CountryController@countryById');
	Route::post('country','App\Http\Controllers\CountryController@countrySave');
	Route::put('country/{id}','App\Http\Controllers\CountryController@countryUpdate');
	Route::delete('country/{country}','App\Http\Controllers\CountryController@countryDelete');
});

