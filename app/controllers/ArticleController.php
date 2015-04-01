<?php

class ArticleController extends \BaseController {

	protected $rules = array(
		'title'		=> 'max:255|required',
		'video'		=> 'max:255',		
	);
	protected $table_fields = array(
			'Title'		=> 'title',
			'Author'	=> 'users.username',
			'Created'	=> 'created_at',
			'Published'	=> 'published_at',
		);
	protected $dontFlash = ['file'];

	/**
	* Display a listing of articles
	*
	* @return Response
	*/

	public function getIndex()
	{
		$model = new Article;
		$params = array(
			'sort' 		=> Input::get('sort'),
	    	'order' 	=> Input::get('order'),
	    	'field' 	=> Input::get('field'),
	    	'search' 	=> Input::get('search'),
    	);
		$table_fields = $this->table_fields;

        $articles = $model->getArticles($table_fields,$params);

		return View::make('content.admin.atricles.index', compact('articles','table_fields'));
	}


	/**
	 * Show the form for creating a new article
	 *
	 * @return Response
	 */
	public function getCreate()
	{
		$folders = Folder::all();
		$parent = 0;
		return View::make('content.admin.atricles.form')->nest('tree','content.admin.tree',compact('folders','parent'));
	}

	/**
	 * Store an article in the storage.
	 *
	 * @return Response
	 */
	public function postStore($data='')
	{
		$this->rules['alias']	= 'max:255|required|unique:aliases,alias';

		if(empty($data)){
			$tags 				= Input::get('tags');
			$parentFolderId 	= Input::get('folder_id');
			$title 				= Input::get('title');
			$alias 				= Input::get('alias');
			$userId				= Auth::user()->id;
			$content 			= Input::get('content');
			$publish 			= Input::get('publishnow');
			$video 				= Input::get('video');
			$removeLinks 		= Input::get('removelinks');

			$socialParams['bufferapp'] 	= Input::get('bufferapp');
			$socialParams['vk'] 		= Input::get('vkcheckbox');

			if(Input::hasFile('userfile')) {
				$image = Common_helper::fileUpload(Input::file('userfile'),'articles',$alias);
			}	
			$validator = Validator::make(Input::all(), $this->rules);
		} else {
			$tags 				= '';
			$video				= '';
			$parentFolderId 	= $data['parent_folder_id'];
			$title 				= $data['title'];
			$alias 				= $data['alias'];
			$userId				= $data['user_id'];
			$content 			= $data['content'];
			$publish 			= $data['publish'];
			$removeLinks 		= $data['removelinks'];
			$image 				= $data['image'];

			$socialParams['bufferapp'] 	= $data['bufferapp'];
			$socialParams['vk'] 		= $data['vk'];

			$validator = Validator::make($data, $this->rules);
		}

		if ($validator->fails()){
			if(empty($data)){
				return Redirect::back()->withErrors($validator)->withInput(Input::except('userfile'));
			}  
			return false;
		} else {			
			$model = new Article;
	        $model->title   			= $title;
	        $model->alias   			= $alias;
	        $model->user_id 			= $userId;  
		    $model->video 				= $video;
		    $model->parent_folder_id 	= $parentFolderId;

		    if($removeLinks == 1){
				$model->content = preg_replace('/<a.*<\/a>/','',$content);
			} else {
				$model->content = $content;
			}
		    if($publish == 1){
		    	$model->published_at = date('Y-m-d H:i:s');
		    }	    

			if(isset($image) && !empty($image)){		
				if(isset($image['errors'])){
					if(empty($data)){
						return Redirect::back()->withErrors($image['errors'])->withInput(Input::except('userfile'));
					}
					return false;
				}			
				$model->image 		= $image['path'];
				if(!empty($image['path'])){
		    		$model->thumb 	= $this->createThumb($image);
		    	}
			}
        	$model->save();
  
        	if(empty($data)){
	        	$TagController = new TagController;
	        	$TagController->addTags($tags,'articles',$model->id);

	        	$this->saveSeo($model->id);	
	        }  
	        $this->postSocNetworks($model,$tags,$socialParams);
        	$this->saveAlias($alias,$model->id,'articles',$parentFolderId);  	
		}
		if(empty($data)){
			Session::flash('success', 'Successfully created!');
			return Redirect::to('admin/articles');
		}
		return true;
	}

