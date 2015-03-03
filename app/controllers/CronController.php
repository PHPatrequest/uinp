<?php 

class CronController extends BaseController {

	public function getPublisharticle($key=''){
		if($key != 'TdSDFs23SdsdP'){
			App::abort(404);
		}
		$article = Article::where('published_at','0000-00-00 00:00:00')->orderby('id','ASC')->first();
		if(!empty($article)){
			$article->update(array('published_at'=>date('Y-m-d H:i:s')));
		}
	}
}