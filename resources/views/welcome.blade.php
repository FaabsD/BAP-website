@extends('layouts.master')
@section('page_title')
    Home
@endsection
@section('content')
    <div class="flex flex-row justify-end">
        @if (Route::has('login'))
            <div class="">
                @auth
                    <a href="{{ url('/home') }}" class="p-4">Home</a>
                @else
                    <a href="{{ route('login') }}" class="p-4">Login</a>

                    @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="p-4">Register</a>
                    @endif
                @endauth
            </div>
        @endif
    <main class="welcome">
        <section class="welcome__section1">
            <h2 class="section1__head">Welkom wat wilt u bekijken?</h2>
        </section>
        <section class="welcome__section2">
            <h3 class="section2__head">Penny verzameling</h3>
            <a href="{{route('pennies')}}" class="section2__link">
                <img src="{{ asset('images/penny.jpg') }}" alt="Pressed penny"
                     class="section2__img">
            </a>
        </section>
        <section class="welcome__section3">
            <h3 class="section3__head">Memodaille verzameling</h3>

            <a href="{{ route('coins') }}" class="section3__link">
                <img src="{{ asset('images/Memodaille.jpg') }}" alt="Memodaille"
                     class="section3__img">
            </a>
        </section>
    </main>
@endsection
