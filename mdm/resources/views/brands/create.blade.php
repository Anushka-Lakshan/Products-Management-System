@extends('layouts.app')

@section('content')
<div class="container">
     <h2 class="mb-4">Create New Brand</h2>
     <div class="card">
        <div class="card-body">
                    <h3 class="fs-5 fw-semibold mb-3">Add Brand Details</h3>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('brands.store') }}" method="POST">
                        @csrf
                        @include('brands._form', ['brand' => null])

                        <div class="mt-4">
                            <button type="submit" class="btn btn-primary">Create Brand</button>
                            <a href="{{ route('brands.index') }}" class="btn btn-secondary">Cancel</a>
                        </div>
                    </form>
                 </div>
            </div>
</div>
@endsection
