<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class DashboardController extends Controller
{
    /**
     * Display the dashboard with counts of Brands, Categories, and Items.
     */
    public function index(): View
    {
        $user = Auth::user();
        $brandCount = 0;
        $categoryCount = 0;
        $itemCount = 0;

        if ($user->is_admin) {
            $brandCount = Brand::count();
            $categoryCount = Category::count();
            $itemCount = Item::count();
        } else {
            $userId = $user->id;
            $brandCount = Brand::where('user_id', $userId)->count();
            $categoryCount = Category::where('user_id', $userId)->count();
            $itemCount = Item::where('user_id', $userId)->count();
        }

        return view('dashboard', compact('brandCount', 'categoryCount', 'itemCount'));
    }
}
