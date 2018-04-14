@extends('layouts.app')
@section('content')
    <h1>修改文章</h1>
    {!! Form::model($article, ['method' => 'PATCH', 'url'=>'/articles/'.$article->id]) !!}
    @include('articles.form')
    {!! Form::submit('发表文章', ['class' => 'btn btn-primary form-control']) !!}

    {!! Form::close() !!}
    @include('errors.list')
@endsection