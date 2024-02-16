<?php

namespace App\Http\Implementations;

use App\Models\Certificate;
use Illuminate\Http\Request;
use App\Http\Services\GenerateCertService;
use App\Models\User;
use PhpOffice\PhpWord\TemplateProcessor;


Class GenerateCertServiceImpl implements GenerateCertService
{
    public function __construct()
    {

    }

    public function generate($member_id, $certificate_id)
    {
        $getUser = User::where('id', $member_id)->first();
        $fullname = $getUser->firstname . ' '. $getUser->middlename .' '. $getUser->lastname;
        $getCertificate = Certificate::where('id', $certificate_id)->first();
        $description = $getCertificate->description;
        $issuer = $getCertificate->issuer;


        $templateProcessor = new TemplateProcessor(public_path('template\Certificate.docx'));
        $templateProcessor->setValue('name', $fullname);
        $templateProcessor->setValue('description', $description);
        $templateProcessor->setValue('issuer', $issuer);

        $logoPath = public_path('logo\\'.$getCertificate->logo);
        $templateProcessor->setImageValue('logo', array('path' => $logoPath, 'width' => 100, 'height' => 100));

        $newFilePath = public_path('Certificates\\' . $getUser->firstname . '.docx');
        $templateProcessor->saveAs($newFilePath);


        return $newFilePath;
    }
}
