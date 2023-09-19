<?php

namespace App\Modules\Auth\Models\customer;

class Deshboard_model
{
	public function __construct()
    {
        $this->db 		= db_connect();
        $this->session  = \Config\Services::session();
    }


    public function get_cata_wais_transections($user_id)
	{
		$data = array();

		$data['totalBalance'] 	= $this->db->table('dbt_balance')
									->selectSum('balance')
									->where('user_id',$user_id)
									->get()
									->getRow();

		return $data;
	}

	public function retriveUserCryptoTransaction($user=null)
	{
		if ($user==null) {
			$user = $this->session->get('user_id');
		}

		$wallet = $this->retriveUserCryptoWallet($user);

		$query = $this->db->table('dbt_crypto_transaction')
			->select('*')
			->where('wallet', $wallet)
			->get()
			->getRow();

		return $query;
	}


	public function retriveUserCryptoWallet($user=null)
	{
		if ($user==null) {
			$user = $this->session->get('user_id');
		}

		$query = $this->db->table('dbt_user_cryptowallet')
			->select('wallet')
			->where('user_id', $user)
			->get()
			->getRow();

		return @$query->wallet;

	}

	public function payment_gateway_common()
	{
		$coininfo 	= $this->get_coin_info();
		$p 			= $coininfo->pair_with;
		$identity 	= "";

		if($p=="USD"){
			$identity 	= array('payeer','paypal','stripe','phone','bank');
		}
		else if($p=="BTC"){
			$identity = array('payeer','bitcoin','coinpayment');
		}
		else if($p=="BCH"||$p=="LTC"||$p=="DASH"||$p=="DOGE"||$p=="POT"||$p=="VTC"||$p=="PPC"||$p=="MUE"||$p=="UNIT"||$p=="LTCT"){
			$identity = array('bitcoin','coinpayment');
		}
		else if($p=="BSV"||$p=="SPD"||$p=="RDD"||$p=="FTC"){
			$identity = array('bitcoin');
		}
		else{
			$identity = array('phone','bank','coinpayment');
		}

		return $this->db->table('payment_gateway')
			->select('*')
			->whereIn('identity',$identity)
			->where('status', 1)
			->get()
			->getResult();
	}

	public function get_coin_info()
	{
		return $this->db->table('coin_setup')
		->select('*')
		->get()
		->getRow();
	}

	public function coinpayment_withdraw()
	{
		$data = $this->db->table('payment_gateway')
		->select('data')
		->where('identity','coinpayment')
		->get()
		->getRow();

		$data_tbl = json_decode($data->data,true);
		$withdraw = $data_tbl['withdraw'];

		return $withdraw;
	}

	public function payment_withdraw($wdata,$method = NULL)
    {

        $gateway = $this->db->table('payment_gateway')
							->select('*')
							->where('identity',$method)
							->where('status',1)
							->get()
							->getRow();

        $user_id = $this->session->get('user_id');

        if($method == "coinpayment"){

            $coinpayment = array(    
                "private_key"   =>@$gateway->private_key,
                "public_key"    =>@$gateway->public_key
            );

            $public_key     = $coinpayment['public_key']; 
            $private_key    = $coinpayment['private_key']; 

            $req = array(
                "version"       =>1,
                "cmd"           =>"create_withdrawal",
                "amount"        =>number_format((float)($wdata['amount']),8, '.', ''),
                "currency"      =>$wdata['currency_symbol'],
                "address"       =>$wdata['wallet_id'],
                "auto_confirm"  =>1,
                "ipn_url"       =>base_url("payment_callback/conipayment_withdraw"),
                "key"           =>$public_key
            );

            $post_data = http_build_query($req, '', '&');

            $hmac = hash_hmac('sha512', $post_data, $private_key); 

            static $ch = NULL; 
            if ($ch === NULL) { 
                $ch = curl_init('https://www.coinpayments.net/api.php'); 
                curl_setopt($ch, CURLOPT_FAILONERROR, TRUE); 
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
            }
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('HMAC: '.$hmac)); 
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data); 
             
            $data = curl_exec($ch);

