<?php

namespace Database\Factories;

use App\Models\Brand;
use App\Models\Category;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Item>
 */
class ItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'code' => 'ITM-' . Str::upper(Str::random(6)),
            'name' => $this->faker->words(3, true),
            'brand_id' => Brand::factory(), // Associate with a new or existing brand
            'category_id' => Category::factory(), // Associate with a new or existing category
            'attachment' => null, // Default to no attachment
            'status' => $this->faker->randomElement(['Active', 'Inactive']),
            'user_id' => User::factory(), // Associate with a new or existing user
        ];
    }
}
