<?php

class Folder extends \Eloquent {
	
	protected $table = 'folders';
	protected $guarded = array('_token');

  	public function User()
	{
		return $this->belongsTo('User');
	}

	public function getFolders($table_fields,$params){
		$sort = $params['sort'];
    	$order = $params['order'];
    	$field = $params['field'];
    	$search = $params['search'];
        
    	$sort_by = isset($table_fields[$sort])?$table_fields[$sort]:'id';  //set default sort
    	isset($table_fields[$field])?$search_field=$table_fields[$field]:$search_field='folders.id';
        if($search_field == 'created_at' || $search_field == 'updated_at'){
            $search_field = 'folders.'.$search_field;
        }

    	$folders =  DB::table('folders')
    					->join('users', 'users.id', '=', 'folders.user_id')
    					->select('folders.*', 'users.username as user')
    					->where($search_field,'like','%'.$search.'%')
    					->orderBy($sort_by,$order)
    					->paginate(20)
						->appends(array('sort' => $sort, 'order' => $order, 'field' =>$field, 'search' => $search));

        return $folders;
	}

}