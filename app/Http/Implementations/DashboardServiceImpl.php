<?php

namespace App\Http\Implementations;


use App\Http\Services\DashboardService;
use App\Models\Participant;
use App\Models\Seminar;

Class DashboardServiceImpl implements DashboardService
{
    public function getDashboardData(){
        $totalSeminars = Seminar::all()->count();
        $totalParticipants = Participant::all()->count();
        $totalCertificatesIssued = Participant::where('certificate_sent', 1)->get()->count();

        return response()->json([
            "totalSeminars" => $totalSeminars,
            "totalParticipants" => $totalParticipants,
            "totalCertificatesIssued" => $totalCertificatesIssued,
        ]);
    }
}
