@extends('layouts.guest') 

@section('content')
<div class="container pt-10">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header text-center"><h4>Login</h4></div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success mb-4" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                     @if ($errors->any())
                        <div class="alert alert-danger mb-4">
                            <ul class="mb-0">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input id="email" class="form-control @error('email') is-invalid @enderror" type="email" name="email" value="{{ old('email') }}" required autofocus autocomplete="username">
                            @error('email')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input id="password" class="form-control @error('password') is-invalid @enderror"
                                   type="password"
                                   name="password"
                                   required autocomplete="current-password">
                             @error('password')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-3 form-check">
                            <input id="remember_me" type="checkbox" class="form-check-input" name="remember">
                            <label class="form-check-label" for="remember_me">Remember me</label>
                        </div>

                        <div class="d-flex justify-content-between align-items-center mt-4">
                            @if (Route::has('password.request'))
                                <a class="btn btn-link text-sm" href="{{ route('password.request') }}">
                                   Forgot your password?
                                </a>
                            @endif

                            <button type="submit" class="btn btn-primary">
                                Log in
                            </button>
                        </div>
                         <div class="text-center mt-3">
                             @if (Route::has('register'))
                                <p class="text-sm">Don't have an account? <a href="{{ route('register') }}">Register here</a></p>
                            @endif
                         </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
