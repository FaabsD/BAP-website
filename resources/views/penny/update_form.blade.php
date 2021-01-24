@extends('layouts.master')
@section('page_title')
    Pas penny {{$penny->id}} aan
@endsection
@section('content')
    <div class="container w-screen my-4">
        <div class="card"><h2 class="card-header">Penny Aanpassen</h2>
            <div class="card-body">
                <form action="{{route('penny.update', $penny->id)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="plaats">Plaats</label>
                        <input type="text" name="plaats" class="form-control @error('plaats') is-invalid @enderror"
                               value="{{$penny->Plaats}}">
                        @if($errors->get('plaats'))
                            <div class="alert alert-danger">
                                @foreach($errors->get('plaats') as $message)
                                    <li style="list-style-type: none; padding: 0">{{$message}}</li>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="serie">Serie</label>
                        <input type="text" name="serie" class="form-control @error('serie') is-invalid @enderror"
                               value="{{$penny->Serie}}">
                        @if($errors->get('serie'))
                            <div class="alert alert-danger">
                                @foreach($errors->get('serie') as $message)
                                    <li style="list-style-type: none; padding: 0">{{$message}}</li>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="omschrijving">Omschrijving</label>
                        <textarea name="omschrijving" cols="30" rows="3"
                                  class="form-control @error('omschrijving') is-invalid @enderror">{{$penny->Omschrijving}}</textarea>
                        @if($errors->get('omschrijving'))
                            <div class="alert alert-danger">
                                @foreach($errors->get('omschrijving') as $message)
                                    <li style="list-style-type: none; padding: 0">{{$message}}</li>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="positie">Positie</label>
                        <input type="text" name="positie" class="form-control @error('positie') is-invalid @enderror"
                               value="{{$penny->Positie}}">
                        @if($errors->get('positie'))
                            <div class="alert alert-danger">
                                @foreach($errors->get('positie') as $message)
                                    <li style="list-style-type: none; padding: 0">{{$message}}</li>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="alfabet">Alfabet</label>
                        <input type="text" name="alfabet" class="form-control @error('alfabet') is-invalid @enderror"
                               value="{{$penny->Alfabet}}">
                        @if($errors->get('alfabet'))
                            <div class="alert alert-danger">
                                @foreach($errors->get('alfabet') as $message)
                                    <li style="list-style-type: none; padding: 0">{{$message}}</li>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="afbeelding">Afbeelding</label>
                        <input type="file" name="afbeelding"
                               class="form-control-file @error('afbeelding') is-invalid @enderror">
                        @if($errors->get('afbeelding'))
                            <div class="alert alert-danger">
                                @foreach($errors->get('afbeelding') as $message)
                                    <li style="list-style-type: none; padding: 0">{{$message}}</li>
                                @endforeach
                            </div>
                        @endif
                    </div>
                    <button type="submit" class="btn btn-primary">Voeg toe</button>
                </form>
            </div>
        </div>
    </div>
@endsection
