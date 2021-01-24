@extends('layouts.master')
@section('page_title')
    Overzicht verzameling
@endsection
@section('content')
    <div class="complete-overview container-fluid vh-100 mt-3">
        <div class="jumbotron overflow-auto h-50">
            @if($pennies->isEmpty())
                <h3 class="h3">Er zijn geen Pressed pennies om te tonen</h3>
            @else
                <h3 class="h3">Overzicht van alle Pressed pennies</h3>
            @endif
            @foreach($pennies as $penny)
                <div class="card mb-3">
                    <div class="row no-gutters">
                        <div class="col-md-4">
                            @if(!$penny->Afbeelding)
                                <img src="https://via.placeholder.com/500?text=Afbeelding+niet+beschikbaar" alt=""
                                     class="card-img">
                            @else
                                <img src="{{Storage::url($penny->Afbeelding)}}" alt="" class="card-img">
                            @endif
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h3 class="card-title">{{$penny->Plaats}}</h3>
                            <h4 class="card-subtitle">{{$penny->Serie}}</h4>
                            <p class="card-text">{{$penny->Omschrijving}}</p>
                            <p class="card-text">{{$penny->Positie}}</p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="jumbotron overflow-auto h-50">
            @if($coins->isEmpty())
                <h3 class="h3">Er zijn geen Momodailles om te tonen</h3>
            @else
                <h3 class="h3">Overzicht van alle Momodailles</h3>
            @endif
            @foreach($coins as $coin)
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">{{$coin->Plaats}}</h3>
                        <h4 class="card-subtitle">{{$coin->Serie}}</h4>
                        <p class="card-text">{{$coin->Omschrijving}}</p>
                        <a href="{{route('penny.edit', ['id' => $coin->id])}}" class="btn btn-primary">Aanpassen</a>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
@endsection
