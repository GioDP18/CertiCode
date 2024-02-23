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

    public function getUserDetails(Request $request){
        return $this->userService->getUserDetails($request);
    }

    public function updateProfile(Request $request){
        return $this->userService->updateProfile($request);
    }

    public function getSeminarsAttended(Request $request){
        return $this->userService->getSeminarsAttended($request);
    }

    public function getSeminarTopic(Request $request){
        return $this->userService->getSeminarTopic($request);
    }
}
