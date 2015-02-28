<?php

class TagController extends BaseController {

	public function getIndex(){
        $tagsRes = Tag::all();
        if(!empty($tagsRes)){
        	$tags = '';
        	foreach ($tagsRes as $val) {
        		$tags.=$val->name.',';
        	}
        }      
		return View::make('content.admin.tags.index', compact('tags'));
	}

	public function addTags($tags,$table,$elementId){
		$model = new Tagstoelement;
		$model->where('table',$table)->where('element_id',$elementId)->delete();

		if(!empty($tags)){		
			$tag = new Tag;
			$tag->saveTags($tags);

			$tags = explode(',',$tags);
			$tagsIds = $tag->select('id')->whereIn('name', $tags)->get();			
			if(!empty($tagsIds)){
				foreach ($tagsIds as $val) {
					$data[] = array('tag_id'=>$val->id,'table'=>$table,'element_id'=>$elementId);
				}
				$model->insert($data);
			}
		}	
	}

	public function getTags($elementId,$table){
		$model = new Tagstoelement;
		$tags = $model->select('tags.name')
					->from('tagstoelement')
					->join('tags','tags.id','=','tagstoelement.tag_id')
					->where('tagstoelement.element_id',$elementId)
					->where('tagstoelement.table',$table)
					->get();
		if(!empty($tags)){
			$result = '';
			foreach ($tags as $val) {
				$result.=$val->name.',';
			}
			return $result;
		}
		return '';
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @return none
	 */
	public function postDestroy()
	{
		$name = Input::get('name');
		$tag = Tag::where('name',$name)->first();
		if(!empty($tag)){
			Tag::destroy($tag->id);
			Tagstoelement::where('tag_id',$tag->id)->delete();
		}
	}

}