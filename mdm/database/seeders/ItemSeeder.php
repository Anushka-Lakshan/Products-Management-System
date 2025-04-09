<?php

namespace Database\Seeders;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Item;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Ensure we have users, brands, and categories to associate with
        $userIds = User::pluck('id');
        $brandIds = Brand::pluck('id');
        $categoryIds = Category::pluck('id');

        // If any are missing, create some defaults (or call other seeders if preferred)
        if ($userIds->isEmpty()) {
            User::factory(3)->create();
            $userIds = User::pluck('id');
        }
        if ($brandIds->isEmpty()) {
            // Create brands associated with existing users
            Brand::factory(5)->make()->each(function ($brand) use ($userIds) {
                $brand->user_id = $userIds->random();
                $brand->save();
            });
            $brandIds = Brand::pluck('id');
        }
        if ($categoryIds->isEmpty()) {
             // Create categories associated with existing users
            Category::factory(5)->make()->each(function ($category) use ($userIds) {
                $category->user_id = $userIds->random();
                $category->save();
            });
            $categoryIds = Category::pluck('id');
        }

        // Create 50 items
        Item::factory(50)->make()->each(function ($item) use ($userIds, $brandIds, $categoryIds) {
            $item->user_id = $userIds->random();
            $item->brand_id = $brandIds->random();
            $item->category_id = $categoryIds->random();
            $item->save();
        });
    }
}
