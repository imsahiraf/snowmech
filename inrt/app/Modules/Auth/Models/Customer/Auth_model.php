<?php

namespace App\Modules\Auth\Models\customer;

class Auth_model
{

    public function __construct()
    {
        $this->db       = db_connect();
        $this->session  = \Config\Services::session();
    }
    public function getUsers()
    {
        $builder = $this->db->table('dbt_user');
        $builder->select('*');
        $query   = $builder->get();
        return $query->getResult();
    }

    public function checkUser($data = array())
    {

        $where = "(email ='" . $data['email'] . "' OR username = '" . $data['email'] . "')";
        $where1 = "(status ='" . '1'. "' OR status = '" . '6' . "')";

        $builder = $this->db->table('dbt_user');
        return $builder->select("*")
            ->where('password', md5($data['password']))
            ->where($where)
            ->where($where1)
            ->get();
    }

   

    

    public function last_login($ipadd)
    {
        $builder = $this->db->table('admin');
        $builder->set('last_login', date('Y-m-d H:i:s'));
        $builder->set('ip_address', $ipadd);
        $builder->where('uid', $this->session->get('id'));
        $builder->update();
        return true;
    }

    public function last_logout($ipadd)
    {
        $builder = $this->db->table('dbt_user');
        $builder->set('last_logout', date('Y-m-d H:i:s'));
        $builder->set('ip_address', $ipadd);
        $builder->where('uid', $this->session->get('id'));
        $builder->update();
        return true;
    }
}