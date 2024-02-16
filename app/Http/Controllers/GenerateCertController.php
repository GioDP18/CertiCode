<?php

namespace App\Http\Controllers;
use App\Http\Services\GenerateCertService;

class GenerateCertController extends Controller
{
    public function __construct(public GenerateCertService $generateCertService)
    {
        
    }

    public function generate()
    {
        return $this->generateCertService->generate();
    }
}
