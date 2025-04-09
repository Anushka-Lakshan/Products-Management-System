@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Brand Details</h2>
     <div class="card">
        <div class="card-body">
                    <h3 class="fs-5 fw-semibold mb-3">Viewing Brand: {{ $brand->name }}</h3>

                    <div class="card">
                        <div class="card-body">
                            <dl class="row">
                                <dt class="col-sm-3">ID</dt>
                                <dd class="col-sm-9">{{ $brand->id }}</dd>

                                <dt class="col-sm-3">Code</dt>
                                <dd class="col-sm-9">{{ $brand->code }}</dd>

                                <dt class="col-sm-3">Name</dt>
                                <dd class="col-sm-9">{{ $brand->name }}</dd>

                                <dt class="col-sm-3">Status</dt>
                                <dd class="col-sm-9">
                                    <span class="badge {{ $brand->status == 'Active' ? 'bg-success' : 'bg-danger' }}">
                                        {{ $brand->status }}
                                    </span>
                                </dd>

                                <dt class="col-sm-3">Owner</dt>
                                <dd class="col-sm-9">{{ $brand->user->name ?? 'N/A' }}</dd>

                                <dt class="col-sm-3">Created At</dt>
                                <dd class="col-sm-9">{{ $brand->created_at->format('d M Y, H:i:s') }}</dd>

                                <dt class="col-sm-3">Last Updated</dt>
                                <dd class="col-sm-9">{{ $brand->updated_at->format('d M Y, H:i:s') }}</dd>
                            </dl>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="{{ route('brands.index') }}" class="btn btn-secondary">Back to List</a>
                        <a href="{{ route('brands.edit', $brand) }}" class="btn btn-warning">Edit Brand</a>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteBrandModal-{{ $brand->id }}">
                            Delete Brand
                        </button>
                    </div>

                    <div class="modal fade" id="deleteBrandModal-{{ $brand->id }}" tabindex="-1" aria-labelledby="deleteBrandModalLabel-{{ $brand->id }}" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteBrandModalLabel-{{ $brand->id }}">Confirm Deletion</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to delete the brand "{{ $brand->name }}"? This action cannot be undone.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                    <form action="{{ route('brands.destroy', $brand) }}" method="POST" style="display: inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger">Delete Brand</button>
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
