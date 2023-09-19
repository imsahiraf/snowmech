<?php namespace App\Modules\User\Models\Admin;

class User_model  {
    
    public function __construct(){
        $this->db = db_connect();
        $this->request = \Config\Services::request();

    }
    
 public function singleUserVerifyDoc($user_id = null)
  {

    return $batchdata = $this->db->table('dbt_user')
    ->select('*')
    ->join('dbt_user_verify_doc', 'dbt_user_verify_doc.user_id = dbt_user.user_id', 'LEFT')
    ->where('dbt_user_verify_doc.user_id', $user_id)
    ->orderBy('dbt_user_verify_doc.id','DESC')
    ->get()
    ->getRow();
  }
	//new function add her from icowallet main
  public function transections_all_sums($user_id = "")
  {
    if ($user_id == '') {
      $user_id = $this->session->userdata('user_id');
    }

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

    $data['roi_amount'] = $this->db->table('earnings')
                ->selectSum('amount')
                ->where('user_id', $user_id)
                ->where('earning_type', 'ROI')
                ->get()
                ->getRow();

    $data['referral_amount'] = $this->db->table('earnings')
                ->selectSum('amount')
                ->where('user_id', $user_id)
                ->where('earning_type', 'REFERRAL')
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
      $data['user'] = $this->db->table('dbt_user')
                ->select('*')
                ->where('id', $user_id)
                ->get()
                ->getRow();
    return  $data;
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
 	
 	public function get_cata_wais_transections($user_id)
	{
		
		// My Payout
                $builder=$this->db->table('earnings');
		$my_payout = $builder->select("sum(amount) as earns2")
                                    ->where('user_id',$user_id)
                                    ->where('earning_type','type2')
                                    ->get()
                                    ->getRow();
		$pay = $my_payout->earns2;

		//Package Commission
		$commission = $builder->select("sum(amount) as earns1")
                                    ->where('user_id',$user_id)
                                    ->where('earning_type','type1')
                                    ->get()
                                    ->getRow();
		$pack_commission = $commission->earns1;

		//user lavel bonus
                $levelbuilder=$this->db->table('user_level');
		$bonus = $levelbuilder->select("sum(bonus) as bonuss")
                                    ->where('user_id',$user_id)
                                    ->get()
                                    ->getRow();
		$team_bonus = $bonus->bonuss;

		//total earning
		@$total_earn = @$pay + @$pack_commission + @$team_bonus;


		//team bonus
                $teambuilder= $this->db->table('team_bonus');
		$teambonus = $teambuilder->select("*")
                                        ->where('user_id',$user_id)
                                        ->get()
                                        ->getRow();

		$sponser_commission = @$teambonus->sponser_commission;
		$team_commission    = @$teambonus->team_commission;
		
		
                $transactionbuilder=$this->db->table('transections');
		$data = $transactionbuilder->select('*')
                                            ->where('user_id',$user_id)
                                            ->where('status',1)
                                            ->get()
                                            ->getResult();

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
				@$dep_f = $dep_f + $deposit->fees;
				$individule['d_fees'] = $dep_f;

				$dep = $dep + $value->amount;
				$individule['deposit'] = $dep;
			}

			if(@$value->transection_category=='withdraw'){

				$withdraw = $this->getFees('withdraw',$value->releted_id);
				@$w_f = $w_f + $withdraw->fees;
				$individule['w_fees'] = $w_f;

				$we = $we+$value->amount;
				$individule['withdraw'] = $we;

			}

			if(@$value->transection_category=='transfer'){

				$transfer = $this->getFees('transfer',$value->releted_id);
				@$t_f = $t_f + $transfer->fees;
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


		$individule['commission']           = @$pack_commission;
		$individule['my_earns']             = @$pay;
		$individule['team_bonus']           = @$team_bonus;
		$individule['team_commission']      = @$team_commission;
		$individule['sponser_commission']   = @$sponser_commission;

                //TOTAL FEES
                //remove under the line d_fees for showing accurate result
		$total_fees = (@$individule['w_fees']+@$individule['t_fees']);

		$individule['balance'] = (@$individule['deposit']+@$total_earn+@$individule['reciver'])-(@$individule['withdraw']+@$individule['investment']+@$individule['transfar']+@$total_fees);

		return $individule;
		
	}
	public function getFees($table,$id)
	{
                $builder = $this->db->table($table);
		return $builder->select('*')
                                ->where($table.'_id',$id)
                                ->get()
                                ->getRow();
	}

	
	
}
