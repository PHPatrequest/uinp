<?php 

use Yandex\Translate\Translator;
use Yandex\Translate\Exception;

class Parser2Controller extends BaseController {

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
		$model = new Parser2;
		$params = array(
			'sort' 		=> Input::get('sort'),
	    	'order' 	=> Input::get('order'),
	    	'field' 	=> Input::get('field'),
	    	'search' 	=> Input::get('search'),
    	);
		$table_fields = $this->table_fields;

        $data = $model->getParserData($table_fields,$params);

		return View::make('content.admin.parser.index2', compact('data','table_fields'));
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
		return View::make('content.admin.parser.form2',compact('users','tree'));
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
			$model = new Parser2;
	        $model->url   			= Input::get('url');
	        $model->parse_url   	= Input::get('parse_url');
	        $model->author   		= Input::get('author');
	        $model->publish   		= Input::get('publish')?1:0;
	        $model->translate   	= Input::get('translate')?1:0;
	        $model->only_with_images= Input::get('only_with_images')?1:0;
	        $model->disabled   		= Input::get('disabled')?1:0;
	        $model->remove_links   	= Input::get('remove_links')?1:0;
	        $model->vk   			= Input::get('vk')?1:0;
	        $model->folder_id 		= Input::get('folder_id');
	        $model->min_chars 		= Input::get('min_chars');
	        $model->links_rule 		= Input::get('links_rule');
	        $model->title_rule 		= Input::get('title_rule');
	        $model->image_rule 		= Input::get('image_rule');
	        $model->text_rule 		= Input::get('text_rule');
	        $model->keywords_rule 	= Input::get('keywords_rule');
	        $model->description_rule= Input::get('description_rule');

