<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
<<<<<<< HEAD
        // \App\Models\Participant::factory(100)->create();
        \App\Models\Seminar::factory(10)->create();
        \App\Models\User::factory(10)->create();
=======
        \App\Models\User::factory(10)->create();
        \App\Models\Seminar::factory(10)->create();
        \App\Models\Certificate::factory(10)->create();
        \App\Models\Participant::factory(100)->create();

>>>>>>> 010ee45f848c4fe106ce991885822fff34a3cd91
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
