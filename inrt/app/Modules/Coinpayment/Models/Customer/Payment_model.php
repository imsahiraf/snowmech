<?php 
namespace App\Modules\Coinpayment\Models\Customer;

class Payment_model {
    function __construct() {
        $this->db = db_connect();
        $this->session = \Config\Services::session();
    }
    


}