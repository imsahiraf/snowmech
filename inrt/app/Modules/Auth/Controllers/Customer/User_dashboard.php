<?php

namespace App\Modules\Auth\Controllers\Customer;

use \CodeIgniter\HTTP\URI;

helper('date');
class User_dashboard extends BaseController
{
     public function index()
    {   
         $user_id                = $this->session->get('user_id');
        $user = $this->common_model->findById('dbt_user', array('user_id' => $user_id,'status'=>6));

        if(@$user->status==6){
            return  redirect()->to(base_url('customer/change-password'));
        }
       
        $data                   = $this->dashboard_model->get_cata_wais_transections($user_id);
        $data['coin_info']      = $this->common_model->findById('coin_setup', array());
        $data['transaction']    = $this->dashboard_model->retriveUserCryptoTransaction();
        $data['package']        = $this->common_model->findAll('package', array(), 'package_id', 'desc');
        $data['rcoin_info']     = $this->dashboard_model->release_coin_info();

        $nowtime                = date("Y-m-d H:i:s");
        $coinreleasetimedata    = $this->dashboard_model->coin_release_time($nowtime);
        $coinrelease            = $coinreleasetimedata->getRow();
        $data['flipdata']       = $coinrelease;

        $data['module'] = "Customer";
        $data['content'] = $this->BASE_VIEW . '\home';
        return $this->template->customer_layout($data);
    }

    public function displaylanguage(){

        $language   = $this->common_model->findAll('language', array(), 'english', 'asc');

        echo json_encode($language);
    }
    
}