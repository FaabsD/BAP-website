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
                        <li><span class="dropdown-header">Bekijk op alfabet</span></li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'a'])}}" class="dropdown-item {{ (request()->segment(3) == 'a')? 'active' : ''  }}">Pennies
                                A</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'b'])}}" class="dropdown-item {{ (request()->segment(3) == 'b')? 'active' : ''  }}">Pennies
                                B</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'c'])}}" class="dropdown-item {{ (request()->segment(3) == 'c')? 'active' : ''  }}">Pennies
                                C</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'd'])}}" class="dropdown-item {{ (request()->segment(3) == 'd')? 'active' : ''  }}">Pennies
                                D</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'e'])}}" class="dropdown-item {{ (request()->segment(3) == 'e')? 'active' : ''  }}">Pennies
                                E</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'f'])}}" class="dropdown-item {{ (request()->segment(3) == 'f')? 'active' : ''  }}">Pennies
                                F</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'g'])}}" class="dropdown-item {{ (request()->segment(3) == 'g')? 'active' : ''  }}">Pennies
                                G</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'h'])}}" class="dropdown-item {{ (request()->segment(3) == 'h')? 'active' : ''  }}">Pennies
                                H</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'i'])}}" class="dropdown-item {{ (request()->segment(3) == 'i')? 'active' : ''  }}">Pennies
                                I</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'j'])}}" class="dropdown-item {{ (request()->segment(3) == 'j')? 'active' : ''  }}">Pennies
                                J</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'k'])}}" class="dropdown-item {{ (request()->segment(3) == 'k')? 'active' : ''  }}">Pennies
                                K</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'l'])}}" class="dropdown-item {{ (request()->segment(3) == 'l')? 'active' : ''  }}">Pennies
                                L</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'm'])}}" class="dropdown-item {{ (request()->segment(3) == 'm')? 'active' : ''  }}">Pennies
                                M</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'n'])}}" class="dropdown-item {{ (request()->segment(3) == 'n')? 'active' : ''  }}">Pennies
                                N</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'o'])}}" class="dropdown-item {{ (request()->segment(3) == 'o')? 'active' : ''  }}">Pennies
                                O</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'p'])}}" class="dropdown-item {{ (request()->segment(3) == 'p')? 'active' : ''  }}">Pennies
                                P</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'q'])}}" class="dropdown-item {{ (request()->segment(3) == 'q')? 'active' : ''  }}">Pennies
                                Q</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'r'])}}" class="dropdown-item {{ (request()->segment(3) == 'r')? 'active' : ''  }}">Pennies
                                R</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 's'])}}" class="dropdown-item {{ (request()->segment(3) == 's')? 'active' : ''  }}">Pennies
                                S</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 't'])}}" class="dropdown-item {{ (request()->segment(3) == 't')? 'active' : ''  }}">Pennies
                                T</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'u'])}}" class="dropdown-item {{ (request()->segment(3) == 'u')? 'active' : ''  }}">Pennies
                                U</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'v'])}}" class="dropdown-item {{ (request()->segment(3) == 'v')? 'active' : ''  }}">Pennies
                                V</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'w'])}}" class="dropdown-item {{ (request()->segment(3) == 'w')? 'active' : ''  }}">Pennies
                                W</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'x'])}}" class="dropdown-item {{ (request()->segment(3) == 'x')? 'active' : ''  }}">Pennies
                                X</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'y'])}}" class="dropdown-item {{ (request()->segment(3) == 'y')? 'active' : ''  }}">Pennies
                                Y</a>
                        </li>
                        <li>
                            <a href="{{route('pennies.alphabet', ['alphabet' => 'z'])}}" class="dropdown-item {{ (request()->segment(3) == 'z')? 'active' : ''  }}">Pennies
                                Z</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{route('coins')}}" class="nav-link {{ request()->routeIs('coins') ? 'active' : '' }}">Memodailles</a>
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
@yield("content")

</body>
</html>
