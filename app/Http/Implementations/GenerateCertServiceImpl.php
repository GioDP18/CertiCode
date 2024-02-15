<?php

namespace App\Http\Implementations;

use Illuminate\Http\Request;
use App\Http\Services\GenerateCertService;
use PhpOffice\PhpWord\TemplateProcessor;
use PhpOffice\PhpWord\PhpWord;

Class GenerateCertServiceImpl implements GenerateCertService
{
    public function __construct()
    {

    }

    public function generate()
    {
        
        $templateProcessor = new TemplateProcessor(public_path('template/Certificate.docx'));
        $templateProcessor->setValue('name', 'John Vincent'); // example name

        $logoPath = storage_path('app/logo.jpg'); // example path to your logo image file
        $templateProcessor->setImageValue('logo', array('path' => $logoPath, 'width' => 100, 'height' => 100));
        
        $newFilePath = storage_path('app/John Vincent.docx'); // example path name
        $templateProcessor->saveAs($newFilePath);
        
        return response()->json([
            'success' => true,
            'message' => 'Generated certificate'
        ]);
    }
}
