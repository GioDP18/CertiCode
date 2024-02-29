<?php

namespace App\Http\Services;
use Illuminate\Http\Request;

interface ParticipantService
{
    public function __construct();

    /**
     * Interface for get Participants
     *
     * @param [type] $seminarID
     * @return void
     */
    public function getParticip($seminarID);

    /**
     * Interface for get seminars
     *
     * @param [type] $userID
     * @return void
     */
    public function getParticipSeminars($userID);

    /**
     * Interface for get certificate
     *
     * @param [type] $userID
     * @return void
     */
    public function getCertificate($userID);

    /**
     * Interface for checkRegistration
     *
     * @param Request $request
     * @return void
     */
    public function checkRegistration(Request $request);
    
    /**
     * Interface for registering participant
     *
     * @param Request $request
     * @return void
     */
    public function register(Request $request);
}
