@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Category Details</h2>
    <div class="card">
        <div class="card-body">
                    <h3 class="fs-5 fw-semibold mb-3">Viewing Category: {{ $category->name }}</h3>

                    <div class="card">
                        <div class="card-body">
                            <dl class="row">
                                <dt class="col-sm-3">ID</dt>
                                <dd class="col-sm-9">{{ $category->id }}</dd>

                                <dt class="col-sm-3">Code</dt>
                                <dd class="col-sm-9">{{ $category->code }}</dd>

                                <dt class="col-sm-3">Name</dt>
                                <dd class="col-sm-9">{{ $category->name }}</dd>

                                <dt class="col-sm-3">Status</dt>
                                <dd class="col-sm-9">
                                    <span class="badge {{ $category->status == 'Active' ? 'bg-success' : 'bg-danger' }}">
                                        {{ $category->status }}
                                    </span>
                                </dd>

                                <dt class="col-sm-3">Owner</dt>
                                <dd class="col-sm-9">{{ $category->user->name ?? 'N/A' }}</dd>

                                <dt class="col-sm-3">Created At</dt>
                                <dd class="col-sm-9">{{ $category->created_at->format('d M Y, H:i:s') }}</dd>

                                <dt class="col-sm-3">Last Updated</dt>
                                <dd class="col-sm-9">{{ $category->updated_at->format('d M Y, H:i:s') }}</dd>
                            </dl>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="{{ route('categories.index') }}" class="btn btn-secondary">Back to List</a>
                        <a href="{{ route('categories.edit', $category) }}" class="btn btn-warning">Edit Category</a>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteCategoryModal-{{ $category->id }}">
                            Delete Category
                        </button>
                    </div>

                    <div class="modal fade" id="deleteCategoryModal-{{ $category->id }}" tabindex="-1" aria-labelledby="deleteCategoryModalLabel-{{ $category->id }}" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteCategoryModalLabel-{{ $category->id }}">Confirm Deletion</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to delete the category "{{ $category->name }}"? This action cannot be undone.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                    <form action="{{ route('categories.destroy', $category) }}" method="POST" style="display: inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger">Delete Category</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
</div>
@endsection

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
@endpush
