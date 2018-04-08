@extends('layouts.app')
@section('content')

    <h1>Articles</h1>
    <hr>
    @foreach($articles as $article)
        <h2><a href="{{ url('articles', $article->id) }}"> {{ $article->title }}</a></h2>
        <!-- h2><a href="{{ action('ArticlesController@show', [$article->id]) }}"> {{ $article->title }}</a></h2 -->
        <article>
            <div class="body">
                {{ $article->content }}
            </div>
        </article>

    @endforeach
    <h3><a href="{{ url('articles/create') }}"> 发表文章 </a></h3>
@endsection
