<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreItemRequest; // Import StoreItemRequest
use App\Http\Requests\UpdateItemRequest; // Import UpdateItemRequest
use App\Models\Item;
use App\Models\Brand;
use App\Models\Category;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request; // Import Request
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ItemExport; // Import the new export class

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): View // Inject Request
    {
        $user = Auth::user();
        $query = Item::query()->with(['user', 'brand', 'category']); // Start query

        // Apply user scope
        if (!$user->is_admin) {
            $query->where('user_id', $user->id);
        }

        // Apply search filter
        if ($request->filled('search')) {
            $searchTerm = $request->input('search');
            $query->where(function ($q) use ($searchTerm) {
                $q->where('code', 'like', "%{$searchTerm}%")
                  ->orWhere('name', 'like', "%{$searchTerm}%");
            });
        }

        // Apply status filter
        if ($request->filled('status') && in_array($request->input('status'), ['active', 'inactive'])) {
            $query->where('status', $request->input('status'));
        }

        // Order and paginate
        $items = $query->latest()->paginate(5)->appends($request->query()); // Append query string to pagination

        // Pass items and request input to the view
        return view('items.index', compact('items'))->with('input', $request->all());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        $user = Auth::user();
        // Get brands and categories owned by the user or all if admin
        $brands = $user->is_admin ? Brand::orderBy('name')->get() : Brand::where('user_id', $user->id)->orderBy('name')->get();
        $categories = $user->is_admin ? Category::orderBy('name')->get() : Category::where('user_id', $user->id)->orderBy('name')->get();

        return view('items.create', compact('brands', 'categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreItemRequest $request): RedirectResponse // Use StoreItemRequest
    {
        $validated = $request->validated(); // Get validated data
        $validated['user_id'] = Auth::id(); // Add user_id
        $validated['attachment'] = null; // Default attachment path

        if ($request->hasFile('attachment')) {
            // Store in 'public/attachments' folder, store method returns the path
            $path = $request->file('attachment')->store('attachments', 'public');
            $validated['attachment'] = $path;
        }

        Item::create($validated);

        return redirect()->route('items.index')->with('success', 'Item created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Item $item): View | RedirectResponse
    {
        // Authorization check (still useful for direct access attempts)
        if (!Auth::user()->is_admin && $item->user_id !== Auth::id()) {
             // Or implement dedicated policies later for cleaner authorization
            return redirect()->route('items.index')->with('error', 'You are not authorized to view this item.');
        }
        // Eager load relationships for the view
        $item->load(['user', 'brand', 'category']);
        return view('items.show', compact('item'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Item $item): View | RedirectResponse
    {
        $user = Auth::user();
         // Authorization check
        if (!$user->is_admin && $item->user_id !== $user->id) {
            return redirect()->route('items.index')->with('error', 'You are not authorized to edit this item.');
        }

        // Get brands and categories owned by the user or all if admin
        $brands = $user->is_admin ? Brand::orderBy('name')->get() : Brand::where('user_id', $user->id)->orderBy('name')->get();
        $categories = $user->is_admin ? Category::orderBy('name')->get() : Category::where('user_id', $user->id)->orderBy('name')->get();

        return view('items.edit', compact('item', 'brands', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateItemRequest $request, Item $item): RedirectResponse // Use UpdateItemRequest
    {
        // Authorization handled by UpdateItemRequest

        $validated = $request->validated(); // Get validated data

        // Handle file update
        if ($request->hasFile('attachment')) {
            // Delete old file if it exists
            if ($item->attachment && Storage::disk('public')->exists($item->attachment)) {
                Storage::disk('public')->delete($item->attachment);
            }
            // Store new file
            $path = $request->file('attachment')->store('attachments', 'public');
            $validated['attachment'] = $path;
        } else {
            // Keep existing attachment if no new file is uploaded
             $validated['attachment'] = $item->attachment;
        }


        $item->update($validated);

        return redirect()->route('items.index')->with('success', 'Item updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Item $item): RedirectResponse
    {
         // Authorization check
        if (!Auth::user()->is_admin && $item->user_id !== Auth::id()) {
            return redirect()->route('items.index')->with('error', 'You are not authorized to delete this item.');
        }

        // Delete the attachment file if it exists
        if ($item->attachment && Storage::disk('public')->exists($item->attachment)) {
            Storage::disk('public')->delete($item->attachment);
        }

        $item->delete();

        return redirect()->route('items.index')->with('success', 'Item deleted successfully.');
    }

    /**
     * Export items based on current filters.
     */
    public function export(Request $request, $format)
    {
        // Validate format (allow common Excel/CSV extensions)
        $allowedFormats = ['csv', 'xls', 'xlsx'];
        if (!in_array(strtolower($format), $allowedFormats)) {
            return redirect()->route('items.index')->with('error', 'Invalid export format specified.');
        }

        // Get filters from request
        $search = $request->input('search');
        $status = $request->input('status');

        $fileName = 'items_export_' . now()->format('YmdHis') . '.' . $format;

        // Use the dedicated Export class, passing filters to its constructor
        return Excel::download(new ItemExport($search, $status), $fileName);
    }
}
