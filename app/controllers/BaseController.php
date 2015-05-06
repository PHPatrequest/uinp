<?php
ini_set('display_errors',1);
class BaseController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			$this->layout = View::make($this->layout);
		}
	}

	/**
	 * Chek user is admin
	 * @return bool
	 */
	protected function is_admin(){
		if(Auth::check() && Auth::user()->role->id==1){
			return true;
		} else {
			return false;
		}
	}

	/**
	 * Chek is user resource owner
	 * @return bool
	 */
	protected function is_owner($elementOwnerId){
		if($this->is_admin() || Auth::check() && $elementOwnerId==Auth::user()->id){
			return true;
		} else {
			return false;
		}
	}

	protected function saveAlias($alias,$item_id,$table,$parent_folder_id){
	    $model = new Alias;
		$model->alias = $alias;
		$model->item_id = $item_id;
		$model->table = $table;
		$model->parent_folder_id = $parent_folder_id;
		$model->save();
	}

	protected function updateAlias($id,$alias,$parent_folder_id){
		$model = new Alias;
		$element = $model->find($id);

		$data = array(
			'alias'				=>	$alias,
			'parent_folder_id'	=>	$parent_folder_id,
		);		
		$model->where('id',$id)->update($data);
	}

	/*
	* Используется при сохранении элемента
	*/
	protected function getParents($parentId){
		while ( $parentId != 0) {
			$parent = Folder::where('id',$parentId)->first();
			$result[]=$parent->alias;
			$parentId=$parent->parent_folder_id;
		}
		if (!empty($result)){
			krsort($result);
			return $result;
		}
		return array();
	}

	/**
	 * Create image thumb
	 * @param  array  $image
	 * @param  int  $width
	 * @param  int  $height
	 * @param  bool  $crop
	 * @return string
	*/
	public function createThumb($image,$width,$height,$crop){
		$thumbPath = 'uploads/thumbs/thumb_'.$image['name'];
		Image::make($image['path'], 
			array(
				'width' 	=> $width,
				'height' 	=> $height,
				'crop'		=> $crop
			))
		->save($thumbPath);
		return $thumbPath;
	}
}