<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Certificate;

class CertificateController extends Controller
{
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
}
