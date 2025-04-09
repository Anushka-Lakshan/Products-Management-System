@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Categories</h2>
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

                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h3 class="fs-5 fw-semibold">Category List</h3>
                        <a href="{{ route('categories.create') }}" class="btn btn-primary btn-sm">Add New Category</a>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Code</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Status</th>
                                     @if(Auth::user()->is_admin)
                                        <th scope="col">Owner</th>
                                    @endif
                                    <th scope="col">Created At</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($categories as $category)
                                    <tr>
                                        <th scope="row">{{ $loop->iteration + ($categories->currentPage() - 1) * $categories->perPage() }}</th>
                                        <td>{{ $category->code }}</td>
                                        <td>{{ $category->name }}</td>
                                        <td>
                                            <span class="badge {{ $category->status == 'Active' ? 'bg-success' : 'bg-danger' }}">
                                                {{ $category->status }}
                                            </span>
                                        </td>
                                         @if(Auth::user()->is_admin)
                                            <td>{{ $category->user->name ?? 'N/A' }}</td>
                                        @endif
                                        <td>{{ $category->created_at->format('d M Y, H:i') }}</td>
                                        <td>
                                            <a href="{{ route('categories.show', $category) }}" class="btn btn-info btn-sm" title="View">
                                                <i class="bi bi-eye"></i> View
                                            </a>
                                            <a href="{{ route('categories.edit', $category) }}" class="btn btn-warning btn-sm" title="Edit">
                                                <i class="bi bi-pencil-square"></i> Edit
                                            </a>
                                            <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteCategoryModal-{{ $category->id }}" title="Delete">
                                                <i class="bi bi-trash"></i> Delete
                                            </button>

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
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="{{ Auth::user()->is_admin ? 7 : 6 }}" class="text-center">No categories found.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $categories->links() }}
                    </div>

                    

                </div>
            </div>
</div>
@endsection

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
@endpush
