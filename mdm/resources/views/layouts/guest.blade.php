<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'MDM') }}</title>

        @vite(['resources/css/app.css', 'resources/js/app.js'])
        @stack('styles')
    </head>
    <body class="bg-light"> 
        <div id="app">
            <nav class="navbar navbar-light bg-light shadow-sm"> 
                <div class="container">
                     <a class="navbar-brand" href="/">
                        
                         {{ config('app.name', 'MDM') }}
                    </a>
                </div>
            </nav>

            <main > 
                @yield('content') 
            </main>
        </div>
         
        @stack('scripts')
    </body>
</html>
