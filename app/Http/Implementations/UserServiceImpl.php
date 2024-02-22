<?php

namespace App\Http\Implementations;


use App\Http\Services\UserService;
use App\Models\User;
use Illuminate\Http\Request;

Class UserServiceImpl implements UserService
{
    public function getAllUsers(){
        $users = User::where('user_level', 2)->get();

        return response()->json([
            'users' => $users,
        ], 200);
    }

    public function getUserDetails(Request $request){
        $user = User::find($request->user_id);

        return response()->json([
            'user' => $user,
        ], 200);
    }

    public function updateProfile(Request $request){
        $checkPass = User::find($request->user_id);
        if($request->current_password != '' && $request->new_password!= null){
            if(bcrypt($request->current_password) != $checkPass->password){
                return response()->json([
                    "success" => false,
                    "message" => "Current password does not match.",
                ], 400);
            }
        }


        $updateData = [
            'firstname' => $request->firstname,
            'middlename' => $request->middlename,
            'lastname' => $request->lastname,
            'gender' => $request->gender,
            'email' => $request->email,
        ];

        if ($request->new_password != null) {
            $updateData['password'] = bcrypt($request->new_password);
        }

        $update = User::where('id', $request->user_id)->update($updateData);

        if(!$update){
            return response()->json([
                "success" => false,
                "message" => "There was a problem updating your profile."
            ], 400);
        }

        return response()->json([
            "success" => true,
            "message" => "Profile updated successfully."
        ], 200);
    }
}
