<?php

namespace App\Http\Implementations;

use App\Models\Certificate;
use Illuminate\Http\Request;
use App\Http\Services\GenerateCertService;
use App\Models\Participant;
use App\Models\User;
use PhpOffice\PhpWord\TemplateProcessor;
use PhpOffice\PhpWord\PhpWord;

Class GenerateCertServiceImpl implements GenerateCertService
{
    public function __construct()
    {

    }

    public function generate($participant_id, $certificate_id)
    {
        $getUser = Participant::where('id', $participant_id)->first();
        $fullname = $getUser->firstname . ' '. $getUser->middlename .' '. $getUser->lastname;
        $getCertificate = Certificate::where('seminar_id', $certificate_id)->first();
        if ($getCertificate->template == null){
            $templateProcessor = new TemplateProcessor(public_path('storage\\'.$getCertificate->template));
            $templateProcessor->setValue('name', $fullname);
            $newFilePath = public_path('Certificates\\' . $getUser->firstname . '.docx');
            $templateProcessor->saveAs($newFilePath);

            return $newFilePath;
        }
        else{
            $description = $getCertificate->description;
            $issuer = $getCertificate->issuer;


            $templateProcessor = new TemplateProcessor(public_path('template\Certificate.docx'));
            $templateProcessor->setValue('name', $fullname);
            $templateProcessor->setValue('description', $description);
            $templateProcessor->setValue('issuer', $issuer);

            $logoPath = public_path('storage\\'.$getCertificate->logo);
            $templateProcessor->setImageValue('logo', array('path' => $logoPath, 'width' => 100, 'height' => 100));

            $newFilePath = public_path('Certificates\\' . $getUser->firstname . '.docx');
            $templateProcessor->saveAs($newFilePath);

            return $newFilePath;
        }

    }
}
