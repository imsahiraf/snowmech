<?php

namespace App\Modules\Finance\Models\Customer;

class Finance_model
{
	public function __construct()
	{
		$this->db = db_connect();
		$this->session = \Config\Services::session();
		$this->request 		 = \Config\Services::request();
	}

		/*
    |----------------------------------------------
    |   Datatable Ajax data Pagination+Search
    |----------------------------------------------     
    */
    
	function get_datatables($table,$column_order=array(),$column_search=array(),$order,$where=array(),$join=null,$secondtable=null)
	{ 
  		//print_r($column_search);

        $builder = $this->db->table($table);
		
		$i = 0;
		foreach ($column_search as $item) // loop column 
		{
                    
			if($_POST['search']['value']) // if datatable send POST for search
			{
                            
                                
				if($i===0) // first loop
				{
					$builder->groupStart(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$builder->like($item, $_POST['search']['value']);
				}
				else
				{
					$builder->orLike($item, $_POST['search']['value']);
				}

				if(count($column_search) - 1 == $i) //last loop
					$builder->groupEnd(); //close bracket
			}
			$i++;
		}
		if($join != null){
			$builder->select('*');
			$builder->join($secondtable,$join,'left');
		}
		if($where != null) // here order processing
		{
			$builder->where($where);
		}

		if(isset($_POST['order'])) // here order processing
		{
			$builder->orderBy($column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($order))
		{
			$order = $order;
			$builder->orderBy(key($order), $order[key($order)]);
		}
		if($this->request->getvar('length') != -1)
		$builder->limit($this->request->getvar('length'), $this->request->getvar('start'));
		$query = $builder->get();
		return $query->getResult();
	}

	function count_filtered($table,$column_order=array(),$column_search=array(),$order,$where=array())
	{
            $this->get_datatables($table,$column_order,$column_search,$order);
            $db      = db_connect();
            $builder = $db->table($table);
			$builder->where($where);
			return $builder->countAllResults();
	}

	public function count_all($table,$where=array())
	{

            $db      = db_connect();
            $builder = $db->table($table);
			$builder->where($where);
			return $builder->countAllResults();
			
	}
	
	 public function get_cata_wais_transections($user_id="")
	{
		if ($user_id!="") {
			$user_id = $user_id;
		}
		else{
			$user_id = $this->session->userdata('user_id');
		}
                $builder= $this->db->table("transections");
		$data = $builder->select('*')
                                ->where('user_id', $user_id)
                                ->get()
                                ->getresult();
		
		$dep = 0;
		$dep_f = 0;
		$w_f = 0;
		$t_f = 0;
		$we = 0;
		$invest = 0;
		$tras = 0;
		$reciver = 0;
		$individule = array();

		foreach ($data as $value) {

			if(@$value->transection_category=='deposit'){

				$deposit = $this->getFees('deposit',$value->releted_id);
				$dep_f = $dep_f + $deposit->fees;
				$individule['d_fees'] = $dep_f;

				$dep = $dep + $value->amount;
				$individule['deposit'] = $dep;
			}

			if(@$value->transection_category=='withdraw'){

				$withdraw = $this->getFees('withdraw',$value->releted_id);
				$w_f = $w_f + $withdraw->fees;
				$individule['w_fees'] = $w_f;

				$we = $we+$value->amount;
				$individule['withdraw'] = $we;

			}

			if(@$value->transection_category=='transfer'){

				$transfer = $this->getFees('transfer',$value->releted_id);
				$t_f = $t_f + $transfer->fees;
				$individule['t_fees'] = $t_f;

				$tras = $tras+$value->amount;
				$individule['transfar'] = $tras;
			}

			if(@$value->transection_category=='investment'){
				$invest = $invest+$value->amount;
				$individule['investment'] = $invest;
			}

			if(@$value->transection_category=='reciver'){
				$reciver = $reciver+$value->amount;
				$individule['reciver'] = $reciver;
			}
		}

			// My Payout
                        $mypayout_builder= $this->db->table("earnings");
			$my_payout = $mypayout_builder->select("sum(amount) as earns2")
                                                    ->where('user_id',$this->session->userdata('user_id'))
                                                    ->where('earning_type','type2')
                                                    ->get()
                                                    ->getrow();
			$individule['my_payout'] = $my_payout->earns2;

			//Package Commission
                        $mypayout_commission= $this->db->table("earnings");
			$commission = $mypayout_commission->select("sum(amount) as earns1")
                                                            ->where('user_id',$this->session->userdata('user_id'))
                                                            ->where('earning_type','type1')
                                                            ->get()
                                                            ->getrow();
			$individule['commission'] = $commission->earns1;

			//team bonus
                        $bonus_builder = $this->db->table("user_level"); 
			$bonus = $bonus_builder->select("sum(bonus) as bonuss")
                                                ->where('user_id',$this->session->userdata('user_id'))
                                                ->get()
                                                ->getrow();

			$individule['bonuss'] = $bonus->bonuss;


			// total earning
			$total_earn =  $individule['my_payout']+$individule['commission']+$individule['bonuss'];
			$individule['earn'] = $total_earn;
			#-----------------------
			//TOTAL FEES
			$total_fees = (@$individule['w_fees']+@$individule['t_fees']);
			#-----------------------
			#---------------------------
			# TOTAL GRAND BALENCE
			$individule['balance'] = (@$individule['deposit']+@$individule['reciver']+@$total_earn)-(@$individule['withdraw']+@$individule['investment']+@$individule['transfar']+@$total_fees);
			
			#----------------------------
			return $individule;

	}

	public function get_coin_info()
	{
		return $this->db->table('coin_setup')
		->select('*')
		->get()
		->getRow();
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
}