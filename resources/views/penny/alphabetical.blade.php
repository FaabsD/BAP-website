@extends('layouts.master')
@section('page_title')
    Pressed pennies {{mb_convert_case($alphabet, MB_CASE_UPPER, "UTF-8")}}
@endsection
@section('content')
    {{--<?php dd($penny);?>--}}
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
                </div>
            </div>
        @endforeach
    </div>
    {{$pennies->onEachSide(1)->links()}}
@endsection
