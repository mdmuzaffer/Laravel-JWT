If you want to use basic auth or you can use APP_KEY etc follow this documentation
===================================================================================
1:- Create Auth key for API 

First make middleware

php artisan make:middleware AuthKey

open this miidleware and add this code
-----------------------------------------

 public function handle(Request $request, Closure $next)
    {
	   $token = $request->header('API-KEY');
       //$AuthToken = $_SERVER['APP_KEY'];
       $AuthToken = $_SERVER['API_KEY']; // getting value from .env file
		if($token!= $AuthToken){
			return response()->json(['message'=>'Auth App Key not found','status'=>401]);
		}
        return $next($request);
    }

--------------------------------------

Also add the middle ware in the kernal.php fiel in "protected $middlewareGroups" in API

'api' => [
            'throttle:api',
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
            \App\Http\Middleware\AuthKey::class,
        ],

Now In your Api in Header pass key and value of you postman.
API-KEY =ABCDEFGHI

Also Add the variable in your .env file like that

API_KEY=ABCDEFGHI

$token = $request->header('API-KEY'); It is getting from API header value 

$AuthToken = $_SERVER['API_KEY']; // getting value from .env file

================================================================================================

2. How to create basic Auth ot onceBasic in laravel API

First created middleware 

php artisan make:middleware AuthBasic

After create basic auth check onceBasic auth open AuthBasic middle file.

Add this code 

 public function handle($request, Closure $next)
    {
        if(Auth::onceBasic()){
            return response()->json(['message' => 'Auth Failed','status'=>401]);
        }else {
            return $next($request);
        }

    }

A. add auth class in kernal file. inside protected mddlewaregorup in api

'api' => [
            'throttle:api',
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
            \App\Http\Middleware\AuthKey::class,
            \App\Http\Middleware\AuthBasic::class,
        ],

B. create default auth in laravel and resister atlest one auth.
Now select the bsic auth in postman click =>Authorization=>type=>Basic auth

