<?php

namespace App\Http\Controllers;

use App\Http\Services\DashboardService;
use Illuminate\Http\Request;

class DashboardController extends Controller
{

    public function __construct(public DashboardService $dashboardService){

    }

    public function getDashboardData(){
        return $this->dashboardService->getDashboardData();
    }
}
