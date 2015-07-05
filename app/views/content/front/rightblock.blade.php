@if(isset($weeklyNews)&&!empty($weeklyNews))
	<div class="heading">Итоги недели</div>
	@foreach($weeklyNews as $article)
		@include('content.front.articlelistitem')
	@endforeach	
@endif
<div class="heading">Актуальные новости</div>
<div class="video_block">
	<div id="n4p_30655">Loading...</div>
	<script type="text/javascript" charset="utf-8">
	  (function(d,s){
	    var o=d.createElement(s);
	    o.async=true;
	    o.type="text/javascript";
	    o.charset="utf-8";
	    if (location.protocol == "https:") {
	      o.src="https://js-ua.redtram.com/n4p/0/30/ticker_30655.js";
	    }
	    else {
	      o.src="http://js.ua.redtram.com/n4p/0/30/ticker_30655.js";
	    }
	    var x=d.getElementsByTagName(s)[0];
	    x.parentNode.insertBefore(o,x);
	  })(document,"script");
	</script>
</div>
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
