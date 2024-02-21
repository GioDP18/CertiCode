<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Seminar>
 */
class SeminarFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "topic" => $this->faker->sentence(10),
            "speaker" => $this->faker->name(),
            "about_this_seminar" => $this->faker->sentence(50),
        ];
    }
}
