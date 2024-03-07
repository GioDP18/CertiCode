<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;

class WordToPDFController extends Controller
{
    public function index(): View
    {
        return view('word-pdf');
    }
    public function store(Request $request)
    {
        // Load the Word document
        $content = \PhpOffice\PhpWord\IOFactory::load(public_path('Certificates/John Vincent.docx'));

        // Set the PDF renderer path and name
        $domPdfPath = base_path('vendor/dompdf/dompdf');
        \PhpOffice\PhpWord\Settings::setPdfRendererPath($domPdfPath);
        \PhpOffice\PhpWord\Settings::setPdfRendererName('DomPDF');

        // Create the PDF writer
        $pdfWriter = \PhpOffice\PhpWord\IOFactory::createWriter($content, 'PDF');

        // Generate a unique PDF file name
        $pdfFileName = "doc_" . time() . '.pdf';

        // Save the PDF file
        $pdfWriter->save(public_path('Certificates/' . $pdfFileName));

        // Return the PDF file as a download response
        return response()->download(public_path('Certificates/' . $pdfFileName));
    }

}
