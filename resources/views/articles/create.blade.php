@extends('layouts.app')
@section('content')
    <h1>撰写新文章</h1>
    {!! Form::open(['url' => 'articles']) !!}
    <div class="form-group">
        {!! Form::label('title') !!}
        {!! Form::text('title', null, ['class' => 'form-control']) !!}
    </div>
    <!--- Content Field --->
    <div class='form-group'>
        {!! Form::label('content', 'Content:') !!}
        {!! Form::textarea('content', null, ['class' => 'form-control']) !!}
    </div>
    {!! Form::submit('发表文章', ['class' => 'btn btn-primary form-control']) !!}
    {!! Form::close() !!}
@endsection
