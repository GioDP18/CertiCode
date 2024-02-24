<?php

namespace App\Http\Implementations;


use App\Http\Services\SeminarService;
use App\Models\Certificate;
use App\Models\Seminar;
use Illuminate\Http\Request;

Class SeminarServiceImpl implements SeminarService
{
    public function getAllSeminars(){
        $seminars = Seminar::all();

        return response()->json([
            'seminars' => $seminars,
        ], 200);
    }

    public function addNewSeminar(Request $request){
        $addSeminar = Seminar::create([
            "topic" => $request->topic,
            "speaker" => $request->speaker,
            "about_this_seminar" => $request->about_this_seminar,
            "about_the_speaker" => $request->about_the_speaker,
            "date" => $request->date,
        ]);


        $addCertificate = Certificate::create([
            "seminar_id" => $addSeminar->id,
            "logo" => $request->logo,
            "description" => $request->description,
            "issuer" => $request->issuer,
        ]);

        if(!$addSeminar){
            return response()->json([
                "success"=> false,
                "message"=> "There was an error creating your seminar."
            ]);
        }

        if(!$addCertificate){
            return response()->json([
                "success"=> false,
                "message"=> "There was an error creating your certificate."
            ]);
        }


        return response()->json([
            "success"=> true,
            "message"=> "Successfully Created New Seminar."
        ]);
    }
}
