<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CertificateController;
use App\Http\Controllers\GenerateCertController;
use App\Http\Controllers\SeminarController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WordToPDFController;
use App\Http\Services\GenerateCertService;
use App\Http\Controllers\SeminarController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/add-certificate', [CertificateController::class,'addCertificate']);
    Route::post('/update-certificate', [CertificateController::class,'updateCertificate']);

    // Fetch Data
    Route::get('/get-all-users', [UserController::class,'getAllUsers']);
    Route::get('/get-all-seminars', [SeminarController::class,'getAllSeminars']);

    // Generate Certificate
    Route::post('/generate', [GenerateCertService::class,'generate']);
    Route::get('/get-all-certificate', [CertificateController::class,'getAllCertificate']);
    Route::post('/send-all-certificate', [CertificateController::class,'sendAllCertificate']);
    Route::post('/send-one-certificate', [CertificateController::class,'sendOneCertificate']);

    Route::post('/register-seminar', [SeminarController::class,'register']);
    Route::post('/convert', [WordToPDFController::class,'store']);
});
