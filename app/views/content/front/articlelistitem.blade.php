<div>
@if(!empty($article->thumb))
	<img src="/{{ $article->thumb }}" class="img-thumbnail-small pull-left">
@endif
<div style="overflow:hidden">
	<a href="/{{ $article->path }}/{{ $article->alias }}">{{ $article->title }}</a>	
	<div class="date">
		<div>Опубликовано: {{ $article->created_at }}</div>
		<div>Комментариев: 0</div> 		
	</div>
</div>
</div>

