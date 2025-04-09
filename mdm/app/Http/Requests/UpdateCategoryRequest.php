<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        // Get the category from the route
        $category = $this->route('category');

        // Check if the authenticated user owns the category or is an admin
        return $this->user()->is_admin || $category->user_id === $this->user()->id;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $categoryId = $this->route('category')->id; // Get the current category ID from the route

        return [
            'code' => 'required|string|unique:categories,code,' . $categoryId . '|max:255', // Ignore current category ID
            'name' => 'required|string|max:255',
            'status' => 'required|in:Active,Inactive',
        ];
    }
}
