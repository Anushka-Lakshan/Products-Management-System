@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Profile</h2>
    <div class="row">
        <div class="col-lg-8 offset-lg-2">

            <div class="card mb-4">
                <div class="card-header">
                    Profile Information
                </div>
                <div class="card-body">
                    <p class="card-text text-muted mb-3">
                        Update your account's profile information and email address.
                    </p>
                    @include('profile.partials.update-profile-information-form')
                </div>
            </div>

            <div class="card mb-4">
                 <div class="card-header">
                    Update Password
                </div>
                <div class="card-body">
                     <p class="card-text text-muted mb-3">
                        Ensure your account is using a long, random password to stay secure.
                    </p>
                    @include('profile.partials.update-password-form')
                </div>
            </div>

            <div class="card mb-4 border-danger">
                 <div class="card-header text-white bg-danger">
                    Delete Account
                </div>
                <div class="card-body">
                    <p class="card-text text-muted mb-3">
                         Once your account is deleted, all of its resources and data will be permanently deleted. Before deleting your account, please download any data or information that you wish to retain.
                    </p>
                    @include('profile.partials.delete-user-form')
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
