<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Country;
use Validator;

class CountryController extends Controller
{
	public function __construct()
    {
        $this->middleware('jwt.verify', ['except' => ['test']]);
    }

	// get all country
      public function country(){
		return response()->json(Country::get(), 200);
	}
	
	//Get single country by Id
	public function countryById($id){
	 	$countryData = Country::find($id);

	 	if(is_null($countryData)){
	 		$message =['message' =>'Your country record not found','status'=>404];
	 		return response()->json($message, 200);
	 	}
	 	$message =['message' =>'Your country record found!','status'=>200];
	 	return response()->json(['country'=>$countryData,'message'=>$message]);
	}
	
	// Add a country
	public function countrySave(Request $request){
		$rules = [ 
            'name' => 'required |min:4', 
        ];
        $validator = Validator::make($request->all(),$rules);
        if ($validator->fails()) {
          return response()->json($validator->errors(),400);
        }

		$coumtry = Country::create($request->all());
		return response()->json($coumtry, 201);
	}
	
	public function countryUpdate(Request $request, $id){
		$country = Country::find($id);
		if(is_null($country)){
	 		$message =['message' =>'Your country record not found','status'=>404];
	 		return response()->json($message);
	 	}

	 	$rules = [ 
            'name' => 'required |min:4', 
        ];
        $validator = Validator::make($request->all(),$rules);
        if ($validator->fails()) {
          return response()->json($validator->errors(),400);
        }

		$country = $country->update($request->all());
		$message =['update'=>$country, 'message' =>'Your data updated successfully','status'=>201];
		return response()->json($message);
	
	}
	public function countryDelete(Request $request, Country $country){
		$country->delete();
		$message =['message' =>'Your country deleted successfully','status'=>201];
		return response()->json($message);
	}

}