        	$model->save();
		}

		Session::flash('success', 'Parser data successfully added!');
		return Redirect::to(URL::to('admin/parser2'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function getEdit($id)
	{
		$parser = Parser2::find($id);
		if(empty($parser)){
			App::abort(404);
		}
		$folders = Folder::all();
		$parent = $parser->folder_id;
		$tree =  View::make('content.admin.tree',compact('folders','parent'));
		$users = User::lists('username','id');
		return View::make('content.admin.parser.form2', compact('parser','users','tree'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function putUpdate($id)
	{
		$model = Parser2::findOrFail($id);

		$validator = Validator::make($data = Input::all(), $this->rules);
		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		} else {

			$data = array(
		        'url'   			=> Input::get('url'),
		        'parse_url'			=> Input::get('parse_url'),
		        'author'   			=> Input::get('author'),
		        'publish'   		=> Input::get('publish'),
		        'translate'   		=> Input::get('translate'),
		        'only_with_images'	=> Input::get('only_with_images'),
		        'disabled'   		=> Input::get('disabled'),
		       	'remove_links'   	=> Input::get('remove_links'),
	        	'vk'   				=> Input::get('vk'),
	        	'folder_id' 		=> Input::get('folder_id'),
	        	'min_chars'			=> Input::get('min_chars'),
	        	'links_rule' 		=> Input::get('links_rule'),
	        	'title_rule' 		=> Input::get('title_rule'),
		        'image_rule' 		=> Input::get('image_rule'),
		        'text_rule' 		=> Input::get('text_rule'),
		        'keywords_rule' 	=> Input::get('keywords_rule'),
		        'description_rule'	=> Input::get('description_rule'),

	        );	        

        	$model->update($data);
		}
		Session::flash('success', 'Parser data successfully updated!');
		return Redirect::to(URL::to('admin/parser2'));
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function deleteDestroy($id)
	{
		Parser2::destroy($id);
		Session::flash('success', 'Successfully deleted!');
		return Redirect::back();
	}

	private function curl($url){
		$curl = curl_init();
		curl_setopt_array($curl, Array(
		    CURLOPT_URL            => $url,
		    CURLOPT_RETURNTRANSFER => TRUE,
		    CURLOPT_ENCODING       => 'UTF-8'
		));
		$data = curl_exec($curl);
		curl_close($curl);
		return $data;
	}

	private function curl_get_contents($url) {
		if (!function_exists('curl_init')){
		    die('CURL is not installed!');
		}
		$headers[]  = "User-Agent:Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13";
	    $headers[]  = "Accept:text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
	    $headers[]  = "Accept-Language:en-us,en;q=0.5";
	    $headers[]  = "Accept-Encoding:gzip,deflate";
	    $headers[]  = "Accept-Charset:ISO-8859-1,utf-8;q=0.7,*;q=0.7";
	    $headers[]  = "Keep-Alive:115";
	    $headers[]  = "Connection:keep-alive";
	    $headers[]  = "Cache-Control:max-age=0";

	    $curl = curl_init();
	    curl_setopt($curl, CURLOPT_URL, $url);
	    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
	    curl_setopt($curl, CURLOPT_ENCODING, "gzip");
	    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
	    $data = curl_exec($curl);
	    curl_close($curl);
	    return $data;
	}

	private function getParserLinks($parserRow){
		$linksPage = $this->curl($parserRow->parse_url);
		preg_match_all('|'.$parserRow->links_rule.'|',$linksPage,$matches,PREG_PATTERN_ORDER);
		if(isset($matches[1]) && !empty($matches[1])){
			foreach ($matches[1] as $key => $val) {
				$liks[] = $parserRow->url.$val;
			}
			return $liks;
		}
		return false;
	}

	public function getParse($parserId=''){
		header('Content-Type: text/html; charset=utf-8');
		if(empty($parserId)){
			$parserData = Parser2::all();
		} else {
			$parserData = array(Parser2::find($parserId));
		}
		if(!empty($parserData)){
			foreach ($parserData as $parserRow) {
				if($parserRow->disabled==0 || !empty($parserId)){
					$links = $this->getParserLinks($parserRow);
					//var_dump($links);exit;
					if($links){
						foreach ($links as $link) {
							$newsHtml = $this->curl($link);
							preg_match_all('|'.$parserRow->image_rule.'|',$newsHtml,$matches,PREG_PATTERN_ORDER);
							var_dump($matches);exit;
						}
					}
				}
			}	
		}
		if(empty($parserId)){	
			return Redirect::to('/admin/parser2');
		}
	}

	private function removeTags($html){
		$res = preg_replace('/\<img.*\>/', '', $html);
		$res = preg_replace('/\<a.*\>(.*)\<\/a>/', '$1', $res);
		//$res = preg_replace('/\<.*\>.*\<\/.*\>/', '', $html);
		//$res = preg_replace('/\<.*\>/', '', $res);
		return $res;
	}

	private function storeParsed($rss,$parserRow,$parserId){	
		$saveData = array();
		$i = 0;
	    foreach($rss->channel->item as $entry) {

			if(!empty($parserId)){
		    	/****Test******/
		    	echo "<br>Парсим запись из RSS";
		    	echo '<pre>';
		    	var_dump($entry);
		    	echo '</pre>-----------------------<br>';
		    	/**************/
		    }

	    	$article = array();

	    	if($parserRow->translate == 1){
	    		$article['title'] = (string)$this->yandexTranslate((string)$entry->title);
	    		if(empty($article['content'])){
	    			$article['title'] = (string)$entry->title; 
	    		}
		    } else {
		    	$article['title'] = (string)$entry->title;   	 			    	
		    }
		    $article['alias'] = $this->generateAlias($article['title']);

		    if(!$this->aliasUnique($article['alias'])){
				/****Test******/
				if(!empty($parserId)){
					echo '<span style="color:red">Уже сохранена</span><br>';
				}
				/*************/
		    	continue;
		    }
		    if(!empty($parserRow->parse_rules)){	    	
		    	include_once(app_path().'/helpers/simple_html_dom.php');
		    	$html = new simple_html_dom();
		    	//$html->load($this->curl_get_contents($entry->link),0);
		    	$html->load(file_get_contents($entry->link),0);
		    	if(!empty($parserRow->meta_keywords)){
		    		$metaKeywords = $html->find('meta[name='.$parserRow->meta_keywords.']');
		    	}
	    		$rawArticle = $html->find($parserRow->parse_rules);   		
	    		$articleText = implode(' ',$rawArticle);
	    		//$articleText = $this->removeTags($articleText);
	    		$articleText = strip_tags($articleText);
		    } else {
		    	$articleText = $entry->description;
		    }

	    	if(empty($articleText)){
    			/****Test******/
				if(!empty($parserId)){
					echo '<span style="color:red">Пустой контент</span><br>';
				}
				/*************/
    			continue;
    		}

		    $article['keywords'] = '';
		    $article['description'] = '';
			if($parserRow->translate == 1){
				if(isset($metaKeywords[0]->content)){
					$article['keywords'] = (string)$this->yandexTranslate((string)$metaKeywords[0]->content);
				}
				$article['description'] = (string)$this->yandexTranslate((string)$entry->description);
				$article['content'] = (string)$this->yandexTranslate((string)$articleText);
				if(empty($article['content'])){
					$article['content'] = (string)$articleText;
				}
			} else {
				if(isset($metaKeywords[0]->content)){
					$article['keywords'] = $metaKeywords[0]->content;
				}
				$article['description'] = $entry->description;
				$article['content'] = (string)$articleText;
			}
			$article['description'] = strip_tags($article['description']);
			$article['content'] = $this->createAbzac($article['content']);

			/****Test******/
			if(!empty($parserId)){
		    	echo 'Keywords: '.$article['keywords'].'<br>----------------------<br>';
		    	echo 'Description: '.$article['description'].'<br>----------------------<br>';
		    	echo "Вытаскиваем статью по URL";
		    	echo '<pre>';
		    	var_dump($article['content']);
		    	echo '</pre>************************<br>';  	
		    }
		    /**************/
		    
			if($parserRow->min_chars > 0 && strlen($article['content']) < $parserRow->min_chars){
				/****Test******/
				if(!empty($parserId)){
					echo '<span style="color:red">Недостаточно символов</span><br>';
				}
				/*************/
				continue;
			}

		    $article['user_id'] 	= $parserRow->author;
		    $article['created_at']	= date('Y-m-d H:i:s');
		    $article['updated_at']	= date('Y-m-d H:i:s');
		    $article['publish']		= $parserRow->publish;
		    $article['removelinks']	= $parserRow->remove_links;
		    $article['vk']			= $parserRow->vk;		    
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
				if($parserRow->only_with_images == 1){
					/****Test******/
					if(!empty($parserId)){
						echo '<span style="color:red">Нет картинки</span><br>';
					}
					/*************/
					continue;
				}
				$article['image'] = '';
			}

			/****Test******/
			if(!empty($parserId)){
				echo '<span style="color:green">Будет сохранена</span><br>';
			}
			/*************/
			@ob_flush(); flush();
			if(empty($parserId)){
		    	$articleController = new ArticleController;
		    	$articleController->postStore($article);
			}
    		$i++;    		   
	    }
	    return $i;
	}

	private function createAbzac($str){
		$substrings = explode(". ",$str);
		$subres = '';
		$result = array();
		foreach($substrings as $key => $val){ 
		    $subres.= $val.'. ';
		    if(($key+1)%4==0){
		    	$result[] = '<p>'.$subres.'</p>';
		    	$subres = '';
		    }
		}
		return implode('',$result);
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
			return $translation;

			//echo $translation->getSource(); // Hello world;
			//echo $translation->getSourceLanguage(); // en
			//echo $translation->getResultLanguage(); // ru

		} catch (Exception $e) {
		  	//echo $e->getMessage(); exit;
			return $text;
		}
	}
}