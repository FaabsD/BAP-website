@extends('layouts.master')
@section('page_title')
    Pressed Pennies
@endsection
@section('content')
    @if(session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="penny-container container-fluid my-3">
        @foreach($pennies as $penny)
            <div class="card mt-2 mb-2">
                @if(!$penny->Afbeelding)
                    <img src="https://via.placeholder.com/500?text=Afbeelding+niet+beschikbaar" alt="" class="card-img-top">
                @else
                    <img class="card-img-top" src="{{Storage::url($penny->Afbeelding)}}" alt="">
                @endif
                <div class="card-body">
                    <h3 class="card-title">{{$penny->Plaats}}</h3>
                    <h4 class="card-subtitle text-muted mb-2">{{$penny->Serie}}</h4>
                    <p class="card-text">
                        {{$penny->Omschrijving}}<br>
                        {{$penny->Positie}}
                    </p>
                    @if(Auth::check())
                        <a href="{{route('penny.edit', ['id' => $penny->id ])}}" class="btn btn-primary">Pas aan</a>
                        <a href="{{route('penny.delete', ['id' => $penny->id])}}" class="btn btn-danger">Verwijder</a>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
    {{$pennies->onEachSide(1)->links()}}
@endsection
