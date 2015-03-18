@extends('containers.frontend')
@section('title') {{ $item->title }} @stop
@section('seoMeta')
	<meta name="description" content="{{ $item->description }}">
	<meta name="keywords" content="{{ $item->keywords }}">
@stop
@section('main')
	<div class="row">
		<div class="col-md-8">
			@if (isset($item) && count($item))
				<div class="row">
					<div class="col-md-12 text-justify">
						<h1>{{ $item->title }}</h1>
					</div>
				</div>
			@endif	
			@if (count($folders))
				@if(!empty($item->text))
					<div class="row"> 
						<div class="col-md-12 text-justify folder-desc">
							{{ $item->text }}
						</div>
					</div>
				@endif
				@foreach ($folders as $folder)
					<div class="col-md-12">
						@include('content.front.folderpreview')
					</div>
				@endforeach
				{{ $folders->links() }}
			@elseif (count($children))
				@foreach ($children as $article)
					<div class="col-md-12">
						@include('content.front.articlepreview')
					</div>
				@endforeach
				{{ $children->links() }}
				@if(!empty($item->text))
					<div class="row"> 
						<div class="col-md-12 text-justify folder-desc">
							{{ $item->text }}
						</div>
					</div>
				@endif
			@endif
		</div>
		<div class="col-md-4">
			@include('content.front.rightblock')
		</div>
	</div>
@stop
