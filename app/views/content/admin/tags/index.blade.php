@extends('containers.admin')
 
@section('title') Tags @stop

@section('styles')
    <link href="{{ asset('packages/jq_tags_input/jquery.tagsinput.css') }}" rel="stylesheet">
@stop

@section('scripts')
    <script type="text/javascript" src="{{ asset('packages/jq_tags_input/jquery.tagsinput.js') }}"></script>   
    <script>
        $(document).ready(function(){
            $('#tags').tagsInput({
                'interactive':false,
                'onRemoveTag':function(value){
                    removeTag(value);
                },
                'width':'100%',
                'height':'400px'
            });

            function removeTag(value){
                $.ajax({
                    url:'/admin/tags/destroy',
                    type:'post',
                    data:{
                        'name':value
                    }                    
                });
            }
                            
        });
    </script>
@stop
 
@section('main')
    <h1 class="fa fa-tag"> Tags</h1>
    <div class='form-group'>
        <input type="text" value="{{ isset($tags)?$tags:null }}" id="tags">
    </div>
@stop