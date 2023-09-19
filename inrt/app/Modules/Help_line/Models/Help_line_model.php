<?php namespace App\Modules\Help_line\Models;

class Help_line_model
{
	
	public function __construct()
	{
		$this->request = \Config\Services::request();
		$this->db = db_connect();
	}

	public function findAll($limit, $offset){

	    return $this->db->table('dbt_messenger')
	    ->select('dbt_messenger.*,dbt_user.first_name,dbt_user.last_name,dbt_user.id as user_id')
		->join('dbt_user','dbt_user.user_id=dbt_messenger.sender_id')
		->where('sender_id !=','admin')
		->orderBy('id','DESC')
		->limit($limit, $offset)
		->get()
		->getResult();
	}
}