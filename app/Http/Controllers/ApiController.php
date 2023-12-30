<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Hash;
use Validator;
use Auth;

class ApiController extends Controller
{
    public function sendError($error, $errorMessages = [], $code = 404) {
		$response = [
			'success' => false,
			'message' => $error,
		];

		if (!empty($errorMessages)) {
			$response['data'] = $errorMessages;
		}

		return response()->json($response, $code);
	}
    public function register(Request $request)
    {
        
        $validate = Validator::make($request->all(), [
			'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
		]);

		if ($validate->fails()) {
			return $this->sendError($validate->errors()->first(), $validate->errors(), 404);
		}
       
       
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        
        return response()->json(['message' => 'User registered successfully'], 201);
    }

    public function login(Request $request)
    {
        
        $validate = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
		]);

        if ($validate->fails()) {
			return $this->sendError($validate->errors()->first(), $validate->errors(), 404);
		}

        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $user = Auth::user();
        $user['token'] = $user->createToken('authToken')->accessToken;
       
        return response()->json(['data' => $user], 200);
        
    }

    
    public function logout(Request $request){
        
        $request->user()->token()->revoke();

        return response()->json(['message' => 'User logged out successfully'], 200);
    }
    
}
