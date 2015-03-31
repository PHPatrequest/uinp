<!DOCTYPE html">

<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" />
	<title>@yield('title')</title>

	<link rel="icon" href="/assets/images/favicon.ico" />
	<link rel="stylesheet" type="text/css" media="all" href="/assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" media="all" href="/assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" media="all" href="/assets/css/style.css">
	@yield('styles')

	<script type="text/javascript" src="/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="/assets/js/scrolltopcontrol.js"></script>
	<script type="text/javascript" src="/assets/js/scripts.js"></script>
	@yield('scripts')

	@yield('seoMeta')	
</head>

<body cz-shortcut-listen="true">		
	<div class="container">
		<div class="top row">
			<div class="col-md-9">
				<div class="nav">
					<div class="menu-header">
						<div class="pull-left">МЕНЮ</div>
						<div class="pull-right fa fa-bars show-menu"></div>
					</div> 
					@if(isset($menu->top))
						{{ $menu->top }}
					@endif
				</div>	
			</div>
			<div class="col-md-3">	
				<div class="search">
					<form action="/">
						<input type="text" name="search" placeholder="Поиск на сайте..." class="searchtext">
						<input type="submit" class="searchsubmit" value="">
					</form>
				</div>
			</div> 	
		</div> 
		<div id="header">
			<h1 class="logo">		
				<a href="/" title="" rel="home" style="color:#326693">
					<div class="pull-left"><img src="/assets/images/uinplogo.png" style="width: 160px; margin: 10px 0 0 10px;"></div>
					<div class="pull-left" style="font-family:impact; font-size:30px; padding:5px 0 0 20px">
						<div>украинский независимый новостной портал</div>
						<div style="color: rgb(200, 200, 200);">ukrainian independent news portal</div>
					</div>
					<div style="clear:both"></div>
				</a>
			</h1>			
		</div>
		<div class="cat-menu">
			<div class="nav">
				<div class="menu-header">
					<div class="pull-left">КАТЕГОРИИ</div>
					<div class="pull-right fa fa-bars show-menu"></div>
				</div> 
				@if(isset($menu->categories))
					{{ $menu->categories }}
				@endif
			</div>				
		</div>
		<div class="breadcrumb">
			@if(isset($menu->categories))			
				{{ $breadcrumb }}
			@endif
		</div>
		<div class="main_content">
			@yield('main')		
		</div>
		<div class="footer">
			@if(isset($menu->categories))
				{{ $menu->bottom }}
			@endif
		</div>			
		<div class="bottom">
			© Copyriht 2015
		</div> 
	</div>	
</body>
</html>