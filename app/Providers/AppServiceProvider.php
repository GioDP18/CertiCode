<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
   
use App\Http\Services\AuthService;
use App\Http\Services\CertificateService;
use App\Http\Services\GenerateCertService;
use App\Http\Services\SeminarService;

// Implementations
use App\Http\Implementations\AuthServiceImpl;
use App\Http\Implementations\CertificateServiceImpl;
use App\Http\Implementations\GenerateCertServiceImpl;
use App\Http\Implementations\SeminarServiceImpl;

class AppServiceProvider extends ServiceProvider
{
    public $bindings = [
        AuthService::class => AuthServiceImpl::class,
        CertificateService::class => CertificateServiceImpl::class,
        GenerateCertService::class => GenerateCertServiceImpl::class,
        SeminarService::class => SeminarServiceImpl::class,
    ];

    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
