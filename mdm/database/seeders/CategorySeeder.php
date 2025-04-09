<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Ensure users exist before assigning
        $userIds = User::pluck('id');
        if ($userIds->isEmpty()) {
            User::factory(3)->create(); // Create users if needed
            $userIds = User::pluck('id');
        }

        Category::factory(10)->make()->each(function ($category) use ($userIds) {
            $category->user_id = $userIds->random(); // Assign a random existing user ID
            $category->save();
        });
    }
}
