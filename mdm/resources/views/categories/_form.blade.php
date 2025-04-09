
<div class="row g-3">
    <div class="col-md-6">
        <label for="code" class="form-label">Category Code <span class="text-danger">*</span></label>
        <input type="text"
               class="form-control @error('code') is-invalid @enderror"
               id="code"
               name="code"
               value="{{ old('code', $category?->code) }}"
               required
               maxlength="255">
        @error('code')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="name" class="form-label">Category Name <span class="text-danger">*</span></label>
        <input type="text"
               class="form-control @error('name') is-invalid @enderror"
               id="name"
               name="name"
               value="{{ old('name', $category?->name) }}"
               required
               maxlength="255">
        @error('name')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="status" class="form-label">Status <span class="text-danger">*</span></label>
        <select class="form-select @error('status') is-invalid @enderror" id="status" name="status" required>
            <option value="Active" {{ old('status', $category?->status) == 'Active' ? 'selected' : '' }}>Active</option>
            <option value="Inactive" {{ old('status', $category?->status) == 'Inactive' ? 'selected' : '' }}>Inactive</option>
        </select>
        @error('status')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

</div>
