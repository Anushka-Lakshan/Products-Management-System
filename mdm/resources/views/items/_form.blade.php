
<div class="row g-3">
    <div class="col-md-6">
        <label for="code" class="form-label">Item Code <span class="text-danger">*</span></label>
        <input type="text"
               class="form-control @error('code') is-invalid @enderror"
               id="code"
               name="code"
               value="{{ old('code', $item?->code) }}"
               required
               maxlength="255">
        @error('code')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="name" class="form-label">Item Name <span class="text-danger">*</span></label>
        <input type="text"
               class="form-control @error('name') is-invalid @enderror"
               id="name"
               name="name"
               value="{{ old('name', $item?->name) }}"
               required
               maxlength="255">
        @error('name')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="brand_id" class="form-label">Brand <span class="text-danger">*</span></label>
        <select class="form-select @error('brand_id') is-invalid @enderror" id="brand_id" name="brand_id" required>
            <option value="" disabled {{ old('brand_id', $item?->brand_id) ? '' : 'selected' }}>Select a Brand</option>
            @foreach($brands as $brand)
                <option value="{{ $brand->id }}" {{ old('brand_id', $item?->brand_id) == $brand->id ? 'selected' : '' }}>
                    {{ $brand->name }} ({{ $brand->code }})
                </option>
            @endforeach
        </select>
        @error('brand_id')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="category_id" class="form-label">Category <span class="text-danger">*</span></label>
        <select class="form-select @error('category_id') is-invalid @enderror" id="category_id" name="category_id" required>
             <option value="" disabled {{ old('category_id', $item?->category_id) ? '' : 'selected' }}>Select a Category</option>
            @foreach($categories as $category)
                <option value="{{ $category->id }}" {{ old('category_id', $item?->category_id) == $category->id ? 'selected' : '' }}>
                    {{ $category->name }} ({{ $category->code }})
                </option>
            @endforeach
        </select>
        @error('category_id')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="status" class="form-label">Status <span class="text-danger">*</span></label>
        <select class="form-select @error('status') is-invalid @enderror" id="status" name="status" required>
            <option value="Active" {{ old('status', $item?->status) == 'Active' ? 'selected' : '' }}>Active</option>
            <option value="Inactive" {{ old('status', $item?->status) == 'Inactive' ? 'selected' : '' }}>Inactive</option>
        </select>
        @error('status')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-md-6">
        <label for="attachment" class="form-label">Attachment (Optional)</label>
        <input class="form-control @error('attachment') is-invalid @enderror" type="file" id="attachment" name="attachment">
         @error('attachment')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
        @if($item?->attachment)
            <div class="mt-2">
                Current: <a href="{{ Storage::url($item->attachment) }}" target="_blank">View Attachment</a>
                <span class="text-muted fst-italic">(Uploading a new file will replace the current one)</span>
            </div>
        @endif
    </div>

</div>
