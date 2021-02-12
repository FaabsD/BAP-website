<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <title>@yield("page_title")</title>
    <script src="{{asset('js/app.js')}}" defer></script>
</head>
<body>
<header class="mw-100 container-fluid p-4">
    <h1 class="">Pressed Penny verzameling</h1>
    <h3 class="">Familie Tuijn & Kleinkinderen</h3>
</header>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #008080">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pennies</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li>
                            <a href="{{route('pennies')}}" class="dropdown-item {{ request()->routeIs('pennies') ? 'active' : '' }}">Bekijk Pennies</a>
                        </li>
                        <li>
                            <a href="{{route('penny.add')}}" class="dropdown-item {{ request()->routeIs('penny.add')? 'active' : ''  }}">Penny toevoegen</a>
                        </li>
                        <li><a href="{{route('pennies.alphabet', ['alphabet' => 'A'])}}" class="dropdown-item">Bekijk op alfabet</a></li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{route('coins')}}" class="nav-link {{ request()->routeIs('coins') ? 'active' : '' }}">Memodailles</a>
                </li>
                <li class="nav-item">
                    <a href="{{route('overview')}}" class="nav-link {{ request()->routeIs('overview') ? 'active' : '' }}">Overzicht verzameling</a>
                </li>
                <li class="nav-item">
                    <a href="{{route('about')}}" class="nav-link {{ request()->routeIs('about') ? 'active' : '' }}">Over ons</a>
                </li>
                @guest
                    <li class="nav-item">
                        <a href="{{ route('login') }}" class="nav-link">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a href="{{ route('register') }}" class="nav-link">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }}
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a href="{{route('admin')}}" class="dropdown-item">Beheer</a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>

    </div>
</nav>
@if(Request::route()->getName() == 'pennies.alphabet')
    <nav class="navbar navbar-expand navbar-dark nav-alpha">
            <ul class="navbar-nav nav-fill mx-auto">
                @foreach(range('A', 'Z') as $column)
                    <li class="nav-item">
                        <a href="{{route('pennies.alphabet', ['alphabet' => $column])}}"
                           class="nav-link {{ (request()->segment(3) == $column)? 'active' : ''  }}">{{$column}}</a>
                    </li>
                @endforeach
            </ul>
    </nav>

@endif
@yield("content")

</body>
</html>
