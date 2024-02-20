<?php

namespace App\Http\Implementations;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\SeminarParticipant;
use Illuminate\Support\Facades\Mail;
use App\Http\Services\SeminarService;
use App\Mail\SeminarRegistration;

Class SeminarServiceImpl implements SeminarService
{
    public function __construct()
    {

    }
    public function register(Request $request){
        $user = User::find($request->userID)->first();
        $seminar_link = 'http://127.0.0.1:8000/user/seminar';
        $seminar = SeminarParticipant::find($user)->first();
        
        if ($seminar){
            return response()->json([
                "success" => false,
                "message" => "You Have Already signed up in Seminar.",
            ]);
        }
        SeminarParticipant::create([
            'users_id' => $user->id,
            'seminar' => 'try seminar',
        ]);
        $data = [
            'name' => $user->firstname,
            'email' => $user->email,
        ];

        Mail::send(new SeminarRegistration($data, $seminar_link));
    
        return response()->json([
            "success" => true,
            "message" => "Seminar successfully registered.",
        ]);
    }

    

    
}
