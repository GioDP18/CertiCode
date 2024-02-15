<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Certificate;

class CertificateController extends Controller
{
    public function addCertificate(Request $request){
        $certificate = Certificate::create($request->all());
    }
}
