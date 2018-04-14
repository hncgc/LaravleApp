@extends('layouts.app')
@section('content')
    <h1>撰写新文章</h1>
    {!! Form::open(['url' => 'articles']) !!}
    @include('articles.form')
    <div class="form-group">
        {!! Form::label('tag_list','选择标签') !!}
        {!! Form::select('tag_list[]',$tags,null,['class'=>'form-control js-example-basic-multiple','multiple'=>'multiple']) !!}
    </div>

    {!! Form::submit('发表文章', ['class' => 'btn btn-primary form-control']) !!}

    {!! Form::close() !!}
    @include('errors.list')
    <script type="text/javascript">
        $(function() {
            $(".js-example-basic-multiple").select2({
                placeholder: "添加标签"
            });
        });
    </script>
@endsection

