<div class="form-group">
    {!! Form::label('title', 'Titel:') !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>
<!--- Content Field --->
<div class='form-group'>
    {!! Form::label('content', 'Content:') !!}
    {!! Form::textarea('content', null, ['class' => 'form-control']) !!}
</div>
<!-- published_at Field -->
<div class="form-group">
    {!! Form::label('published_at', '发布日期: ') !!}
    {!! Form::input('date', 'published_at', Date('Y-m-d'), ['class' => 'form-control']) !!}
</div>
{!! Form::submit('发表文章', ['class' => 'btn btn-primary form-control']) !!}
