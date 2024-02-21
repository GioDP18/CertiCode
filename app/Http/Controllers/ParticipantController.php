<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\ParticipantService;


class ParticipantController extends Controller
{
    public function __construct(public ParticipantService $participantService)
    {
        
    }
    
    public function register(Request $request){
        $this->participantService->register($request);
    }
}