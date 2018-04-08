@extends('layouts.app')
@section('content')

    <h1>{{ $article->title }}</h1>
    <hr>
    <div class="body">
        {{ $article->content }}
    </div>
    <div class="body">
        发表时间：{{ $article->created_at->diffForHumans() }}
    </div>
@endsection
