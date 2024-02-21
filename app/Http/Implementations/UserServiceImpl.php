<?php

namespace App\Http\Implementations;


use App\Http\Services\UserService;
use App\Models\User;

Class UserServiceImpl implements UserService
{
    public function getAllUsers(){
        $users = User::where('user_level', 2)->get();

        return response()->json([
            'users' => $users,
        ], 200);
    }
}
