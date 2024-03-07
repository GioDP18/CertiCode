<?php

namespace App\Http\Services;

use Illuminate\Http\Request;

interface SeminarService
{
    public function getAllSeminars();

    public function addNewSeminar(Request $request);

    public function seminarInfo($id);
}