	/**
	 * Post Article to social networks
	 *
	 * @param  Article  $model
	 * @return none
	 */
	private function postSocNetworks($model,$tags,$params){
		$text = $model->content;

		$link = '';
		if($model->parent_folder_id != 0){
			$parentPath = Folder::where('id',$model->parent_folder_id)->first()->path;
			$link = URL::to('/').'/'.$parentPath.'/'.$model->alias;		
		}
		
		if($params['bufferapp']==1){
			$this->bufferapp($text, $model->image, $model->thumb, $link);			
		}
		if($params['vk']==1){
			if(!empty($link)){
				$text = $link." \n".$text;
				$text = $model->title." \n".$text;
			}
			$this->vkwallpost($text, $model->image, explode(',',$tags));			
		}
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function getEdit($id='')
	{
		if(empty($id)){
			App::abort(404);
		}
		$model = new Article;
		$article = $model->getArticleWhithSeo($id);
		if(!empty($article)){
			$folders = Folder::all();
			$TagController = new TagController;
        	$tags = $TagController->getTags($id,'articles');
			$parent = $article->parent_folder_id;	
		
			return View::make('content.admin.atricles.form', compact('article','tags'))->nest('tree','content.admin.tree',compact('folders','parent'));
		} else {
			App::abort(404);
		}
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function putUpdate($id)
	{		
		$model = Article::findOrFail($id);
		$tags = Input::get('tags');
		$parent_folder_id 	= Input::get('folder_id');

		$content = Input::get('content');
		if(Input::get('removelinks')){
			$content = preg_replace('/<a.*<\/a>/','',$content);
		}

		$alias = Alias::where('item_id',$id)->where('table','articles')->first();						
		if(!empty($alias)){		
			$this->rules['alias']	= 'max:255|required|unique:aliases,alias,'.$alias->id;
		}

		$validator = Validator::make($data = Input::all(), $this->rules);
		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput(Input::except('userfile'));
		} else {

			$data = array(
		        'title'   			=> Input::get('title'),
		        'alias'   			=> Input::get('alias'),
		        'content'			=> $content,
		        'video'				=> Input::get('video'),
		        'parent_folder_id' 	=> $parent_folder_id,
	        );

	        if(Input::get('publishnow')){
		    	$data['published_at'] = date('Y-m-d H:i:s');
		    }
			
			if (Input::hasFile('userfile')) {
				$image = Common_helper::fileUpload(Input::file('userfile'),'articles/'.$data['alias'],Input::get('alias'));
				if(isset($image['errors'])){
					return Redirect::back()->withErrors($image['errors'])->withInput(Input::except('userfile'));
				}
		        $data['image'] = $image['path'];
		        $data['thumb'] = $this->createThumb($image);
		        $image = $image['path'];
			} else {
				$image = Input::get('image');
					if(empty($image)) {
						$data['image'] = '';
						$data['thumb'] = '';
					}
			}

        	$model->update($data);

        	$TagController = new TagController;
        	$TagController->addTags($tags,'articles',$model->id);

        	if(!empty($alias)){
        		$this->updateAlias($alias->id,Input::get('alias'),$parent_folder_id);
        	} else {
        		$this->saveAlias(Input::get('alias'),$model->id,'articles',$parent_folder_id);
        	}

        	$this->saveSeo($id);
		}
		Session::flash('success', 'Successfully updated!');
		return Redirect::to('admin/articles');
	}

	/**
	 * Save seo data
	 *
	 * @return Bool
	 */
	private function saveSeo($itemId=''){
			$keywords = Input::get('keywords');
			$description = Input::get('description');
			$img_alt = Input::get('img_alt');
			$img_title = Input::get('img_title');

			if(!empty($keywords) || !empty($description) || !empty($img_alt) || !empty($img_title)){
				$seo = new SeoController;
		    	$seoid = Input::get('seoid');
        		if(!empty($seoid)){
        			$seo->putUpdate($seoid);
        		} else if(!empty($itemId)) {
        			$seo->postStore($itemId);        			
        		}
        		return true;
        	}
        	return false;
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function deleteDestroy($id)
	{
		Article::destroy($id);
		Alias::where('item_id',$id)->where('table','articles')->delete();
		Seo::where('item_id',$id)->where('table','articles')->delete();
		Session::flash('success', 'Successfully deleted!');
		return Redirect::back();
	}

	/**
	 * Create image thumb
	 * @param  array  $image
	 * @return string
	*/
	private function createThumb($image){
		$thumbPath = 'uploads/thumbs/thumb_'.$image['name'];
		Image::make($image['path'], 
			array(
				'width' 	=> 80,
				'height' 	=> 80,
				'crop'		=> true
			))
		->save($thumbPath);
		return $thumbPath;
	}

	/**
	 * Post Article to VK
	 * @param  string  $text
	 * @param  string  $image
	 * @param  array   $tags
	 * @return string
	*/	
	public function vkwallpost($text, $image='', $tags='',$postId=false){
		//если задан postId - обновит существующую запись		
		$accessToken = Config::get('site_keys.vk.accessToken');
		$model = new Vkontakte(['access_token' => $accessToken]);
		$publicID = Config::get('site_keys.vk.publicID');
		$text = strip_tags($text);
		$postId = $model->postToPublic($publicID, $text, $image, $tags, $postId);
		return $postId;
	}

	/**
	 * Post Article via bufferapp
	 * @param  string  $text
	 * @param  string  $image
	 * @param  string  $thumb
	 * @return none
	*/
	private function bufferapp($text, $image='', $thumb='', $link=''){
		// You need to create an app at http://bufferapp.com/developers/apps/create before you can go any further!

		// This was generated when you created your app
		$model = new Bufferapp(Config::get('site_keys.bufferApp.key'));

		$data = array('profile_ids' => array());

		// Your profile ids which can be found on your dashboard (http://bufferapp.com/dashboard)
		$data['now'] = true;
		$data['profile_ids'][] = Config::get('site_keys.bufferApp.googleId');	//google+
		$data['profile_ids'][] = Config::get('site_keys.bufferApp.facebookId'); 	//facebook

		$text = strip_tags($text);
		$text = preg_replace('/&nbsp;/','',$text);
		$data['text'] = $text;

		if(!empty($link)){
			$data['media']['link'] = $link;
		}
		if(!empty($image)){
			$data['media']['picture'] = URL::to('/').'/'.$image;
		}
		if(!empty($thumb)){
			$data['media']['thumb'] = URL::to('/').'/'.$thumb;
		}	

		$ret = $model->post('updates/create', $data);

		/**********************************************/		
		$data['profile_ids'] = array(Config::get('site_keys.bufferApp.twitter')); //twitter	

		$data['text'] = $link."\n".strip_tags($text);

		if(!empty($image)){
			$data['media']['photo'] = URL::to('/').'/'.$image;
		}

		$ret = $model->post('updates/create', $data);
	}
}