<?php namespace App\Modules\Finance\Controllers\Admin;
class Credit extends BaseController {
	
 
    public function index()
    {
        
        $data['title']  =  display('credit_list');
       
        #-------------------------------#
            #pagination starts
        #-------------------------------#
        $page_number          = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
        $data['credit_info']  = $this->common_model->get_all('dbt_deposit', array('status' => 1, 'method' => 'admin'), 'id','desc',10,($page_number-1)*10);
        $total                = $this->common_model->countRow('dbt_deposit', array('status' => 1, 'method' => 'admin'));
        $data['pager']        = $this->pager->makeLinks($page_number, 10, $total, 'default_full');
        #------------------------
        #pagination ends
        #------------------------
        
        $data['content'] = $this->BASE_VIEW . '\Credit\credit_list';
        return $this->template->admin_layout($data);
    } 

    public function add_credit()
    {  

        $data['title']     = display('add_credit');
      
        $this->validation->setRule('user_id', display('user_id'), 'required');
        $this->validation->setRule('amount', display('amount'), 'required');
        $this->validation->setRule('note', display('note'), 'required|trim');

        /*-------------STORE DATA------------*/
        if ($this->request->getMethod() == 'post') {
           
              if ($this->validation->withRequest($this->request)->run()) {

                $checkUser = $this->common_model->findById('dbt_user', array('user_id' => $this->request->getVar('user_id')));
                $coinInfo      = $this->finance_model->get_coin_info();
                if(empty($coinInfo->pair_with)){
                    $this->session->setFlashdata('exception', "Coin is not available");
                    return redirect()->to(base_url('backend/credit/add_credit'));
                }
                if(!empty($checkUser)){

                    $deposit_data = array(
                        'user_id'           => $this->request->getVar('user_id'),
                        'amount'            => $this->request->getVar('amount'),
                        'method'            => 'admin',
                        'fees_amount'       => 0.0,
                        'comment'           => $this->request->getVar('note'),
                        'deposit_date'      => date('Y-m-d H:i:s'),
                        'approved_date'     => date('Y-m-d H:i:s'),
                        'status'            => 1,
                        'ip'                => $this->request->getIPAddress(),
                        'approved_cancel_by'=> 'admin'
                    );
                    $this->common_model->save('dbt_deposit', $deposit_data);

                    $checkbalance = $this->common_model->findById('dbt_balance', array('user_id' => $this->request->getVar('user_id')));
                    
                    if (!$checkbalance) {

                        $balance = array(
                            'user_id'         => $this->request->getVar('user_id'),
                            'balance'         => $this->request->getVar('amount'),
                            'last_update'     => date('Y-m-d H:i:s'),
                        );
                        $insert_id = $this->common_model->save_return_id('dbt_balance', $balance);
                    } else {

                        $new_balance = @$checkbalance->balance + $this->request->getVar('amount');
                        $insert_id   = $checkbalance->id;

                        $newBalanceU['balance'] = $new_balance;
                        $this->common_model->update('dbt_balance', $newBalanceU, array('user_id' => $this->request->getVar('user_id')));
                    }

                    $balance_log = array(

                        'balance_id'           => $insert_id,
                        'user_id'              => $this->request->getVar('user_id'),
                        'transaction_type'     => 'CREDITED',
                        'transaction_amount'   => $this->request->getVar('amount'),
                        'transaction_fees'     => 0,
                        'ip'                   => $this->request->getIPAddress(),
                        'date'                 => date('Y-m-d H:i:s'),
                    );

                    $this->common_model->save('dbt_balance_log', $balance_log);
                    $this->session->setFlashdata('message','Send the amount successfully');
                    return  redirect()->to(base_url('backend/credit/add_credit'));
                } else {

                    $this->session->setFlashdata('exception','Your user invalid, please try again.');
                    return  redirect()->to(base_url('backend/credit/add_credit'));
                }
            } else {

                $this->session->setFlashdata("exception", $this->validation->getErrors());
            }

        } 

        $data['title']  = 'Add Credit';
  
        $data['content'] = $this->BASE_VIEW . '\Credit\add_credit';
        return $this->template->admin_layout($data);
    }

    public function credit_details($id = null)
    {

        $data['title'] = display('credit_info');
        $data['credit_info'] = $this->finance_model->credit_info($id);

        $data['content'] = $this->BASE_VIEW . '\Credit\credit_details';
        return $this->template->admin_layout($data);
    }

    public function user_info_load(){

        $user_id = $this->request->getVar('id');
        $userInfo = $this->common_model->findById('dbt_user', array('user_id' => $user_id));
        echo json_encode($userInfo);
    }

  
	
}
