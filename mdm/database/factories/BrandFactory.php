<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Brand>
 */
class BrandFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'code' => 'BRD-' . Str::upper(Str::random(5)),
            'name' => $this->faker->company(),
            'status' => $this->faker->randomElement(['Active', 'Inactive']),
            'user_id' => User::factory(), // Associate with a new or existing user
        ];
    }
}
