REST API FULL DOCUMENTATION
=================================

First of all I have install laravel through command:-

1. composer create-project laravel/laravel restapi
OR
2. composer create-project --prefer-dist laravel/laravel:^7.0 restapi

php artisan serve

==========================================================================

I have migrate default auth of laravel
--------------------------------------------
php artisan migrate

For bellow line command use login register for style

composer require laravel/ui
php artisan ui vue --auth
npm install
npm run dev

# Install JWT via composer for API authentication
=====================================================
https://jwt-auth.readthedocs.io/en/develop/laravel-installation/

1.Run the following command to pull in the latest version:

composer require tymon/jwt-auth

Add service provider ( Laravel 5.4 or below )
Add the service provider to the providers array in the config/app.php config file as follows:
'providers' => [
    ...
    Tymon\JWTAuth\Providers\LaravelServiceProvider::class,
]

Publish the config

Run the following command to publish the package config file:
php artisan vendor:publish --provider="Tymon\JWTAuth\Providers\LaravelServiceProvider"


You should now have a config/jwt.php file that allows you to configure the basics of this package.


Generate secret key
php artisan jwt:secret

=========================================
Update your User model

use Tymon\JWTAuth\Contracts\JWTSubject;


class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    // Rest omitted for brevity

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }
}

====================================

Configure Auth guard
Inside the config/auth.php file you will need to make a few changes to configure Laravel to use the jwt guard to power your application authentication paste it

'defaults' => [
    'guard' => 'api',
    'passwords' => 'users',
],


IF YOU WANT TO ADD DEFAULT GUARD WEB THEN IN CONTROLLER CONSTRUCTER FOR API CAN SET THEN IT WILL WORK BOTH SITE AND API ROUTE.
-------------------------- 
public function __construct()
    {

        $this->middleware('jwt.verify', ['except' => ['login','register']]);
        auth()->setDefaultDriver('api');
    }
-----------------

...

'guards' => [
    'api' => [
        'driver' => 'jwt',
        'provider' => 'users',
    ],
],


==============================

Add some basic authentication routes
First let's add some routes in routes/api.php as follows:

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');

});

FOR LARAVEL 8 ROUTE GUIDE
====================================

Route::group(['middleware' => 'api','prefix' => 'auth'], function ($router){
    Route::post('login', 'App\Http\Controllers\Api\AuthController@login');
    Route::post('logout', 'App\Http\Controllers\Api\AuthController@logout');
    Route::post('refresh', 'App\Http\Controllers\Api\AuthController@refresh');
    Route::post('me', 'App\Http\Controllers\Api\AuthController@me');
});

============================================
Create the AuthController
php artisan make:controller AuthController
Or 
php artisan make:controller Api/AuthController 

Also I have Added the code in controller check it.


Check route in postman
===============
http://localhost/restapi/public/api/auth/login
http://localhost/restapi/public/api/auth/me
http://localhost/restapi/public/api/auth/logout
http://localhost/restapi/public/api/auth/refresh

Content-Type:application/json
Accept:application/json
Authorization:Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Jlc3RhcGlcL3B1YmxpY1wvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYxMDIyMDcwNywiZXhwIjoxNjEwMjI0MzA3LCJuYmYiOjE2MTAyMjA3MDcsImp0aSI6InFOdUVMYzI1aU1yNzR1Q2EiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.hwFyUTZf5VrACFbhn8_w_WFQJqAtV9hfBT4yNuUx_yI

===========================================================================================

IF YOU WANT TO ADD CUSTOM MESSAGE LIKE ,INVALID TOKEN, TOKEN EXPIRE ETC.

Add the custom middleware and then custom message code see in below:-

Make middleware:-
php artisan make:middleware JwtMiddleware
and then add below code:-
----------------------------
<?php
namespace App\Http\Middleware;
use Closure;
use JWTAuth;
use Exception;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;

class JwtMiddleware extends BaseMiddleware{

        /**
         * Handle an incoming request.
         *
         * @param  \Illuminate\Http\Request  $request
         * @param  \Closure  $next
         * @return mixed
         */
    public function handle($request, Closure $next){
        try {
            $user = JWTAuth::parseToken()->authenticate();
            if( !$user ) throw new Exception('User Not Found');
        }catch (Exception $e) {

            if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                return response()->json(['data' => null, 'status' => false,'err_' => ['message' => 'Token is Invalid', 'code' => 1]]);

            }else if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){

                return response()->json(['data' => null, 'status' => false, 'err_' => ['message' => 'Token is Expired', 'code' =>1]]);
            }else{

                if( $e->getMessage() === 'User Not Found') {
                    return response()->json(["data" => null, "status" => false, "err_" => ["message" => "User Not Found", "code" => 1]]); 
                }
                return response()->json(['data' => null, 'status' => false, 'err_' => ['message' => 'Authorization Token not found', 'code' =>1]]);
            }
        }
        return $next($request);
    }

    }

==============================

ALSO ADD GOROUP ROUTE IN MODDLE WARE
========================================
protected $routeMiddleware = [
'jwt.verify' => \App\Http\Middleware\JwtMiddleware::class,
]

Also add the middleware in construct  controller AuthController

 public function __construct()
    {
        $this->middleware('jwt.verify', ['except' => ['login','register']]);
        auth()->setDefaultDriver('api'); //IF YOU ADDED DEFAULT GUARD WEB
    }

Note Don't need to add in rote any things else of middleware
Note No add middleware in Api.php file
Thanks

