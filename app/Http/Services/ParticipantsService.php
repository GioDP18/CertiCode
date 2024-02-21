<?php

namespace App\Http\Services;
use Illuminate\Http\Request;

interface ParticipantsService
{
    public function __construct();

    public function register(Request $request);
}
