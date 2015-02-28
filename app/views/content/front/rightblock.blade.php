@if(isset($weeklyNews)&&!empty($weeklyNews))
	<div class="heading">Итоги недели</div>
	@foreach($weeklyNews as $article)
		@include('content.front.articlelistitem')
	@endforeach	
@endif
@if(isset($accidentNews)&&!empty($accidentNews))
	<div class="heading">Происшествия</div>
	@foreach($accidentNews as $article)
		@include('content.front.articlelistitem')
	@endforeach
@endif
@if(isset($video)&&!empty($video))
	<div class="heading">Видео</div>
	<div class="video_block">
		@foreach($video as $article)
			@include('content.front.articlelistitem')
		@endforeach
	</div>
@endif
@include('content.front.socwidgets')
