<?php

namespace App\Http\Implementations;


use App\Http\Services\SeminarService;
use App\Models\Seminar;

Class SeminarServiceImpl implements SeminarService
{
    public function getAllSeminars(){
        $seminars = Seminar::all();

        return response()->json([
            'seminars' => $seminars,
        ], 200);
    }
}
