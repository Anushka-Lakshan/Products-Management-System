@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Item Details</h2>
    <div class="card">
        <div class="card-body">
                    <h3 class="fs-5 fw-semibold mb-3">Viewing Item: {{ $item->name }}</h3>

                    <div class="card">
                        <div class="card-body">
                            <dl class="row">
                                <dt class="col-sm-3">ID</dt>
                                <dd class="col-sm-9">{{ $item->id }}</dd>

                                <dt class="col-sm-3">Code</dt>
                                <dd class="col-sm-9">{{ $item->code }}</dd>

                                <dt class="col-sm-3">Name</dt>
                                <dd class="col-sm-9">{{ $item->name }}</dd>

                                <dt class="col-sm-3">Brand</dt>
                                <dd class="col-sm-9">{{ $item->brand->name ?? 'N/A' }}</dd>

                                <dt class="col-sm-3">Category</dt>
                                <dd class="col-sm-9">{{ $item->category->name ?? 'N/A' }}</dd>

                                <dt class="col-sm-3">Status</dt>
                                <dd class="col-sm-9">
                                    <span class="badge {{ $item->status == 'Active' ? 'bg-success' : 'bg-danger' }}">
                                        {{ $item->status }}
                                    </span>
                                </dd>

                                <dt class="col-sm-3">Attachment</dt>
                                <dd class="col-sm-9">
                                    @if($item->attachment)
                                        <a href="{{ Storage::url($item->attachment) }}" target="_blank">View Attachment</a>
                                    @else
                                        None
                                    @endif
                                </dd>

                                <dt class="col-sm-3">Owner</dt>
                                <dd class="col-sm-9">{{ $item->user->name ?? 'N/A' }}</dd>

                                <dt class="col-sm-3">Created At</dt>
                                <dd class="col-sm-9">{{ $item->created_at->format('d M Y, H:i:s') }}</dd>

                                <dt class="col-sm-3">Last Updated</dt>
                                <dd class="col-sm-9">{{ $item->updated_at->format('d M Y, H:i:s') }}</dd>
                            </dl>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="{{ route('items.index') }}" class="btn btn-secondary">Back to List</a>
                        <a href="{{ route('items.edit', $item) }}" class="btn btn-warning">Edit Item</a>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteItemModal-{{ $item->id }}">
                            Delete Item
                        </button>
                    </div>

                    <div class="modal fade" id="deleteItemModal-{{ $item->id }}" tabindex="-1" aria-labelledby="deleteItemModalLabel-{{ $item->id }}" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteItemModalLabel-{{ $item->id }}">Confirm Deletion</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to delete the item "{{ $item->name }}"? This action cannot be undone.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                    <form action="{{ route('items.destroy', $item) }}" method="POST" style="display: inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger">Delete Item</button>
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
