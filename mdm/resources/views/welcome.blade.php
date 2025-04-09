@extends('layouts.guest')

@section('content')


<section class="hero-section">
    <div class="container text-center">
        <h1 class="display-4 fw-bold mb-4">Welcome to the <br/> Master Data Management System</h1>
        <p class="lead mb-5 px-md-5">Effortlessly manage your Brands, Categories, and Items in one place. Designed for simplicity, security, and speed — streamline your business operations with ease.</p>
        <div class="d-flex justify-content-center">
            
            @if (Route::has('login'))

            @auth
            <a href="{{ url('/dashboard') }}" class="btn btn-light cta-button me-3">Dashboard</a>
            @else
            <a href="{{ route('login') }}" class="btn btn-light cta-button me-3">Log in</a>
            @if (Route::has('register'))
            <a href="{{ route('register') }}" class="btn btn-outline-light cta-button">Register</a>
            @endif
            @endauth

            @endif
        </div>
    </div>
</section>

<section class="features-section bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold">Key Features</h2>
            <p class="lead text-muted">Everything you need to manage your data efficiently</p>
        </div>
        <div class="row g-4">
            <div class="col-md-6 col-lg-3">
                <div class="card h-100 p-4 text-center">
                    <div class="feature-icon">
                        <i class="bi bi-shield-lock"></i>
                    </div>
                    <h5 class="card-title">Secure Authentication</h5>
                    <p class="card-text">Robust user authentication system keeping your data secure and protected.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="card h-100 p-4 text-center">
                    <div class="feature-icon">
                        <i class="bi bi-speedometer2"></i>
                    </div>
                    <h5 class="card-title">Easy-to-use Dashboard</h5>
                    <p class="card-text">Intuitive dashboard providing quick access to all your important data.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="card h-100 p-4 text-center">
                    <div class="feature-icon">
                        <i class="bi bi-database-check"></i>
                    </div>
                    <h5 class="card-title">Data Management</h5>
                    <p class="card-text">Create, update, and manage your data with powerful yet simple tools.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="card h-100 p-4 text-center">
                    <div class="feature-icon">
                        <i class="bi bi-people"></i>
                    </div>
                    <h5 class="card-title">Role-based Access</h5>
                    <p class="card-text">Dedicated access controls for Admins and Users based on responsibilities.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="call-to-action-section py-5 text-white">
    <div class="container text-center">
        <h2 class="mb-4">Ready to Streamline Your Data Management?</h2>
        <p class="lead mb-4">Join thousands of businesses already using MDM System</p>
        
    </div>
</section>



@endsection

@push('styles')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style>
    .hero-section {
        background-image: linear-gradient( 106.1deg,  rgba(255,129,86,1) 2.2%, rgba(223,69,132,1) 38.7%, rgba(67,37,129,1) 90.2% );
        color: white;
        padding: 7rem 0;
    }

    .feature-icon {
        font-size: 2.5rem;
        color: #0d6efd;
        margin-bottom: 1rem;
    }

    .cta-button {
        padding: 0.8rem 2rem;
        font-weight: 600;
        border-radius: 30px;
        margin: 0 10px;
    }

    .features-section {
        padding: 5rem 0;
    }

    .card {
        border: none;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: translateY(-10px);
    }

    .call-to-action-section {
        background-color: #00DBDE;
        background-image: linear-gradient(90deg, #00DBDE 0%, #FC00FF 100%);

    }

</style>
@endpush
