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
            "speaker_image" => $this->faker->imageUrl(640, 480),
            "about_the_speaker" => $this->faker->sentence(50),
            "about_this_seminar" => $this->faker->sentence(50),
            "date" => $this->faker->dateTime(),
        ];
    }
}
