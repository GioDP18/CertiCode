<?php

namespace App\Http\Controllers;

use App\Http\Services\CertificateService;
use Illuminate\Http\Request;
use App\Models\Certificate;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendAllCertificate;


class CertificateController extends Controller
{
    /**
     *
     */
    public function __construct(public CertificateService $certificateService){

    }

    public function getAllCertificate(){
        return $this->certificateService->getAllCertificate();
    }

    public function addCertificate(Request $request){
        return $this->certificateService->addCertificate($request);
    }

    public function updateCertificate(Request $request){
        return $this->certificateService->updateCertificate($request);
    }

    public function sendAllCertificate(Request $request){
        return $this->certificateService->sendAllCertificate($request);
    }

    public function sendOneCertificate(Request $request){
        return $this->certificateService->sendOneCertificate($request);
    }
}
