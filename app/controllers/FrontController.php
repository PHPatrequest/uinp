<?php

class FrontController extends BaseController {

	public function __construct(){
		$this->getUrlseo();		
		$this->getMenus();

		View::share('video', $this->getChildren('video',4));
		View::share('weeklyNews', $this->getChildren('weekly_news',4));
		View::share('accidentNews', $this->getChildren('accident',4));
	}

	private function getUrlseo(){
		$model = new Seo;
		$this->seo = $model->where('url',Request::url())->first();
	}

	private function getMenus(){
		$result = Menu::all();
		$menus = new stdClass();
		
		foreach ($result as $value) {
			$key = $value->name;
			$menus->$key = $value->content;
		}
		View::share('menu', $menus);
	}


	public function getIndex()
	{
		$model = new Article;	
		$tags = Input::get('tags');
		if(!empty($tags)){					
			$articles = $model->getTagArticles($tags);
			$breadcrumb = View::make('content.front.breadcrumb',array('items'=>'<li><span>теги: '.$tags.'</span></li>'));
			return View::make('content.front.tags',compact('articles','tags','breadcrumb'));
		}

		$search = Input::get('search');
		if(!empty($search)){			
			$articles = $model->searchArticles($search);
			$breadcrumb = View::make('content.front.breadcrumb',array('items'=>'<li><span>поиск: '.$search.'</span></li>'));
			return View::make('content.front.search',compact('articles','search','breadcrumb'));
		}

		$worldNews 		= $this->getChildren('world_news',4);
		$importantNews 	= $this->getChildren('important_news',4);	

		$articles = $model->getLastarticles();
		$seoData = $this->seo;	
		$breadcrumb = View::make('content.front.breadcrumb');
		return View::make('content.front.index',compact('articles','importantNews','worldNews','breadcrumb','seoData'));
	}

	public function missingMethod($items = array())
	{
		if(!empty($items)){
			$items = $this->getUrlElements($items);		
			$breadcrumb = View::make('content.front.breadcrumb',compact('items'));

			$item = array_pop($items);

			if(!empty($this->seo->title)){
				$item->title = $this->seo->title;
			}								
			if(!empty($this->seo->description)){
				$item->description = $this->seo->description;
			}
			if(!empty($this->seo->keywords)){
				$item->description = $this->seo->keywords;
			}
			if(!empty($this->seo->img_alt)){
				$item->img_alt = $this->seo->img_alt;
			}
			if(!empty($this->seo->img_title)){
				$item->img_title = $this->seo->img_title;
			}											

			if($item->table=='folders'){				
				$children = $this->getChildren($item->alias);
				return View::make('content.front.folder',compact('item','children','breadcrumb'));
			} else {
				$model = new Comment;
				$comments = $model->getCommentsByElement($item->table,$item->id);
				return View::make('content.front.article',compact('item','breadcrumb','comments'));
			}
		}				
		App::abort(404);
	}

	/*
	* Собирает элементы из URL
	* $items - array
	* Return Array
	*/
	private function getUrlElements($items){		
		$result = array();
		foreach ($items as $key => $val) {			
			if(isset($items[$key+1])) {									//все элементы кроме последнего						
				$item = $this->getFolderByAlias($val);			
			} else {													//последний элемент
				$item = $this->getElementByAlias($val);
			}
			$parent = $result;			
			$parent = array_pop($parent);
			if(!$this->checkElement($item,$parent)){
				App::abort(404);
			}
			$result[] = $item;
		}
		return $result;
	}


	/*
	* Проверяет правильность пути (родитель-потомок)
	*/
	private function checkElement($item,$parent){
		if($item->parent_folder_id!=0 && empty($parent)){				//если id родителя первого элемента не 0
			return false;
		}
		if(!empty($parent) && $item->parent_folder_id!=$parent->id){	//если это не первый элемент и Id его родителя неверно
			return false;
		}
		return true;
	}

	private function getElementByAlias($alias){
		$element = Alias::where('alias',$alias)->first();
		if(empty($element)){
			App::abort(404);			
		}
		$tablePrefix = DB::getTablePrefix();
		$result = DB::table($element->table)
			->select($element->table.'.*','users.username','seo.keywords','seo.description','seo.img_alt','seo.img_title', DB::raw('GROUP_CONCAT('.$tablePrefix.'tags.name) as tags'))
			->join('users','users.id','=',$element->table.'.user_id')
			->leftjoin('seo','seo.item_id','=',DB::raw($tablePrefix.$element->table.'.id AND '.$tablePrefix.'seo.table = "'.$element->table.'"'))
			->leftjoin('tagstoelement','tagstoelement.element_id','=',DB::raw($tablePrefix.$element->table.'.id AND '.$tablePrefix.'tagstoelement.table = "'.$element->table.'"'))
			->join('tags','tags.id','=','tagstoelement.tag_id')
			->where($element->table.'.id',$element->item_id)
			->first();
		if(empty($result)){
			App::abort(404);			
		}
		$result->table = $element->table;		
		return $result;
	}

	private function getFolderByAlias($alias){
		$item = Folder::where('alias',$alias)->first();
		if(empty($item)){
			App::abort(404);			
		}
		$item->table = 'folders';
		return $item;
	}

	private function getChildren($parentAlias,$limit=0){
		$model = new Article;
		$result = $model->getArticlesByParentAlias($parentAlias,$limit);		
		return $result;
	}
}