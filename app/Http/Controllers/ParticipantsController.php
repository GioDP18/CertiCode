<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\ParticipantsService;


class ParticipantsController extends Controller
{
    public function __construct(public ParticipantsService $participantsService)
    {
        
    }
    
    public function register(Request $request){
        $this->participantsService->register($request);
    }
}
