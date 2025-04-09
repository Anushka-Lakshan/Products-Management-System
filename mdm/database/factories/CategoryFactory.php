<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Category>
 */
class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'code' => 'CAT-' . Str::upper(Str::random(5)),
            'name' => $this->faker->word(),
            'status' => $this->faker->randomElement(['Active', 'Inactive']),
            'user_id' => User::factory(), // Associate with a new or existing user
        ];
    }
}
