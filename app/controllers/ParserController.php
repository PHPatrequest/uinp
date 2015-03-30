<?php 

use Yandex\Translate\Translator;
use Yandex\Translate\Exception;

class ParserController extends BaseController {

	protected $rules = array(
		'url'		=> 'required',
	);
	protected $table_fields = array(
		'Url'		=> 'url',
		'Publish'	=> 'publish',
		'Translate'	=> 'translate',
		'Disabled'	=> 'disabled',
		'Author'	=> 'username',
	);


	/**
	* Display a listing of parser params
	*
	* @return Response
	*/
	public function getIndex()
	{
		$model = new Parser;
		$params = array(
			'sort' 		=> Input::get('sort'),
	    	'order' 	=> Input::get('order'),
	    	'field' 	=> Input::get('field'),
	    	'search' 	=> Input::get('search'),
    	);
		$table_fields = $this->table_fields;

        $data = $model->getParserData($table_fields,$params);

		return View::make('content.admin.parser.index', compact('data','table_fields'));
	}

	/**
	 * Show the form for creating a new parser data row
	 *
	 * @return Response
	 */
	public function getCreate()
	{
		$folders = Folder::all();
		$parent = 0;
		$tree =  View::make('content.admin.tree',compact('folders','parent'));
		$users = User::lists('username','id');
		return View::make('content.admin.parser.form',compact('users','tree'));
	}

