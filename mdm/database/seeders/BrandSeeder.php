<?php

namespace Database\Seeders;

use App\Models\Brand;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Get all user IDs or create some if none exist
        $userIds = User::pluck('id');
        if ($userIds->isEmpty()) {
            User::factory(3)->create(); // Create 3 users if none exist
            $userIds = User::pluck('id');
        }

        Brand::factory(10)->make()->each(function ($brand) use ($userIds) {
            $brand->user_id = $userIds->random(); // Assign a random existing user ID
            $brand->save();
        });
    }
}
