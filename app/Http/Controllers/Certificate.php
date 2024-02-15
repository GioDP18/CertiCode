<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Certificate;

class Certificate extends Controller
{
    public function addCertificate(Request $request){
        $certificate = Certificate::create($request->all());
    }
}
