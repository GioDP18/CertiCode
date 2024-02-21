<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Certificate>
 */
class CertificateFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "seminar_id" => $this->faker->numberBetween(1, 10),
            "logo" => $this->faker->imageUrl(100, 100, 'logo', true),
            "description" => $this->faker->sentence(50),
            "issuer" => $this->faker->name(),
        ];
    }
}
