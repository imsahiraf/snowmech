<?php 
namespace App\Modules\Paypal\Models\Customer;

class Payment_model {
    function __construct() {
        $this->db = db_connect();
        $this->session = \Config\Services::session();
    }


    //Add User Balance
     public function balanceAdd($data = array()){

      $check_user_balance = $this->db->table('dbt_balance')->select('*')->where('user_id', $data->user_id)->get()->getRow();

      if ($check_user_balance) {

          $updatebalance = array(
              'balance'     => $data->amount+$check_user_balance->balance,
          );

       
          $this->db->table('dbt_balance')
                  ->set($updatebalance)
                  ->where('user_id', $data->user_id)
                  ->update();

          return  $check_user_balance->id;

      } else {

          $insertbalance = array(
              'user_id'         => $data->user_id,
              'balance'         => $data->amount,
              'last_update'     => date('Y-m-d h:i:s'),
          );

          $builder = $this->db->table('dbt_balance');
          $builder->insert($insertbalance);
          return $this->db->insertID();

      }
  }


   


}