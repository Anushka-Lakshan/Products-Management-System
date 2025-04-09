<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        @vite(['resources/css/app.css', 'resources/js/app.js'])
        @stack('styles')
    </head>
    <body>
        <div id="app">
            @include('layouts.navigation') 

            
            @isset($header)
                <header class="bg-white shadow-sm border-bottom">
                    <div class="container py-3">
                         {{ $header }} 
                    </div>
                </header>
            @endisset

            <main class="py-4">
                 @yield('content')
            </main>
        </div>

        
        @stack('scripts')
    </body>
</html>
