<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreItemRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        // Allow all authenticated users to attempt creation;
        // controller handles ownership assignment.
        // Additional checks for brand/category ownership could be added here if needed,
        // but doing it in the rules() method is also common.
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $user = $this->user(); // Get authenticated user

        return [
            'code' => 'required|string|unique:items,code|max:255',
            'name' => 'required|string|max:255',
            // Validate that the selected brand/category exists and belongs to the user (if not admin)
            'brand_id' => ['required', 'integer', $user->is_admin ? 'exists:brands,id' : 'exists:brands,id,user_id,' . $user->id],
            'category_id' => ['required', 'integer', $user->is_admin ? 'exists:categories,id' : 'exists:categories,id,user_id,' . $user->id],
            'status' => 'required|in:Active,Inactive',
            'attachment' => 'nullable|file|mimes:jpg,jpeg,png,pdf,doc,docx|max:2048', // Max 2MB, adjust as needed
        ];
    }
}
