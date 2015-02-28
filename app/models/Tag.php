<?php

class Tag extends \Eloquent {

    /**
     * The database table used by the model.
     *
     * @var string
     */
	protected $table = 'tags';

	 /**
     * Save tags
     * @param  string  $tags
     * @return None  
     */
	public function saveTags($tags){
		$tags = strtolower($tags);
		$tags = trim($tags);
		$tags = preg_replace('/,/', "'),('", "('".$tags."')");
		DB::statement("INSERT INTO slc_tags (name) VALUES $tags ON DUPLICATE KEY UPDATE name = VALUES(name)");
	}

	/**
     * Get tags by id
     * @param  string  $tags
     * @return Obj  
     */	
	public function getTagsIds($tags){
		$tags = explode(',',$tags);
		$result = DB::table($this->table)->select()->whereIn('name', $tags)->get();
		return $result;
	}
}