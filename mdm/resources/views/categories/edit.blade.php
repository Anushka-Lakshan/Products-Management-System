@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Edit Category: {{ $category->name }}</h2>
     <div class="card">
        <div class="card-body">
                    <h3 class="fs-5 fw-semibold mb-3">Update Category Details</h3>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('categories.update', $category) }}" method="POST">
                        @csrf
                        @method('PUT')

                        @include('categories._form', ['category' => $category])

                        <div class="mt-4">
                            <button type="submit" class="btn btn-primary">Update Category</button>
                            <a href="{{ route('categories.index') }}" class="btn btn-secondary">Cancel</a>
                        </div>
                    </form>
                 </div>
            </div>
</div>
@endsection
