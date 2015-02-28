@extends('containers.admin')
 
@section('title') SEO params @stop
 
@section('main')

    @if (empty($seo))
        {{ Form::open(['role' => 'form', 'url' => 'admin/seo/store']) }}
    @else
        {{ Form::model($seo, ['role' => 'form', 'url' => 'admin/seo/update/' . $seo->id, 'method' => 'PUT']) }}
    @endif
 
    <div style="overflow: hidden;">
        <h1 class="fa fa-cog"> {{empty($seo)?'Add':'Edit'}} SEO </h1> 

        <div class='form-group pull-right top20'>
            {{ Form::submit('Save', ['class' => 'btn btn-primary']) }}
        </div>
        
        @if(isset($item) && isset($table))
            "{{ $item->title }}" ({{ $table }})
            {{ Form::hidden('table', $table, ['class' => 'form-control']) }}
            {{ Form::hidden('item_id', $elementId, ['class' => 'form-control']) }}
        @else
            <div class="row">
                <div class='form-group col-md-6'>
                    {{ Form::label('url', 'Url') }}
                    {{ Form::text('url', null, ['class' => 'form-control']) }}
                </div>
                <div class='form-group col-md-6'>
                    {{ Form::label('title', 'Title') }}
                    {{ Form::text('title', null, ['class' => 'form-control']) }}
                </div>
            </row>
        @endif
    </div>

    <div class="row">
        <div class='form-group col-md-6'>
            {{ Form::label('keywords', 'Keywords') }}
            {{ Form::textarea('keywords', null, ['class' => 'form-control']) }}
        </div>

        <div class='form-group col-md-6'>
            {{ Form::label('description', 'Description') }}
            {{ Form::textarea('description', null, ['class' => 'form-control']) }}
        </div>

        <div class='form-group col-md-6'>
            {{ Form::label('img_alt', 'Image alt') }}
            {{ Form::text('img_alt', null, ['class' => 'form-control']) }}
        </div>

        <div class='form-group col-md-6'>
            {{ Form::label('img_title', 'Image title') }}
            {{ Form::text('img_title', null, ['class' => 'form-control']) }}
        </div>
    </div>
 
    {{ Form::close() }}

@stop