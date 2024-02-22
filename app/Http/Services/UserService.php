<?php

namespace App\Http\Services;
use Illuminate\Http\Request;

interface UserService
{
    public function getAllUsers();

    public function getUserDetails(Request $request);

    public function updateProfile(Request $request);
}
