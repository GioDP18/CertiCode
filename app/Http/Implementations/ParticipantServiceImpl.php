<?php

namespace App\Http\Implementations;
use App\Models\User;
use App\Models\Participant;
use App\Models\Seminar;
use Illuminate\Support\Facades\Mail;
use App\Mail\SeminarRegistration;
use App\Http\Services\ParticipantService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

Class ParticipantServiceImpl implements ParticipantService
{
    public function __construct()
    {

    }

    /**
     * fetch all participants in the specified Seminar
     *
     * @param $seminarID
     * @return JsonResponse
     */
    public function getParticip($seminarID)
    {
        $participants = Participant::with('user')
            ->where('seminar_id', $seminarID)
            ->get();

        if($participants->isEmpty()){
            return response()->json([
                "success" => false,
                "message" => "You dont have any participants yet.",
            ]);
        }

        return response()->json([
            'participants' => $participants,
        ], 200);
    }

    /**
     * fetch all seminars in the specified Participant
     *
     * @param $userID
     * @return JsonResponse
     */
    public function getParticipSeminars($userID)
    {
        $seminars = Participant::with('seminar')
            ->where('user_id', $userID)
            ->get();
        if($seminars->isEmpty()){
            return response()->json([
                "success" => false,
                "message" => "You dont have any participated seminars.",
            ]);
        }

        $seminarsCount = Participant::with(['seminar'])
        ->where('user_id', $userID)
        ->where('has_attended', 0)
        ->count();
        return response()->json([
            'seminars' => $seminars,
            'seminarsCount' => $seminarsCount
        ], 200);
    }
    
    /**
     * fetch all certificate in the specific participant
     *
     * @param [type] $userID
     * @return JsonResponse
     */
    public function getCertificate($userID)
    {
        $certificates = Participant::with(['seminar', 'seminar.certificate'])
            ->where('user_id', $userID)
            ->get();
        if($certificates->isEmpty()){
            return response()->json([
                "success" => false,
                "message" => "You dont have any certificates yet",
            ]);
        }

        $certificateCount = Participant::with(['seminar', 'seminar.certificate'])
        ->where('user_id', $userID)
        ->where('has_attended', 0)
        ->count();

        return response()->json([
            'certificates' => $certificates,
            'certificateCount' => $certificateCount
        ], 200);
    }

    /**
     * Register a participant
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function register(Request $request)
    {
        $user = User::find($request->userID)->first();
        $seminar = Seminar::find($request->seminarID)->first();
        $seminar_link = 'http://127.0.0.1:8000/user/seminar';
        $userExist = Participant::where('user_id', $user->id)
            ->where('seminar_id', $seminar->id)
            ->exists();

        if ($userExist) {
            return response()->json([
                "success" => false,
                "message" => "You Have Already signed up in this Seminar.",
            ]);
        }
        
        Participant::create([
            'user_id' => $user->id,
            'seminar_id' => $seminar->id,
            'firstname' => $request->firstname,
            'middlename' => $request->middlename,
            'lastname' => $request->lastname,
            'gender' => $request->gender,
            'email' => $request->email,
            'school' => $request->school,
        ]);

        $data = [
            'name' => $request->firstname,
            'email' => $request->email,
        ];

        Mail::send(new SeminarRegistration($data, $seminar_link));

        return response()->json([
            "success" => true,
            "message" => "Seminar successfully registered.",
        ], 200);
    }
}
