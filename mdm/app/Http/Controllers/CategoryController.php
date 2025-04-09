<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCategoryRequest; // Import StoreCategoryRequest
use App\Http\Requests\UpdateCategoryRequest; // Import UpdateCategoryRequest
use App\Models\Category;
use Illuminate\Http\RedirectResponse;
// Remove Illuminate\Http\Request
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $user = Auth::user();
        if ($user->is_admin) {
            $categories = Category::with('user')->latest()->paginate(5);
        } else {
            $categories = Category::where('user_id', $user->id)->with('user')->latest()->paginate(5);
        }

        return view('categories.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('categories.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCategoryRequest $request): RedirectResponse // Use StoreCategoryRequest
    {
        $validated = $request->validated(); // Get validated data
        $validated['user_id'] = Auth::id(); // Add user_id

        Category::create($validated);

        return redirect()->route('categories.index')->with('success', 'Category created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category): View | RedirectResponse
    {
        // Authorization check
        if (!Auth::user()->is_admin && $category->user_id !== Auth::id()) {
            return redirect()->route('categories.index')->with('error', 'You are not authorized to view this category.');
        }
        return view('categories.show', compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category): View | RedirectResponse
    {
         // Authorization check
        if (!Auth::user()->is_admin && $category->user_id !== Auth::id()) {
            return redirect()->route('categories.index')->with('error', 'You are not authorized to edit this category.');
        }
        return view('categories.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCategoryRequest $request, Category $category): RedirectResponse // Use UpdateCategoryRequest
    {
        // Authorization handled by UpdateCategoryRequest

        $validated = $request->validated(); // Get validated data
        // user_id doesn't need update

        $category->update($validated);

        return redirect()->route('categories.index')->with('success', 'Category updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category): RedirectResponse
    {
         // Authorization check
        if (!Auth::user()->is_admin && $category->user_id !== Auth::id()) {
            return redirect()->route('categories.index')->with('error', 'You are not authorized to delete this category.');
        }

        $category->delete();

        return redirect()->route('categories.index')->with('success', 'Category deleted successfully.');
    }
}
