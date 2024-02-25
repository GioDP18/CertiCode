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
        return $this->participantService->register($request);
    }

    public function getCertificate($userID){
        return $this->participantService->getCertificate($userID);
    }
    
    public function getParticipSeminars($userID){
        return $this->participantService->getParticipSeminars($userID);
    }
}
