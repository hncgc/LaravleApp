@extends('layouts.app')
@section('content')
    <div class="content">
        <div class="title m-b-md">
            About
        </div>
    </div>
<p>This is my first Laravel web</p>
<p>Author: {!! $name !!}</p>
<p>Date: {!! $date !!}</p>
@endsection
