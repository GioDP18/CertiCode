<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

// Services
use App\Http\Services\UserService;
use App\Http\Services\AuthService;
use App\Http\Services\CertificateService;
use App\Http\Services\GenerateCertService;
use App\Http\Services\SeminarService;
use App\Http\Services\ParticipantService;

// Implementations
use App\Http\Implementations\UserServiceImpl;
use App\Http\Implementations\AuthServiceImpl;
use App\Http\Implementations\CertificateServiceImpl;
use App\Http\Implementations\GenerateCertServiceImpl;
use App\Http\Implementations\SeminarServiceImpl;
use App\Http\Implementations\ParticipantServiceImpl;

class AppServiceProvider extends ServiceProvider
{
    public $bindings = [
        UserService::class => UserServiceImpl::class,
        AuthService::class => AuthServiceImpl::class,
        CertificateService::class => CertificateServiceImpl::class,
        GenerateCertService::class => GenerateCertServiceImpl::class,
        SeminarService::class => SeminarServiceImpl::class,
        ParticipantService::class => ParticipantServiceImpl::class,
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
