@extends('containers.admin')
 
@section('title') Add parser data @stop
 
@section('main')

    @if (Request::segment(3)=='create')
        {{ Form::open(['role' => 'form', 'url' => 'admin/parser/store']) }}
    @else
        {{ Form::model($parser, ['role' => 'form', 'url' => 'admin/parser/update/' . $parser->id, 'method' => 'PUT']) }}
    @endif
 
    <div style="overflow: hidden;">
        <h1 class="fa fa-edit"> {{Request::segment(3)=='create'?'Add':'Edit'}} parser data</h1>

        <div class='form-group pull-right top20'>
            {{ Form::submit('Save', ['class' => 'btn btn-primary']) }}
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <div class="form-group col-md-12">
                {{ Form::label('url', 'RSS URL') }}
                {{ Form::text('url', null, ['placeholder' => 'URL', 'class' => 'form-control']) }}
            </div>
            <div class='form-group col-md-12'>
                {{ Form::label('author', 'Author') }}
                {{ Form::select('author', $users,isset($parser->author)?$parser->author:'',array('class'=>'form-control')); }}
            </div>
        </div>
        
        <div class="col-md-5">
            <div class="form-group col-md-4" style="margin-top:30px">
                {{ Form::label('publish', 'Publish now') }}
                {{ Form::checkbox('publish', 1, null, ['placeholder' => 'Publish now']) }}
            </div>
            <div class="form-group col-md-4" style="margin-top:30px">
                {{ Form::label('translate', 'Translate') }}
                {{ Form::checkbox('translate', 1, null, ['placeholder' => 'Translate']) }}
            </div>
            <div class="form-group col-md-4" style="margin-top:30px">
                {{ Form::label('remove_links', 'Remove links') }}
                {{ Form::checkbox('remove_links', 1, null, ['placeholder' => 'Remove links']) }}
            </div>
            <div class="form-group col-md-4" style="margin-top:30px">
                {{ Form::label('disabled', 'Disable') }}
                {{ Form::checkbox('disabled', 1, null, ['placeholder' => 'Disable']) }}
            </div>
            <div class="form-group col-md-4" style="margin-top:30px">
                {{ Form::label('bufferapp', 'Bufferapp') }}
                {{ Form::checkbox('bufferapp', 1, null, ['placeholder' => 'Bufferapp']) }}
            </div>
            <div class="form-group col-md-4" style="margin-top:30px">
                {{ Form::label('vk', 'VK') }}
                {{ Form::checkbox('vk', 1, null, ['placeholder' => 'VK']) }}
            </div>
        </div>
        <div class="form-group col-md-12">        
            {{ $tree }}
        </div> 
    </div>
 
    {{ Form::close() }}

@stop