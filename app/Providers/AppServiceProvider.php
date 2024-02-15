<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

// Services
use App\Http\Services\AuthService;
use App\Http\Services\CertificateService;

// Implementations
use App\Http\Implementations\AuthServiceImpl;
use App\Http\Implementations\CertificateServiceImpl;

class AppServiceProvider extends ServiceProvider
{
    public $bindings = [
        AuthService::class => AuthServiceImpl::class,
        CertificateService::class => CertificateServiceImpl::class,
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
