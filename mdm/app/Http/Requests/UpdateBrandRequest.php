<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateBrandRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        // Get the brand from the route
        $brand = $this->route('brand');

        // Check if the authenticated user owns the brand or is an admin
        return $this->user()->is_admin || $brand->user_id === $this->user()->id;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $brandId = $this->route('brand')->id; // Get the current brand ID from the route

        return [
            'code' => 'required|string|unique:brands,code,' . $brandId . '|max:255', // Ignore current brand ID for unique check
            'name' => 'required|string|max:255',
            'status' => 'required|in:Active,Inactive',
        ];
    }
}
