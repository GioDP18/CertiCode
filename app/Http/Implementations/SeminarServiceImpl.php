<?php

namespace App\Http\Implementations;


use App\Http\Services\SeminarService;
use App\Models\Certificate;
use App\Models\Seminar;
use Illuminate\Http\Request;

Class SeminarServiceImpl implements SeminarService
{
    public function getAllSeminars(){
        $seminars = Seminar::with('participants.user')->get();

        return response()->json([
            'seminars' => $seminars,
        ], 200);
    }

    public function addNewSeminar(Request $request){
        $request->validate([
            'topic' => 'required|string',
            'speaker' => 'required|string',
            'about_this_seminar' => 'required|string',
            'about_the_speaker' => 'required|string',
            'date' => 'required|date',
            'speaker_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'certificate_logo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'description' => 'required|string',
            'issuer' => 'required|string',
        ]);

        $speakerImgPath = $request->file('speaker_image')->store('speaker_images', 'public');

        $certificateLogoPath = $request->file('certificate_logo')->store('certificate_logos', 'public');

        $seminar = Seminar::create([
            "topic" => $request->topic,
            "speaker" => $request->speaker,
            "about_this_seminar" => $request->about_this_seminar,
            "about_the_speaker" => $request->about_the_speaker,
            "date" => $request->date,
            "speaker_image" => $speakerImgPath,
        ]);

        $certificate = Certificate::create([
            "seminar_id" => $seminar->id,
            "logo" => $certificateLogoPath,
            "description" => $request->description,
            "issuer" => $request->issuer,
        ]);

        if(!$seminar || !$certificate){
            return response()->json([
                "success"=> false,
                "message"=> "There was an error creating your seminar or certificate."
            ]);
        }

        return response()->json([
            "success"=> true,
            "message"=> "Successfully Created New Seminar."
        ]);
    }

    public function seminarInfo($id){
        $info = Seminar::with('participants')->find($id);

        return response()->json([
            "success"=> true,
            "message"=> "Successfully Fetched Seminar Information",
            'info' => $info,
        ], 200);
    }
}
