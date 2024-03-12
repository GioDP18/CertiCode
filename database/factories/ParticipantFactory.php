<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Participant>
 */
class ParticipantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "user_id" => $this->faker->numberBetween(1, 10),
            "seminar_id" => $this->faker->numberBetween(1, 10),
            // "firstname" => $this->faker->firstName(),
            // "middlename" => $this->faker->firstname(),
            // "lastname" => $this->faker->lastName(),
            // "gender" => $this->faker->randomElement(['male', 'female']),
            // "email" => $this->faker->safeEmail(),
            // "school" => $this->faker->company(),
            "has_attended" => $this->faker->randomElement([true, false]),
            "certificate_sent" => $this->faker->randomElement([true, false]),
        ];
    }
}