            if ($data !== FALSE) { 
                if (PHP_INT_SIZE < 8 && version_compare(PHP_VERSION, '5.4.0') >= 0) {

                    $dec = json_decode($data, TRUE, 512, JSON_BIGINT_AS_STRING);

                }
                else { 

                    $dec = json_decode($data, TRUE); 

                } 
                if ($dec !== NULL && count($dec)) {

                    if($dec['error']=='ok')
                    {
                        $reg = array(

                        'currency1'         =>$wdata['currency_symbol'],
                        'currency2'         =>$wdata['currency_symbol'],
                        'amount1'           =>@$dec['result']['amount'],
                        'amount2'           =>@$dec['result']['amount'],
                        'status_text'       =>json_encode(@$dec),
                        'txn_id'            =>@$dec['result']['id'],
                        'user_id'           =>$user_id
                        );
                        $this->common_model->insert("coinpayments_payments",$reg);

                        return $dec;

                    }
                    else{
                        return $dec['error'];
                    }

                } 
                else { 

                    return array('error' => 'Unable to parse JSON result ('.json_last_error().')'); 

                } 
            }
            else { 

                return array('error' => 'cURL error: '.curl_error($ch));

            }
          
        }

    }

    public function transections_all_sums($user_id = "")
	{
		
		$data['deposit_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'DEPOSIT')
								->get()
								->getRow();

		$data['credited_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'CREDITED')
								->get()
								->getRow();

		$data['exchange_cancel_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'EXCHANGE_CANCEL')
								->get()
								->getRow();

		$data['recevied_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'RECEIVED')
								->get()
								->getRow();

		$data['sell_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'SELL')
								->get()
								->getRow();

		$data['roi_amount']	 = $this->db->table('earnings')
								->selectSum('amount')
								->where('user_id', $user_id)
								->where('earning_type', "ROI")
								->get()
								->getRow();

		$data['referral_amount'] = $this->db->table('earnings')
								->selectSum('amount')
								->where('user_id', $user_id)
								->where('earning_type', "REFERRAL")
								->get()
								->getRow();

		$data['transfer_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'TRANSFER')
								->get()
								->getRow();

		$data['withdraw_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'WITHDRAW')
								->get()
								->getRow();

		$data['buy_amount'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_amount')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'BUY')
								->get()
								->getRow();

		$data['invest_amount'] = $this->db->table('dbt_balance_log')
								  ->selectSum('transaction_amount')
								  ->select('transaction_type')
								  ->where('user_id', $user_id)
								  ->where('transaction_type', 'INVESTMENT')
								  ->get()
								  ->getRow();

		$data['return_amount'] = $this->db->table('dbt_balance_log')
								  ->selectSum('transaction_amount')
								  ->select('transaction_type')
								  ->where('user_id', $user_id)
								  ->where('transaction_type', 'ADJUSTMENT')
								  ->get()
								  ->getRow();
								  
		$data['return_fees'] = $this->db->table('dbt_balance_log')
								  ->selectSum('transaction_fees')
		                          ->select('transaction_type')
    							  ->where('user_id', $user_id)
    							  ->where('transaction_type', 'ADJUSTMENT')
    							  ->get()
    							  ->getRow();

		$data['deposit_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'DEPOSIT')
								->get()
								->getRow();

		$data['credited_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'CREDITED')
								->get()
								->getRow();

		$data['exchange_cancel_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'EXCHANGE_CANCEL')
								->get()
								->getRow();

		$data['recevied_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'RECEIVED')
								->get()
								->getRow();

		$data['sell_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'SELL')
								->get()
								->getRow();

		$data['transfer_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'TRANSFER')
								->get()
								->getRow();

		$data['withdraw_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'WITHDRAW')
								->get()
								->getRow();

		$data['buy_amount_fees'] = $this->db->table('dbt_balance_log')
								->selectSum('transaction_fees')
								->select('transaction_type')
								->where('user_id', $user_id)
								->where('transaction_type', 'BUY')
								->get()
								->getRow();

		return  $data;
	}

	public function get_recieved($id){

		return $this->db->table('dbt_transfer')->select('dbt_transfer.*,dbt_user.*')
		->join('dbt_user','dbt_user.user_id=dbt_transfer.sender_user_id')
		->where('dbt_transfer.receiver_user_id',$this->session->get('user_id'))
		->where('dbt_transfer.id',$id)
		->get()->getRow();
	}

	 public function coin_release_time($nowtime){
	    $builder = $this->db->table('dbt_release_setup');
	    $rdata = $builder->select('*')->where("status",1)->get()->getResult();
	    foreach ($rdata as $key => $value) {
	      $releasetime        = date("Y-m-d H:i:s",strtotime("$value->start_date +$value->day day"));
	      if($releasetime<=$nowtime){
	        $builder->where('id',$value->id)->update(['status'=>0]);
	      }
	    }
	    return $builder->select("*")
	      ->where("start_date<='".$nowtime."'")
	      ->where("status",1)
	      ->orderBy("id", "asc")
	      ->limit(1)
	      ->get();
  	}

  	public function release_coin_info()
  {
    
    return $this->db->table("coin_setup")
        ->select('coin_setup.*,dbt_currency.rate')
        ->join('dbt_currency', 'coin_setup.pair_with = dbt_currency.symbol', 'LEFT')
        ->get()
        ->getRow();
  }

}