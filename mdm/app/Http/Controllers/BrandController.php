<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreBrandRequest; // Import StoreBrandRequest
use App\Http\Requests\UpdateBrandRequest; // Import UpdateBrandRequest
use App\Models\Brand;
use Illuminate\Http\RedirectResponse;
// Illuminate\Http\Request is no longer needed here for store/update
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $user = Auth::user();
        if ($user->is_admin) {
            $brands = Brand::with('user')->latest()->paginate(5);
        } else {
            $brands = Brand::where('user_id', $user->id)->with('user')->latest()->paginate(5);
        }

        return view('brands.index', compact('brands'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('brands.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreBrandRequest $request): RedirectResponse // Use StoreBrandRequest
    {
        $validated = $request->validated(); // Get validated data from Form Request
        $validated['user_id'] = Auth::id(); // Add user_id

        Brand::create($validated);

        return redirect()->route('brands.index')->with('success', 'Brand created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Brand $brand): View | RedirectResponse
    {
        // Authorization check (still useful for direct access attempts)
        if (!Auth::user()->is_admin && $brand->user_id !== Auth::id()) {
             // Although UpdateBrandRequest handles auth for update, keep this for direct show/edit access
             // Or implement dedicated policies later for cleaner authorization
            return redirect()->route('brands.index')->with('error', 'You are not authorized to view this brand.');
        }
        return view('brands.show', compact('brand'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Brand $brand): View | RedirectResponse
    {
         // Authorization check
        if (!Auth::user()->is_admin && $brand->user_id !== Auth::id()) {
            return redirect()->route('brands.index')->with('error', 'You are not authorized to edit this brand.');
        }
        return view('brands.edit', compact('brand'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBrandRequest $request, Brand $brand): RedirectResponse // Use UpdateBrandRequest
    {
        // Authorization is handled by UpdateBrandRequest's authorize method

        $validated = $request->validated(); // Get validated data from Form Request
        // user_id doesn't need to be updated here

        $brand->update($validated);

        return redirect()->route('brands.index')->with('success', 'Brand updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Brand $brand): RedirectResponse
    {
         // Authorization check
        if (!Auth::user()->is_admin && $brand->user_id !== Auth::id()) {
            return redirect()->route('brands.index')->with('error', 'You are not authorized to delete this brand.');
        }

        $brand->delete();

        return redirect()->route('brands.index')->with('success', 'Brand deleted successfully.');
    }
}
