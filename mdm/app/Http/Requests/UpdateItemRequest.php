<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateItemRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        // Get the item from the route
        $item = $this->route('item');

        // Check if the authenticated user owns the item or is an admin
        return $this->user()->is_admin || $item->user_id === $this->user()->id;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $user = $this->user(); // Get authenticated user
        $itemId = $this->route('item')->id; // Get the current item ID from the route

        return [
            'code' => 'required|string|unique:items,code,' . $itemId . '|max:255', // Ignore current item ID
            'name' => 'required|string|max:255',
            // Validate that the selected brand/category exists and belongs to the user (if not admin)
            'brand_id' => ['required', 'integer', $user->is_admin ? 'exists:brands,id' : 'exists:brands,id,user_id,' . $user->id],
            'category_id' => ['required', 'integer', $user->is_admin ? 'exists:categories,id' : 'exists:categories,id,user_id,' . $user->id],
            'status' => 'required|in:Active,Inactive',
            'attachment' => 'nullable|file|mimes:jpg,jpeg,png,pdf,doc,docx|max:2048', // Max 2MB, adjust as needed
        ];
    }
}
