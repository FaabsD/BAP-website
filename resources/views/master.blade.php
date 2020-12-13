<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <title>@yield("page_title")</title>
</head>
<body class="overflow-x-hidden">
<header class="w-screen py-6 bg-blue-200 text-center">
    <h1 class="text-black text-4xl">Pressed Penny verzameling</h1>
    <h3 class="text-xl">Familie Tuijn & Kleinkinderen</h3>
</header>
<nav class="container lg:w-3/4 lg:mx-auto text-center">
    <ul class="grid grid-flow-col">
        <li>
            <a href="{{route('pennies')}}" class="p-4 block bg-indigo-200">Pennies</a>
        </li>
        <li>
            <a href="{{route('coins')}}" class="p-4 block">Memodailles</a>
        </li>
        <li>
            <a href="{{route('about')}}" class="p-4 block">Over ons</a>
        </li>
        @guest
            <li >
                <a href="{{ route('login') }}" class="p-4 block">{{ __('Login') }}</a>
            </li>
            @if (Route::has('register'))
                <li >
                    <a href="{{ route('register') }}" class="p-4 block">{{ __('Register') }}</a>
                </li>
            @endif
        @endguest
    </ul>
</nav>
@yield("content")

</body>
</html>
