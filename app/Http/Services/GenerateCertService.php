<?php

namespace App\Http\Services;

use Illuminate\Http\Request;

interface GenerateCertService
{
    public function __construct();

    public function generate();
}
