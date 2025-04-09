@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Brands</h2>
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
                        <h3 class="fs-5 fw-semibold">Brand List</h3>
                        <a href="{{ route('brands.create') }}" class="btn btn-primary btn-sm">Add New Brand</a>
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
                                @forelse ($brands as $brand)
                                    <tr>
                                        <th scope="row">{{ $loop->iteration + ($brands->currentPage() - 1) * $brands->perPage() }}</th>
                                        <td>{{ $brand->code }}</td>
                                        <td>{{ $brand->name }}</td>
                                        <td>
                                            <span class="badge {{ $brand->status == 'Active' ? 'bg-success' : 'bg-danger' }}">
                                                {{ $brand->status }}
                                            </span>
                                        </td>
                                        @if(Auth::user()->is_admin)
                                            <td>{{ $brand->user->name ?? 'N/A' }}</td>
                                        @endif
                                        <td>{{ $brand->created_at->format('d M Y, H:i') }}</td>
                                        <td>
                                            <a href="{{ route('brands.show', $brand) }}" class="btn btn-info btn-sm" title="View">
                                                <i class="bi bi-eye"></i> View
                                            </a>
                                            <a href="{{ route('brands.edit', $brand) }}" class="btn btn-warning btn-sm" title="Edit">
                                                <i class="bi bi-pencil-square"></i> Edit
                                            </a>
                                            <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteBrandModal-{{ $brand->id }}" title="Delete">
                                                <i class="bi bi-trash"></i> Delete
                                            </button>

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
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="{{ Auth::user()->is_admin ? 7 : 6 }}" class="text-center">No brands found.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $brands->links() }}
                    </div>

                    

                </div>
            </div>
</div>
@endsection

@push('styles')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
@endpush
