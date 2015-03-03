@extends('containers.admin')
@section('main')

<h1 class="fa fa-edit pull-left"> All articles</h1>
{{ link_to('admin/articles/create/', 'Add new article', array('class'=>'pull-right btn btn-primary top20 left10')) }}
  
<?php 
        $search_fields = array_flip($table_fields);
        $search_fields = array_combine($search_fields, $search_fields);
    ?>
    {{ Form::open(['role' => 'form', 'url' => 'admin/articles', 'method' =>'get', 'class' => 'pull-right top20 table-search-form']) }}
        {{ Form::select('field',$search_fields,'',['class'=>'form-control pull-left']) }} 
        {{ Form::text('search','',['class'=>'form-control pull-left']) }}
        {{ Form::submit('Search',['class'=>'btn btn-info']) }}
    {{ Form::close() }}  

    @if ($articles->count())
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    {{ Common_helper::sorting_table_fields($table_fields) }}
                    <th style="width: 170px;">Actions</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($articles as $article)
                    <tr>
                        <td>{{ $article->title }}</td>
                        <td>{{ $article->user }}</td>
                        <td>{{ $article->created_at }}</td>
                        <td title="To search not published enter 0000">{{ $article->published_at=="0000-00-00 00:00:00"?'Not Published (hint)':$article->published_at }}</td>
                        <td>
                            {{ link_to('admin/seo/item/articles/'.$article->id, 'SEO', array('class' => 'btn btn-info btn-xs pull-left')) }}
                            {{ link_to('admin/articles/edit/'.$article->id, 'Edit', array('class' => 'btn btn-info btn-xs pull-left left10', 'title'=>'edit')) }}
                            {{ Form::open(['url' => 'admin/articles/destroy/' . $article->id, 'method' => 'DELETE']) }}
                                {{ Form::submit('Delete', ['class' => 'btn btn-danger btn-xs left10','onclick'=>'return confirm(\'Delete article?\')?true:false;'])}}
                            {{ Form::close() }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $articles->links() }}    
    @endif

@stop

