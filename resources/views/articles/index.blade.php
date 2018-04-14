@extends('layouts.app')
@section('content')

    <h1>Articles</h1>
    <hr>
    @foreach($articles as $article)
        <!-- h2><a href="{{ action('ArticlesController@show', [$article->id]) }}"> {{ $article->title }}</a></h2 -->
        <!-- h2 -->
        <h2 class="post-title pad">
            <a href="{{ url('articles', $article->id) }}"> {{ $article->title }}</a>
        </h2>
        <article>
            <div class="body">
                {{ $article->content }}
            </div>
        </article>
        <ul class="post-meta pad group">
            <li><i class="fa fa-clock-o"></i>{{ $article->published_at->diffForHumans() }}</li>
            @if($article->tags)
                @foreach($article->tags as $tag)
                    <li><i class="fa fa-tag"></i>{{ $tag->name }}</li>
                @endforeach
            @endif
        </ul>
    @endforeach
    <h3><a href="{{ url('articles/create') }}"> 发表文章 </a></h3>
@endsection
