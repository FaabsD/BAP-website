@extends('layouts.master')
@section('page_title')
    Pressed Pennies
@endsection
@section('content')
    <div class="penny-container container-fluid my-3">
        @foreach($pennies as $penny)
            <div class="card">
                <img class="card-img-top" src="" alt="">
                <div class="card-body">
                    <h3 class="card-title">{{$penny->Plaats}}</h3>
                    <h4 class="card-subtitle text-muted mb-2">{{$penny->Serie}}</h4>
                    <p class="card-text">
                        {{$penny->Omschrijving}}
                    </p>
                    @if(Auth::check())
                        <a href="{{route('penny.update', ['id' => $penny->id ])}}" class="btn btn-primary">Pas aan</a>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
@endsection
