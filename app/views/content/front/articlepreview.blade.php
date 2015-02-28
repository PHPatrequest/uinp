<div class="article_preview">
	<div class="row">
		<div class="col-md-12" style="overflow: hidden;">
			@if(!empty($article->thumb))
				<img src="{{ $article->thumb }}" class="img-thumbnail pull-left">
			@endif
			<div style="overflow:hidden">
				<h2><a href="{{ $article->path }}/{{ $article->alias }}">{{ $article->title }}</a></h2>			
				<div class="date">
					<div>Опубликовано: {{ $article->created_at }}</div>
					<div>Комментариев: 0</div> 
					<div>Автор: {{ $article->username }}</div>				
				</div>
			</div>								
		</div>
		<div class="col-md-12 text-justify content">															
			{{ Common_helper::cropStr($article->content,470) }}
			<div><a href="{{ $article->path }}/{{ $article->alias }}">Подробнее &#187</a></div>
		</div>
	</div>
</div>