	/**
	 * Store a newly created parser data in storage.
	 *
	 * @return Response
	 */
	public function postStore()
	{	
		$validator = Validator::make(Input::all(), $this->rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput(Input::all());
		} else {
			$model = new Parser;
	        $model->url   			= Input::get('url');
	        $model->author   		= Input::get('author');
	        $model->publish   		= Input::get('publish')?1:0;
	        $model->translate   	= Input::get('translate')?1:0;
	        $model->disabled   		= Input::get('disabled')?1:0;
	        $model->remove_links   	= Input::get('remove_links')?1:0;
	        $model->bufferapp   	= Input::get('bufferapp')?1:0;
	        $model->vk   			= Input::get('vk')?1:0;
	        $model->folder_id 		= Input::get('folder_id');
        	$model->save();
		}

		Session::flash('success', 'Parser data successfully added!');
		return Redirect::to(URL::to('admin/parser'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function getEdit($id)
	{
		$parser = Parser::find($id);
		if(empty($parser)){
			App::abort(404);
		}
		$folders = Folder::all();
		$parent = $parser->folder_id;
		$tree =  View::make('content.admin.tree',compact('folders','parent'));
		$users = User::lists('username','id');
		return View::make('content.admin.parser.form', compact('parser','users','tree'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function putUpdate($id)
	{
		$model = Parser::findOrFail($id);

		$validator = Validator::make($data = Input::all(), $this->rules);
		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		} else {

			$data = array(
		        'url'   			=> Input::get('url'),
		        'author'   			=> Input::get('author'),
		        'publish'   		=> Input::get('publish'),
		        'translate'   		=> Input::get('translate'),
		        'disabled'   		=> Input::get('disabled'),
		       	'remove_links'   	=> Input::get('remove_links'),
	        	'bufferapp'   		=> Input::get('bufferapp'),
	        	'vk'   				=> Input::get('vk'),
	        	'folder_id' 		=> Input::get('folder_id'),
	        );	        

        	$model->update($data);
		}
		Session::flash('success', 'Parser data successfully updated!');
		return Redirect::to(URL::to('admin/parser'));
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function deleteDestroy($id)
	{
		Parser::destroy($id);
		Session::flash('success', 'Successfully deleted!');
		return Redirect::back();
	}

	public function getParse(){
		$model = new Settings;
		$settings = $model->first();
		if($settings->parser_busy == 0){
			$model->update(array('parser_busy'=>1));
			header('Content-Type: text/html; charset=utf-8');
			$parserData = Parser::all();
			if(!empty($parserData)){
				foreach ($parserData as $parserRow) {
					if($parserRow->disabled==0){
						try {					
							$rss = simplexml_load_file($parserRow->url);
						} catch (Exception $e) {
							$rssError = $e->getMessage();												
						}
						if(isset($rssError)){
							$errors[] = $rssError;
						} else {
							$itemsCount = $this->storeParsed($rss,$parserRow);
							$messages[] = 'From '.$parserRow->url.' stored '.$itemsCount.' items';
						}
					}
				}
			}
			if(isset($errors)){
				Session::flash('error', implode('<br>',$errors));		
			}
			if(isset($messages)){
				Session::flash('success', implode('<br>',$messages));
			}
			$model->update(array('parser_busy'=>0));		
		} else {
			Session::flash('error', 'Parser busy');	
		}
		return Redirect::to('/admin/parser');
	}

	private function validateXml($ulr){
		$reader = new XMLReader();
		$reader->open($ulr);
		$reader->setParserProperty(XMLReader::VALIDATE, true);
		if ($reader->isValid()){
		    return true;
		}
		return false;
	}

	private function storeParsed($rss,$parserRow){
		$saveData = array();
		$i = 0;
	    foreach($rss->channel->item as $entry) {
	    	$article = array();

	    	if($parserRow->translate == 1){
	    		$article['title'] = $this->yandexTranslate((string)$entry->title);  		    	
		    } else {
		    	$article['title'] = (string)$entry->title;    	 			    	
		    }
		    $article['alias'] = $this->generateAlias($article['title']);
		    if(!$this->aliasUnique($article['alias'])){
		    	continue;
		    }
			if($parserRow->translate == 1){
				$article['content'] = $this->yandexTranslate((string)$entry->description);
			} else {
				$article['content'] = (string)$entry->description; 
			}
		    $article['user_id'] 	= $parserRow->author;
		    $article['created_at']	= date('Y-m-d H:i:s');
		    $article['updated_at']	= date('Y-m-d H:i:s');
		    $article['publish']		= $parserRow->publish;
		    $article['removelinks']	= $parserRow->remove_links;
		    $article['vk']			= $parserRow->vk;
		    $article['bufferapp']	= $parserRow->bufferapp;		    
		    $article['parent_folder_id'] = $parserRow->folder_id;

		    $imageUrl = (string)$entry->enclosure['url'];
		    if(!empty($imageUrl)){
			    $imagePath = 'uploads/articles/'.$article['alias'].'.jpg';
			    $this->storeImage($imageUrl,$imagePath);
			    $article['image'] = array(
			    	'name'	=> $article['alias'].'.jpg',
			    	'path'	=> $imagePath,
			    );
			} else {
				$article['image'] = '';
			}		    
		    $articleController = new ArticleController;
		    $articleController->postStore($article);
    		$i++;     		   
	    }
	    return $i;
	}

	private function storeImage($url,$path){
		if(!empty($url) && !empty($path)){			
			$image = file_get_contents($url);
			file_put_contents(public_path().'/'.$path,$image);
		}
	}

	private function aliasUnique($alias){
		$alias = Alias::where('alias',$alias)->first();
		if(!empty($alias)){
			return false;
		}
		return true;
	}

	private function generateAlias($text){
		if(!empty($text)){
			$text = mb_strtolower($text);
			$transl = array(
                'а'=> 'a', 'б'=> 'b', 'в'=> 'v', 'г'=> 'g', 'д'=> 'd', 'е'=> 'e', 'ё'=> 'e', 'ж'=> 'zh', 
                'з'=> 'z', 'и'=> 'i', 'й'=> 'j', 'к'=> 'k', 'л'=> 'l', 'м'=> 'm', 'н'=> 'n', ' '=>'_',
                'о'=> 'o', 'п'=> 'p', 'р'=> 'r', 'с'=> 's', 'т'=> 't', 'у'=> 'u', 'ф'=> 'f', 'х'=> 'h',
                'ц'=> 'c', 'ч'=> 'ch', 'ш'=> 'sh', 'щ'=> 'sh','ъ'=> '', 'ы'=> 'y', 'ь'=> '', 'э'=> 'e', 'ю'=> 'yu', 'я'=> 'ya',
                'і'=> 'i', 'є'=> 'e',
            );
            $text = strtr($text,$transl);
            $text = preg_replace('~[^-a-z0-9_]+~u', '', $text);
            return $text;
		}
	}

	private function yandexTranslate($text){
		try {
			$key = Config::get('site_keys.yandexTranslate');
			$translator = new Translator($key);
			$translation = $translator->translate($text, 'ru');

			return $translation; // Привет мир

			//echo $translation->getSource(); // Hello world;
			//echo $translation->getSourceLanguage(); // en
			//echo $translation->getResultLanguage(); // ru

		} catch (Exception $e) {
		  	//echo $e->getMessage();
		}
	}
}