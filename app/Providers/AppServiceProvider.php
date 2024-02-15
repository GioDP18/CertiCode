<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

// Services
use App\Http\Services\GenerateCertService;

// service implementations
use App\Http\Implementations\GenerateCertServiceImpl;


class AppServiceProvider extends ServiceProvider
{

    public $bindings = [
        GenerateCertService::class => GenerateCertServiceImpl::class,
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
