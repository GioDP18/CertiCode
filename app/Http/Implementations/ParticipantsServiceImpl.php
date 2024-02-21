<?php

namespace App\Http\Implementations;
use App\Models\User;
use App\Models\Participants;
use Illuminate\Support\Facades\Mail;
use App\Mail\SeminarRegistration;
use App\Http\Services\ParticipantsService;
use Illuminate\Http\Request;

Class ParticipantsServiceImpl implements ParticipantsService
{
    public function __construct()
    {

    }

    public function register(Request $request){
        $user = User::find($request->userID)->first();
        $seminar_link = 'http://127.0.0.1:8000/user/seminar';
        $seminar = Participants::find($user)->first();
        
        if ($seminar){
            return response()->json([
                "success" => false,
                "message" => "You Have Already signed up in Seminar.",
            ]);
        }
        Participants::create([
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
