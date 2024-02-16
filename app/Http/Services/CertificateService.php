<?php

namespace App\Http\Services;
use Illuminate\Http\Request;

interface CertificateService
{
    public function getAllCertificate();
    
    public function addCertificate(Request $request);

    public function updateCertificate(Request $request);

    public function sendAllCertificate(Request $request);

    public function sendOneCertificate(Request $request);
}
