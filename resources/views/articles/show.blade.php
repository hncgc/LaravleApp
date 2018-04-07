@extends('layouts.app')
@section('content')

    <h1>{{ $article->title }}</h1>
    <hr>
    <div class="body">
        {{ $article->content }}
    </div>
@endsection
