@extends('layouts.app') 

@section('content') 


<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Dashboard</div>

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

                    <div class="row gy-4">
                        <div class="col-md-4">
                            <div class="card text-center shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        @if(Auth::user()->is_admin)
                                            Total Brands
                                        @else
                                            My Brands
                                        @endif
                                    </h5>
                                    <p class="card-text fs-1 fw-bold">{{ $brandCount }}</p>
                                    <a href="{{ route('brands.index') }}" class="btn btn-outline-primary btn-sm">View Brands</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card text-center shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        @if(Auth::user()->is_admin)
                                            Total Categories
                                        @else
                                            My Categories
                                        @endif
                                    </h5>
                                    <p class="card-text fs-1 fw-bold">{{ $categoryCount }}</p>
                                    <a href="{{ route('categories.index') }}" class="btn btn-outline-primary btn-sm">View Categories</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card text-center shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title">
                                        @if(Auth::user()->is_admin)
                                            Total Items
                                        @else
                                            My Items
                                        @endif
                                    </h5>
                                    <p class="card-text fs-1 fw-bold">{{ $itemCount }}</p>
                                    <a href="{{ route('items.index') }}" class="btn btn-outline-primary btn-sm">View Items</a>
                                </div>
                            </div>
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
