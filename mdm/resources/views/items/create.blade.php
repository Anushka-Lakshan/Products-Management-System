@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Create New Item</h2>
    <div class="card">
        <div class="card-body">
                    <h3 class="fs-5 fw-semibold mb-3">Add Item Details</h3>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('items.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @include('items._form', ['item' => null, 'brands' => $brands, 'categories' => $categories])

                        <div class="mt-4">
                            <button type="submit" class="btn btn-primary">Create Item</button>
                            <a href="{{ route('items.index') }}" class="btn btn-secondary">Cancel</a>
                        </div>
                    </form>
                 </div>
            </div>
</div>
@endsection
