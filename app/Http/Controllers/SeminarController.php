<?php

namespace App\Http\Controllers;

use App\Http\Services\SeminarService;
use Illuminate\Http\Request;

class SeminarController extends Controller
{
    public function __construct(public SeminarService $seminarService){

    }

    public function getAllSeminars(){
        return $this->seminarService->getAllSeminars();
    }
}
