<?php

namespace App\Http\Services;
use Illuminate\Http\Request;

interface SeminarService
{
    public function __construct();

    public function register(Request $request);
}
