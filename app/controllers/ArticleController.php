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
			'Updated'	=> 'updated_at',
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
	 * Store a newly created article in storage.
	 *
	 * @return Response
	 */
	public function postStore()
	{
		$tags = Input::get('tags');
		$parent_folder_id 	= Input::get('folder_id');
		$this->rules['alias']	= 'max:255|required|unique:aliases,alias';
		$validator = Validator::make(Input::all(), $this->rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput(Input::except('userfile'));
		} else {			
			$model = new Article;
	        $model->title   			= Input::get('title');
	        $model->alias   			= Input::get('alias');
	        $model->user_id 			= Auth::user()->id;    
		    $model->content 			= Input::get('content');
		    $model->video 				= Input::get('video');
		    $model->parent_folder_id 	= $parent_folder_id;		    

			$image = '';
			if (Input::hasFile('userfile')) {
				$image = Common_helper::fileUpload(Input::file('userfile'),'articles/'.$model->alias,Input::get('alias'));			
				if(isset($image['errors'])){
					return Redirect::back()->withErrors($image['errors'])->withInput();
				}			
				$model->image 			= $image['path'];
		    	$model->thumb			= $this->createThumb($image);
			}
        	$model->save();

        	$this->postSocNetworks($model,$tags);

        	$TagController = new TagController;
        	$TagController->addTags($tags,'articles',$model->id);

        	$this->saveAlias(Input::get('alias'),$model->id,'articles',$parent_folder_id);  	
		}
		Session::flash('success', 'Successfully created!');
		return Redirect::to('admin/articles');
	}

	/**
	 * Post Article to social networks
	 *
	 * @param  Article  $model
	 * @return none
	 */
	private function postSocNetworks($model,$tags){
		$text = $model->content;

		$link = '';
		if($model->parent_folder_id != 0){
			$parentPath = Folder::where('id',$model->parent_folder_id)->first()->path;
			$link = URL::to('/').'/'.$parentPath.'/'.$model->alias;		
		}
		
		if(Input::get('bufferapp')){
			$this->bufferapp($text, $model->image, $model->thumb, $link);			
		}
		if(Input::get('vkcheckbox')){
			if(!empty($link)){
				$text = $link." \n".$text;
				$text = '#'.$model->title." \n".$text;
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
	public function getEdit($id)
	{
		$article = Article::find($id);
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

		$alias = Alias::where('item_id',$id)->where('table','articles')->first();						
		if(!empty($alias)){		
			$this->rules['alias']	= 'max:255|required|unique:aliases,alias,'.$alias->id;
		}

		$validator = Validator::make($data = Input::all(), $this->rules);
		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		} else {

			$data = array(
		        'title'   			=> Input::get('title'),
		        'alias'   			=> Input::get('alias'),
		        'content'			=> Input::get('content'),
		        'video'				=> Input::get('video'),
		        'user_id'   		=> Auth::user()->id,
		        'parent_folder_id' 	=> $parent_folder_id,
	        );
			
			if (Input::hasFile('userfile')) {
				$image = Common_helper::fileUpload(Input::file('userfile'),'articles/'.$data['alias'],Input::get('alias'));
				if(isset($image['errors'])){
					return Redirect::back()->withErrors($image['errors'])->withInput();
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
		}
		Session::flash('success', 'Successfully updated!');
		return Redirect::to('admin/articles');
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
		$thumbPath = 'uploads/articles/thumbs/thumb_'.$image['name'];
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