@extends('containers.admin')
 
@section('title') Create folder @stop
 
@section('main')

    @if (Request::segment(3)=='create')
        {{ Form::open(['role' => 'form', 'url' => 'admin/folders/store']) }}
    @else
        {{ Form::model($folder, ['role' => 'form', 'url' => 'admin/folders/update/' . $folder->id, 'method' => 'PUT']) }}
    @endif
 
    <div style="overflow: hidden;">
        <h1 class="fa fa-edit"> {{Request::segment(3)=='create'?'Add':'Edit'}} folder</h1>

        <div class='form-group pull-right top20'>
            {{ Form::submit('Save', ['class' => 'btn btn-primary']) }}
        </div>
    </div>

    <div class="row">
        <div class='form-group col-md-6'>
            {{ Form::label('title', 'Title') }}
            {{ Form::text('title', null, ['placeholder' => 'Title', 'class' => 'form-control']) }}
        </div>

        <div class='form-group col-md-6'>
            {{ Form::label('alias', 'Alias') }}
            {{ Form::text('alias', null, ['placeholder' => 'Alias', 'class' => 'form-control']) }}
        </div>

        <div class='form-group col-md-12'>
            {{ Form::textarea('text', null, ['class' => 'form-control']) }}
        </div>
    </div>

    <div class='form-group'>        
        {{ $tree }}
    </div>  
 
    {{ Form::close() }}

@stop

@section('scripts')
    <script type="text/javascript" src="{{ asset('packages/tinymce/tinymce.min.js') }}"></script>
    <script>
    tinymce.init({
        selector: "textarea",
        height : 300,
        plugins: [
            "advlist autolink lists link image charmap print preview anchor textcolor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste jbimages, pagebreak"
        ],
        pagebreak_separator: "<pagebreak>",
        //outdent indent
        toolbar: "insertfile undo redo | styleselect | fontsizeselect | fontselect | backcolor | forecolor | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | link image jbimages",
        relative_urls: false,
        //resize: false,
        forced_root_block : 'div'
    });
    </script>
@stop