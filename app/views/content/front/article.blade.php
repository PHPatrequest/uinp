@extends('containers.frontend')
@section('title')
	{{ $item->title }}
@stop
@section('seoMeta')
    <meta name="description" content="{{ $item->description }}">
    <meta name="keywords" content="{{ $item->keywords }}">
@stop

@section('main')
	<div class="row">
		<div class="col-md-8">
			@if (isset($item) && !empty($item))
				<div class="row">			
					<div class="col-md-12">
						<h1>{{ $item->title }}</h1>
						<div class="entry-meta">Опубликовано {{ $item->created_at }}. Автор {{ $item->username }}</div>
						@if(!empty($item->image))
							<img src="/{{ $item->image }}" style="width:100%; max-width:300px; margin: 0 10px 0 0" class="pull-left" title="{{ $item->img_title }}" alt="{{ $item->img_alt }}">
						@endif	
						<div class="text-justify">
							{{ $item->content }}
						</div>
						@if(!empty($item->video))
							<iframe src="https://www.youtube.com/embed/{{ $item->video }}" class="videoframe" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
						@endif
						<div class="pull-left" style="margin:5px">					
							@if(!empty($item->tags))
								<?php $tags = explode(',',$item->tags) ?>
								@foreach($tags as $tag)
									<a href="/?tags={{ $tag }}" class="tag fa fa-tag">{{ $tag }}</a>
								@endforeach
							@endif
						</div>
						<div class="pull-right">
							<script type="text/javascript" src="//yastatic.net/share/share.js" charset="utf-8"></script>
							<div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="none" data-yashareQuickServices="vkontakte,gplus,facebook,twitter"></div>
						</div>
					</div>
				</div>
				@if($item->parent_folder_id!=0)
					@include('content.front.comments')
				@endif
			@endif
		</div>
		<div class="col-md-4">
			@include('content.front.rightblock')
		</div>
	</div>
@stop