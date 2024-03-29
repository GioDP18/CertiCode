<?php

namespace App\Http\Implementations;
use Illuminate\Http\Request;
use App\Models\Certificate;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendAllCertificate;


use App\Http\Services\CertificateService;
use App\Http\Services\GenerateCertService;
use App\Models\Participant;

Class CertificateServiceImpl implements CertificateService
{
    protected GenerateCertService $generateCertService;

    public function __construct(GenerateCertService $generateCertService){
        $this->generateCertService = $generateCertService;
        set_time_limit(3600);
    }

    public function getAllCertificate(){
        $users = User::all();

        return response()->json([
            'users' => $users,
        ], 200);
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

    public function sendAllCertificate(Request $request)
    {
        $participants = Participant::where('seminar_id', $request->seminar_id)->get();

        foreach ($participants as $participant) {
            $filePath = $this->generateCertService->generate($participant->id, $request->seminar_id);
            if($filePath){
                $data = [
                    'name' => $participant->firstname,
                    'email' => $participant->email,
                ];

                Mail::send(new SendAllCertificate($data, $filePath));
                unlink($filePath);
            }

        }

        return response()->json([
            "success" => true,
            "message" => "All certificates has been sent.",
        ]);
    }


    public function sendOneCertificate(Request $request){
        $member = Participant::where('id', $request->participant_id)->first();
        $certificate = Certificate::where('seminar_id', $request->seminar_id)->first();
        // dd($member);

        $filePath = $this->generateCertService->generate($member->id, $certificate->id);
        $data = [
            'name' => "Gio Dela Peña",
            'email' => $member->email,
        ];
        Mail::send(new SendAllCertificate($data, $filePath));
        unlink($filePath);

        return response()->json([
            "success"=> true,
            "message"=> "Certificate sent successfully.",
        ]);
    }
}
