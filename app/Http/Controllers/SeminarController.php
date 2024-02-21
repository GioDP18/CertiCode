<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\SeminarService;

class SeminarController extends Controller
{
    public function __construct(public SeminarService $seminarService)
    {
        
    }
    
    public function register(Request $request){
        $this->seminarService->register($request);
    }
}
