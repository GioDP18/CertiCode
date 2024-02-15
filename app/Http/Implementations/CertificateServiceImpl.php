<?php

namespace App\Http\Implementations;
use Illuminate\Http\Request;
use App\Models\Certificate;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendAllCertificate;


use App\Http\Services\CertificateService;
use App\Http\Services\GenerateCertService;

Class CertificateServiceImpl implements CertificateService
{
    protected GenerateCertService $generateCertService;

    public function __construct(GenerateCertService $generateCertService){
        $this->generateCertService = $generateCertService;
    }

    public function addCertificate(Request $request){
        $certificate = Certificate::create($request->all());

        if(!$certificate){
            return response()->json([
                "success"=> false,
                "message"=> "There was an error processing your request."
            ]);
        }

        return response()->json([
            "success"=> true,
            "message"=> "Successfully Created New Certificate."
        ]);
    }

    public function updateCertificate(Request $request){
        $certificate = Certificate::where("id", $request->id)->update($request->all());

        if(!$certificate){
            return response()->json([
                "success"=> false,
                "message"=> "There was an error processing your request."
            ]);
        }

        return response()->json([
            "success"=> true,
            "message"=> "Successfully Updated Certificate."
        ]);
    }

    public function sendAllCertificate(Request $request){
        $members[] = User::where('user_level', 2)->get('email');

        // $filePath = public_path('Certificates\\Resume.docx');

        foreach ($members as $member){
            $filePath = $this->generateCertService->generate(); // need to pass member_id and certificate_id for descriptions and name

            $data = [
                'name' => "Gio Dela Peña",
                'email' => $member,
            ];
            Mail::send(new SendAllCertificate($data, $filePath));
        }

        return response()->json([
            "success"=> true,
            "message"=> "All certificates sent successfully.",
        ]);
    }

    public function sendOneCertificate(Request $request){
        $email = User::where('id', $request->user_id)->get('email');

        // $filePath = public_path('Certificates\\Resume.docx');
        $filePath = $this->generateCertService->generate(); // need to pass member_id and certificate_id for descriptions and name
        $data = [
            'name' => "Gio Dela Peña",
            'email' => $email,
        ];
        Mail::send(new SendAllCertificate($data, $filePath));

        return response()->json([
            "success"=> true,
            "message"=> "Certificate sent successfully.",
        ]);
    }
}
