<?php

namespace App\Http\Controllers;

use App\Http\Services\UserService;
use Illuminate\Http\Request;

class UserController extends Controller
{

    public function __construct(public UserService $userService){

    }
    public function getAllUsers(){
        return $this->userService->getAllUsers();
    }
}
