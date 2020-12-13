@extends('master')
@section('page_title')
    Home
@endsection
@section('content')
    {{--<div class="flex flex-row justify-end">
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
        @endif--}}
    <main class="grid grid-cols-2 gap-4 overflow-hidden">
        <section class="col-span-full text-center py-4">
            <h2 class="text-2xl">Welkom wat wilt u bekijken?</h2>
        </section>
        <section class="text-center grid auto-rows-auto gap-2">
            <h3 class="text-xl font-semibold">Penny verzameling</h3>
            <a href="{{route('pennies')}}" class="block">
                <img src="{{ asset('images/penny.jpg') }}" alt="Pressed penny"
                     class="w-full h-full lg:w-3/4 lg:h-3/4  object-cover m-auto">
            </a>
        </section>
        <section class="text-center grid auto-cols-auto gap-2">
            <h3 class="text-xl font-semibold">Memodaille verzameling</h3>

            <a href="{{ route('coins') }}" class="block">
                <img src="{{ asset('images/Memodaille.jpg') }}" alt="Memodaille"
                     class="w-full h-full lg:w-3/4 lg:h-3/4 object-contain m-auto">
            </a>
        </section>
    </main>
@endsection
