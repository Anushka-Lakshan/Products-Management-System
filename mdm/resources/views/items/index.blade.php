@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Items</h2>
    <div class="card">
        <div class="card-body">

            @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif
             @if (session('error'))
                 <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('error') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif

            <form method="GET" action="{{ route('items.index') }}" class="mb-4 p-3 border rounded bg-light">
                <div class="row g-3 align-items-end">
                    <div class="col-md-4">
                        <label for="search" class="form-label">Search (Code/Name)</label>
                        <input type="text" class="form-control form-control-sm" id="search" name="search" placeholder="Enter code or name..." value="{{ request('search') }}">
                    </div>
                    <div class="col-md-3">
                        <label for="status" class="form-label">Status</label>
                        <select name="status" id="status" class="form-select form-select-sm">
                            <option value="">All Statuses</option>
                            <option value="active" {{ request('status') == 'active' ? 'selected' : '' }}>Active</option>
                            <option value="inactive" {{ request('status') == 'inactive' ? 'selected' : '' }}>Inactive</option>
                        </select>
                    </div>
                    <div class="col-md-auto">
                        <button type="submit" class="btn btn-primary btn-sm">Filter</button>
                        <a href="{{ route('items.index') }}" class="btn btn-secondary btn-sm">Clear</a>
                    </div>
                </div>
            </form>

            <div class="d-flex flex-wrap justify-content-between align-items-center mb-3 gap-2">
                <h3 class="fs-5 fw-semibold mb-0">Item List</h3>
                 <div class="d-flex gap-2">
                    <a href="{{ route('items.export', array_merge(request()->query(), ['format' => 'csv'])) }}" class="btn btn-outline-secondary btn-sm" title="Export as CSV">
                        <i class="bi bi-download me-1"></i> CSV
                    </a>
                    <a href="{{ route('items.export', array_merge(request()->query(), ['format' => 'xls'])) }}" class="btn btn-outline-secondary btn-sm" title="Export as Excel (XLS)">
                        <i class="bi bi-download me-1"></i> Excel
                    </a>
                    <a href="{{ route('items.create') }}" class="btn btn-primary btn-sm">Add New Item</a>
                 </div>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Code</th>
                            <th scope="col">Name</th>
                            <th scope="col">Brand</th>
                            <th scope="col">Category</th>
                            <th scope="col">Status</th>
                            <th scope="col">Attachment</th>
                             @if(Auth::user()->is_admin)
                                <th scope="col">Owner</th>
                            @endif
                            <th scope="col">Created At</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($items as $item)
                            <tr>
                                <th scope="row">{{ $loop->iteration + ($items->currentPage() - 1) * $items->perPage() }}</th>
                                <td>{{ $item->code }}</td>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->brand->name ?? 'N/A' }}</td>
                                <td>{{ $item->category->name ?? 'N/A' }}</td>
                                <td>
                                    <span class="badge {{ $item->status == 'active' ? 'bg-success' : 'bg-danger' }}">
                                        {{ ucfirst($item->status) }}
                                    </span>
                                </td>
                                <td>
                                    @if($item->attachment)
                                        <a href="{{ Storage::url($item->attachment) }}" target="_blank" class="btn btn-outline-secondary btn-sm py-0 px-1" title="View Attachment">
                                            <i class="bi bi-paperclip"></i> View
                                        </a>
                                    @else
                                        <span class="text-muted">None</span>
                                    @endif
                                </td>
                                 @if(Auth::user()->is_admin)
                                    <td>{{ $item->user->name ?? 'N/A' }}</td>
                                @endif
                                <td>{{ $item->created_at->format('d M Y, H:i') }}</td>
                                <td>
                                    <a href="{{ route('items.show', $item) }}" class="btn btn-info btn-sm py-0 px-1" title="View">
                                        <i class="bi bi-eye"></i>
                                    </a>
                                    <a href="{{ route('items.edit', $item) }}" class="btn btn-warning btn-sm py-0 px-1" title="Edit">
                                        <i class="bi bi-pencil-square"></i>
                                    </a>
                                    <button type="button" class="btn btn-danger btn-sm py-0 px-1" data-bs-toggle="modal" data-bs-target="#deleteItemModal-{{ $item->id }}" title="Delete">
                                        <i class="bi bi-trash"></i>
                                    </button>

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
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="{{ Auth::user()->is_admin ? 10 : 9 }}" class="text-center">
                                    @if(request()->has('search') || request()->has('status'))
                                        No items found matching your criteria.
                                    @else
                                        No items found.
                                    @endif
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            <div class="mt-4">
                {{ $items->links() }}
            </div>

        </div>
    </div>
</div>
@endsection

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
@endpush
