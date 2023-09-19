<?php 
 namespace App\Modules\Finance\Controllers\Customer;

class Finance extends BaseController
{

    public function index()
    {   

        if ($this->session->get('deposit')) {
            $this->session->remove('deposit');
        }

        
        $coinInfo      = $this->finance_model->get_coin_info();
        $data['title'] = display('deposit');

        $data['payment_gateway'] = $this->finance_model->payment_gateway_common();
        $data['coin_setup'] = $coinInfo;
        $data['content'] = $this->BASE_VIEW . '\pages\deposit';
        return $this->template->customer_layout($data);
    }
    public function payment_gateway(){ 

        if ($this->session->get('deposit')) {
            $this->session->remove('deposit');
        }
        
        $this->validation->setRule('deposit_amount', display('deposit_amount'), 'required|numeric');
        $this->validation->setRule('method', display('payment_method'), 'required|alpha');
        $this->validation->setRule('fees', display('fees'), 'required|numeric');
        
        $date           = new \DateTime();
        $deposit_date   = $date->format('Y-m-d H:i:s');
        $method         = $this->request->getVar('method', FILTER_SANITIZE_STRING);  
        $amount = $this->request->getVar('amount', FILTER_SANITIZE_STRING);
        $fees = $this->request->getVar('fees', FILTER_SANITIZE_STRING);
        $comment = $this->request->getVar('comment', FILTER_SANITIZE_STRING);
       
        if ($this->validation->withRequest($this->request)->run()){

            $coindata['coininfo'] = $coinInfo = $this->finance_model->get_coin_info();
            $sdata['deposit'] = (object)$userdata = array(
                'user_id'        => $this->session->get('user_id'),
                'amount'         => $this->request->getPost('deposit_amount',FILTER_SANITIZE_STRING),
                'currency_symbol'=> $coinInfo->pair_with,
                'method'         => $this->request->getPost('method',FILTER_SANITIZE_STRING),
                'fees_amount'    => $this->request->getPost('fees',FILTER_SANITIZE_STRING),
                'comment'        => $comment,
                'status'         => 0,
                'deposit_date'   => $deposit_date,
                'ip'             => $this->request->getIpAddress()
            );
            $this->session->set($sdata);
            $this->session->set($coindata);
            $this->session->set('payment_type','deposit');
            return redirect()->to(base_url("customer/payment_gateway/$method"));
            
        }else{
            if($this->request->getMethod() == 'post'){

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return redirect()->to(base_url('customer/finance/deposit'));
            }
        }
        
    }
    public function deposit_list(){

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['deposit']  = $this->common_model->get_all('dbt_deposit',array('user_id' => $this->session->get('user_id')), 'id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('dbt_deposit', array('user_id' => $this->session->get('user_id')));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['content'] = $this->BASE_VIEW . '\pages\deposit_list';
        return $this->template->customer_layout($data);
    }

    public function fees_load()
    {   
        $amount = $this->request->getPost('amount',FILTER_SANITIZE_STRING); 
        $level = $this->request->getPost('level',FILTER_SANITIZE_STRING); 

        $result = $this->db->table('dbt_fees')
        ->select('fees')
        ->where('level',$level)
        ->get()
        ->getRow();

        $fees = 0;
        if($result){
            $fees = ($amount/100)*$result->fees;
        }

        $new_amount = $amount-$fees;
        echo json_encode(array('fees'=>$fees,'amount'=>$new_amount));    
    }

    public function getdepositgatewaydata()
    {
        $gateway = $this->db->table('payment_gateway')->select('*')->where('identity', 'phone')->where('status',1)->get()->getRow();

        echo json_encode($gateway);
    }

    public function payment_process()
    {
        $data['deposit'] = $this->session->get('deposit');

        //Payment Type specify for callback (deposit/buy/sell etc )
        $this->session->set('payment_type', 'deposit');
         
        $method = $data['deposit']->method;

        $data['deposit_data'] = $this->payment->payment_process($data['deposit'], $method);

        if (!$data['deposit_data']) {

            $this->session->setFlashdata('exception', 'This Gateway Deactivated');
            return redirect()->to(base_url('customer/finance/deposit'));
        }

        $data['coininfo']   = $this->finance_model->get_coin_info();

         $data['content'] = $this->BASE_VIEW . '\pages\payment_process';
        return $this->template->customer_layout($data);
    }

    public function transfer_list(){

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.

       $data['transfer'] = $this->db->table('dbt_transfer')->select('dbt_transfer.id as transfer_id,dbt_transfer.*,dbt_user.*')
        
        ->join('dbt_user','dbt_user.user_id=dbt_transfer.receiver_user_id')
        ->where('dbt_transfer.sender_user_id',$this->session->get('user_id'))
        ->orWhere('dbt_transfer.receiver_user_id',$this->session->get('user_id'))
        ->orderBy('dbt_transfer.date',"DESC")
        ->limit(20,($page_number-1)*20)
        ->get()
        ->getResult();

        $total            = count($data['transfer']);

        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);
        $data['coininfo']   = $this->finance_model->get_coin_info();
    
        $data['content'] = $this->BASE_VIEW . '\transfer\transfar_list';
        return $this->template->customer_layout($data);
    }

    public function transfer(){

        $data['coininfo'] = $this->finance_model->get_coin_info();

        $data['title']   = display('transfer'); 

        $data['content'] = $this->BASE_VIEW . '\transfer\transfar';
        return $this->template->customer_layout($data);
    }



    public function transfer_store()
    {

        $this->validation->setRule('receiver_id', display('receiver_id'), 'required|exact_length[6]'); 
        $this->validation->setRule('amount', display('amount'), 'required|numeric'); 
        $this->validation->setRule('varify_media', 'OTP Send To', 'required|exact_length[1]'); 

        if($this->validation->withRequest($this->request)->run()){

            $amount = $this->request->getPost('amount',FILTER_SANITIZE_STRING);
            if($amount <= 0){
                $this->session->setFlashdata('exception', display('invalid_amount'));
                return redirect()->to(base_url('customer/finance/transfer'));
            }

            $varify_media = $this->request->getPost('varify_media',FILTER_SANITIZE_STRING);
            $receiver_id = $this->request->getPost('receiver_id',FILTER_SANITIZE_STRING);
            $varify_code = $this->randomID();

            $appSetting = $this->common_model->findById('setting', array());

            $userinfo = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));

            // check balance            
            $fees_val = $this->common_model->findById('dbt_fees', array('level' =>'TRANSFER'));
            $blance = $this->common_model->findById('dbt_balance', array('user_id' => $this->session->get('user_id')));

            //Fees in Percent
            $fees = ($amount/100)*@$fees_val->fees;


            #----------------------------
            if(@$blance->balance < $amount+$fees){

                $this->session->setFlashdata('exception', display('balance_is_unavailable'));
                return redirect()->to(base_url('customer/finance/transfer'));

            } else {
                
                if($varify_media==2){

                    #----------------------------
                    #      email verify smtp mail
                    #----------------------------
                    
                    $getPost = array(
                        'amount' => @$amount,
                        'verify_code'   => @$varify_code,
                        'receiver_id'   => @$this->request->getPost('receiver_id'),
                    );

                    $config_var = array( 
                        'template_name' => 'transfer_verification',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->email_msg_generate($config_var, $getPost);
                    $send_email = array(
                        'title'         => $appSetting->title,
                        'to'            => $userinfo->email,
                        'subject'       => $message['subject'],
                        'message'       => $message['message'],
                    );

                    $code_send = $this->common_model->send_email($send_email);

                    #-----------------------------

                } else {

                    #----------------------------
                    #      SMS verify
                    #----------------------------
                    $template = array( 

                        'name'          => $this->session->get('fullname'),
                        'amount'        => $amount,
                        'receiver_id'   => $receiver_id,
                        'code'          => $varify_code
                    );

                    $config_var = array( 
                        'template_name' => 'transfer_verification',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->sms_msg_generate($config_var, $template);
                    $sendsms = array(
                        'to'        => $userinfo->phone,
                        'template'  => $message['message'],
                    );
                    #------------------------------
                    #   SMS Sending
                    #------------------------------
                    if (@$userinfo->phone) {

                        $code_send = $this->sms_lib->send($sendsms);
                    } else {

                        $this->session->setFlashdata('exception', display('there_is_no_phone_number'));
                    }

                    if(@$code_send){
                        $message_data = array(
                            'sender_id'   => 1,
                            'receiver_id' => @$userinfo->user_id,
                            'subject'     => $message['subject'],
                            'message'     => $message['message'],
                            'datetime'    => date('Y-m-d h:i:s'),
                        );
                        $this->common_model->save('message',$message_data);    
                    }

                }


                if(isset($code_send)){                    

                    $transfar = array(

                        'sender_user_id' => trim($this->session->get('user_id')),
                        'receiver_user_id' => trim($this->request->getPost('receiver_id')),
                        'amount' => $this->request->getPost('amount'),
                        'fees' => $fees,
                        'request_ip' => $this->request->getIpAddress(),
                        'date' => date('Y-m-d h:i:s'),
                        'comments' => $this->request->getPost('comments'),
                        'status' => 1,

                    );

                    $varify_data = array(

                        'ip_address' => $this->request->getIpAddress(),
                        'user_id' => $this->session->get('user_id'),
                        'session_id' => $this->session->get('isLogIn'),
                        'verify_code' => $varify_code,
                        'data' => json_encode($transfar)

                    );

                    $result = $this->common_model->save_return_id('dbt_verify', $varify_data);
                    return redirect()->to(base_url('customer/finance/transfer-confirm/'.$result));
                } 
            }

        } else {

            if($this->request->getMethod() == 'post'){

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return redirect()->to(base_url('customer/finance/transfer'));
            }
        }
        $data['coininfo'] = $this->finance_model->get_coin_info();

        $data['content'] = $this->BASE_VIEW . '\transfer\transfar';
        return $this->template->customer_layout($data);

    }

    public function transfer_confirm($id = null)
    {

        $data['v'] = $this->common_model->findById('dbt_verify', array('id'=>$id, 'session_id' => $this->session->get('isLogIn')));

        if($data['v']!=NULL){
            $data['title']   = display('confirm_transfer');

        } else {

            return redirect()->to(base_url('customer/finance/transfer'));
        }

        $receiver_id = json_decode($data['v']->data);
        $data['user'] = $this->db->table('dbt_user')->select('*')->where('user_id', $receiver_id->receiver_user_id)->get()->getRow();


        $data['title']   = display('transfer'); 
        $data['coininfo'] = $this->finance_model->get_coin_info();

        $data['content'] = $this->BASE_VIEW . '\transfer\confirm_transfer';
        return $this->template->customer_layout($data);

    }


    public function transfer_verify()
    {

        $code = $this->request->getPost('code',FILTER_SANITIZE_STRING);
        $id = $this->request->getPost('id',FILTER_SANITIZE_STRING);

        $data = $this->db->table('dbt_verify')
            ->select('*')
            ->where('verify_code',$code)
            ->where('id',$id)
            ->where('session_id',$this->session->get('isLogIn'))
            ->where('status', 1)
            ->get()
            ->getRow();

            $userinfo = $this->common_model->findById('dbt_user', array('user_id'=>$this->session->get('user_id')));

            if($data != NULL) {

                $t_data = ((array) json_decode($data->data));

                //Sender Balance Update
                $check_user_balance = $this->db->table('dbt_balance')->select('*')->where('user_id', $this->session->get('user_id'))->get()->getrow();
                $new_balance = $check_user_balance->balance-($t_data['amount']+(float)@$t_data['fees']);
                $this->common_model->update('dbt_balance', array('balance' => $new_balance), array('user_id' =>$this->session->get('user_id')));


                //User Financial Log
                $transfertdata = array(
                    'user_id'            => $t_data['sender_user_id'],
                    'balance_id'         => $check_user_balance->id,
                    'transaction_type'   => 'TRANSFER',
                    'transaction_amount' => $t_data['amount'],
                    'transaction_fees'   => $t_data['fees'],
                    'ip'                 => $t_data['request_ip'],
                    'date'               => $t_data['date']
                );
                $this->common_model->save('dbt_balance_log', $transfertdata);

                //Recever Balance Update
                $check_recever_balance = $this->db->table('dbt_balance')->select('*')->where('user_id', $t_data['receiver_user_id'])->get()->getRow();
                if ($check_recever_balance) {
                    $new_balance_recever = @$check_recever_balance->balance+$t_data['amount'];
                
                    $this->common_model->update('dbt_balance', array('balance' => $new_balance_recever), array('user_id' =>$t_data['receiver_user_id']));
                    //Recever Financial Log
                    $receiveddata = array(
                        'user_id'            => $t_data['receiver_user_id'],
                        'balance_id'         => $check_recever_balance->id,
                        'transaction_type'   => 'RECEIVED',
                        'transaction_amount' => $t_data['amount'],
                        'transaction_fees'   => $t_data['fees'],
                        'ip'                 => $t_data['request_ip'],
                        'date'               => $t_data['date']
                    );

                    $this->common_model->save('dbt_balance_log', $receiveddata);
                } else {

                    $transfar_recever = array(
                        'user_id' => $t_data['receiver_user_id'],
                        'balance' => $t_data['amount'],
                        'last_update' => date('Y-m-d h:i:s'),
                    );

                    //$this->common_model->save('dbt_balance', $transfar_recever);
                    $recever_balance_id = $this->common_model->save_return_id('dbt_balance', $transfar_recever);
                    //Recever Financial Log
                    $receiveddata = array(
                        'user_id'            => $t_data['receiver_user_id'],
                        'balance_id'         => $recever_balance_id,
                        'transaction_type'   => 'RECEIVED',
                        'transaction_amount' => $t_data['amount'],
                        'transaction_fees'   => $t_data['fees'],
                        'ip'                 => $t_data['request_ip'],
                        'date'               => $t_data['date']
                    );

                    $this->common_model->save('dbt_balance_log', $receiveddata);
                }

                $resultid = $this->common_model->save_return_id('dbt_transfer', $t_data);

                $appSetting = $this->common_model->findById('setting', array());

                $transections_data = array(
                    'user_id'                   => $this->session->get('user_id'),
                    'transection_category'      => 'TRANSFER',
                    'releted_id'                => $resultid,
                    'amount'                    => $t_data['amount'],
                    'comments'                  => $t_data['comments'],
                    'transection_date_timestamp'=> date('Y-m-d h:i:s')
                );

                $transections_reciver_data = array(
                    'user_id'                   => $t_data['receiver_user_id'],
                    'transection_category'      => 'RECEIVED',
                    'releted_id'                => $resultid,
                    'amount'                    => $t_data['amount'],
                    'comments'                  => $t_data['comments'],
                    'transection_date_timestamp'=> date('Y-m-d h:i:s')
                );

                $this->common_model->update('dbt_verify', array('status' => 0), array('id' => $id, 'session_id'=>$this->session->get('isLogIn')));

                $set_email = $this->common_model->findById('sms_email_send_setup', array('method' =>'email'));
                if($set_email->transfer!=NULL){

                    #----------------------------
                    #      email verify smtp
                    #----------------------------
                    $post = array(

                        'title'           => $appSetting->title,
                        'subject'           => display('transfer'),
                        'to'                => $this->session->userdata('email'),
                        'message'           => 'You successfully transfer The amount $'.$t_data['amount'].' to the account '.$t_data['receiver_user_id'].'. Your new balance is $'.$new_balance
                       
                    );
                    $send_email = $this->common_model->send_email($post);

                    $getPost = array(
                        'amount'        => @$t_data['amount'],
                        'new_balance'   => @$new_balance,
                        'receiver_id'   => $t_data['receiver_user_id'],
                    );

                    $config_var = array( 
                        'template_name' => 'transfer_success',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->email_msg_generate($config_var, $getPost);
                    $send_email_data = array(

                        'title'         => $appSetting->title,
                        'to'            => $userinfo->email,
                        'subject'       => $message['subject'],
                        'message'       => $message['message'],
                    );

                    $send_email = $this->common_model->send_email($send_email_data);


                    if($send_email){

                        $n = array(
                            'user_id'                => $this->session->get('user_id'),
                            'subject'                => display('transfer'),
                            'notification_type'      => 'TRANSFER',
                            'details'                => 'You successfully transfer The amount $'.$t_data['amount'].' to the account '.$t_data['receiver_user_id'].'. Your new balance is $'.$new_balance,
                            'date'                   => date('Y-m-d h:i:s'),
                            'status'                 => '0'
                        );
                        $this->common_model->save('notifications',$n);    
                    }
                }

                $set_sms = $this->common_model->findById('sms_email_send_setup', array('method' =>'sms'));
                if($set_sms->transfer != NULL){
                    #------------------------------
                    #   SMS Sending Confirmation
                    #------------------------------
                    $template = array( 
                   
                        'name'       => $this->session->get('fullname'),
                        'amount'     =>$t_data['amount'],
                        'new_balance'=>$new_balance,
                        'receiver_id'=>$t_data['receiver_user_id'],
                    );

                    $config_var = array( 
                        'template_name' => 'transfer_success',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->sms_msg_generate($config_var, $template);
                    $send_sms = array(
                        'to'        => @$userinfo->phone,
                        'template'  => $message['message'],
                    );
                    #------------------------------
                    #   SMS Sending
                    #------------------------------
                    if (@$userinfo->phone) {
                        $send_sms = $this->sms_lib->send($send_sms);

                    } else {

                        $this->session->setFlashdata('exception', display('there_is_no_phone_number'));
                    }

                    if(@$send_sms){
                        $message_data = array(
                            'sender_id'   => 1,
                            'receiver_id' => $this->session->get('user_id'),
                            'subject'     => $message['subject'],
                            'message'     => $message['message'],
                            'datetime'    => date('Y-m-d h:i:s'),
                        );
                        $this->common_model->save('message',$message_data);    
                    }
                }

                echo $id;

            } else {

                echo '';
            }
    }

    public function transfer_details($id=NULL)
    {

        $data['my_info'] = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));
        
        $data['v'] = $this->db->table('dbt_verify')->select('*')->where('id', $id)->where('session_id', $this->session->get('isLogIn'))->where('user_id', $this->session->get('user_id'))->where('status', 0)->get()->getRow();
       
        if($data['v'] != NULL){

            $datas = (json_decode($data['v']->data)); 
            $data['u'] = $this->db->table('dbt_user')->select('user_id,first_name,last_name,email,phone')->where('user_id',@$datas->receiver_user_id)->get()->getRow();
        }

        $data['coininfo'] = $this->finance_model->get_coin_info();
        $data['settings'] = $this->common_model->findById('setting', array());
     
        $data['content'] = $this->BASE_VIEW . '\transfer\transfer_details';
        return $this->template->customer_layout($data);
    }
    public function get_send($id){
		return $this->db->table('dbt_transfer')->select('dbt_transfer.*,dbt_user.*')
		->join('dbt_user','dbt_user.user_id=dbt_transfer.receiver_user_id')
		->where('dbt_transfer.sender_user_id',$this->session->get('user_id'))
		->where('dbt_transfer.id',$id)
		->get()->getRow();
	}
    public function send_details($id=NULL)
    {

        $data['title']   = display('transfar_recite'); 
        $data['u']    = $this->get_send($id);
        $data['my_info'] = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));
        $data['coininfo'] = $this->finance_model->get_coin_info();
        $data['content'] = $this->BASE_VIEW . '\transfer\transfer_details';
        return $this->template->customer_layout($data);

    }
    public function receive_details($id=NULL)
    {

        $data['title']   = display('transfar_recite'); 
        $data['settings'] = $this->common_model->findById('setting', array());
        $data['send']    = $this->finance_model->get_recieved($id);
        $data['my_info'] = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));
        $data['coininfo'] = $this->finance_model->get_coin_info();

        $data['content'] = $this->BASE_VIEW . '\transfer\recived_recite';
        return $this->template->customer_layout($data);
    
    }

    public function checke_reciver_id()
    {   
        $receiver_id = $this->request->getPost('receiver_id',FILTER_SANITIZE_STRING); 
        
        $result = $this->db->table('dbt_user')
        ->select('*')
        ->where('user_id',$receiver_id)
        ->get();

       echo $result->resultID->num_rows;
    }


    public function withdraw_list(){

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['withdraw']  = $this->common_model->get_all('dbt_withdraw',array('user_id' => $this->session->get('user_id')), 'id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('dbt_withdraw', array('user_id' => $this->session->get('user_id')));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

      
        $data['content'] = $this->BASE_VIEW . '\withdraw\withdraw_list';
        return $this->template->customer_layout($data);
    }

    public function withdraw()
    {   

        $data['title']   = display('withdraw');


        $this->validation->setRule('amount', display('amount'), 'required');
        $this->validation->setRule('varify_media', display('otp_send_to'), 'required');

        if($this->request->getPost('method', FILTER_SANITIZE_STRING)=='coinpayment')
        {
            $this->validation->setRule('walet_address', display('your_address'), 'required');
        } else {
            $this->validation->setRule('walletid', display('wallet_id'), 'required');
        }
       
        if($this->validation->withRequest($this->request)->run()){

            $amount = $this->request->getPost('amount', FILTER_SANITIZE_STRING);
            if($amount <= 0){
                $this->session->setFlashdata('exception', display('invalid_amount'));
                return redirect()->to(base_url('customer/finance/withdraw'));
            }
            

            $varify_media   = $this->request->getPost('varify_media', FILTER_SANITIZE_STRING);
            
            $appSetting = $this->common_model->findById('setting', array());

            $varify_media = $this->request->getPost('varify_media', FILTER_SANITIZE_STRING);
            $walletid       = $this->request->getPost('walletid', FILTER_SANITIZE_STRING);
            $varify_code = $this->randomID();
           
            $userinfo = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));

            // check balance            
            $fees_val   = $this->common_model->findById('dbt_fees', array('level' => 'WITHDRAW'));
            $blance     = $this->common_model->findById('dbt_balance', array('user_id' => $this->session->get('user_id')));

            //Fees in Percent
            $fees = ($amount/100)*@$fees_val->fees;

            #----------------------------
            if($blance->balance < $amount+$fees){

                $this->session->setFlashdata('exception', display('balance_is_unavailable'));
                return redirect()->to(base_url('customer/finance/withdraw'));

            } else {

                if($varify_media==2){

                #----------------------------
                #      email verify smtp
                #----------------------------
                $getPost = array(
                    'amount' => @$amount,
                    'varify_code'   => @$varify_code,
                );

                $config_var = array( 
                    'template_name' => 'withdraw_verification',
                    'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                );
                $message    = $this->common_model->email_msg_generate($config_var, $getPost);
                $send_email = array(
                    'title'         => $appSetting->title,
                    'to'            => $userinfo->email,
                    'subject'       => $message['subject'],
                    'message'       => $message['message'],
                );
                $code_send = $this->common_model->send_email($send_email);

               
                } else {
                    #----------------------------
                    #      Sms verify
                    #---------------------------- 
                    $template = array( 

                        'name'   => $this->session->get('fullname'),
                        'amount' => $this->request->getPost('amount', FILTER_SANITIZE_STRING),
                        'code'   => $varify_code,
                        'date'   => date('d F Y')
                    );

                    $config_var = array( 
                        'template_name' => 'withdraw_verification',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->sms_msg_generate($config_var, $template);
                    $send_sms = array(
                        'to'        => $userinfo->phone,
                        'template'  => $message['message'],
                    );
                    #------------------------------
                    #   SMS Sending
                    #------------------------------
                    if (@$userinfo->phone) {
                        $code_send = $this->sms_lib->send($send_sms);

                    } else {

                        $this->session->setFlashdata('exception', display('there_is_no_phone_number'));
                    }
                }


                if(isset($code_send)){

                    // get withdraw fees                    

                    if($this->request->getPost('method', FILTER_SANITIZE_STRING)=="coinpayment"){

                        $wallet_id = $this->request->getPost('walet_address', FILTER_SANITIZE_STRING);

                    } else {

                        $wallet_id = $this->request->getPost('walletid', FILTER_SANITIZE_STRING);
                    }

                    $withdraw = array(

                        'user_id'   => $this->session->get('user_id'),
                        'wallet_id' => $wallet_id,
                        'amount'    => $this->request->getPost('amount', FILTER_SANITIZE_STRING),
                        'method' => $this->request->getPost('method', FILTER_SANITIZE_STRING),
                        'fees_amount' => $fees,                        
                        'comment' => '',    
                        'request_date' => date('Y-m-d h:i:s'),                    
                        'status' => 2,                    
                        'ip' => $this->request->getIpAddress(),
                    );


                    $varify_data = array(

                        'ip_address'    => $this->request->getIpAddress(),
                        'user_id'       => $this->session->get('user_id'),
                        'session_id'    => $this->session->get('isLogIn'),
                        'verify_code'   => $varify_code,
                        'data'          => json_encode($withdraw)

                    );

                    $resultId = $this->common_model->save_return_id('dbt_verify', $varify_data);
                 
                    return redirect()->to(base_url('customer/finance/withdraw-confirm/'.$resultId));
                }  
            }     

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return redirect()->to(base_url('customer/finance/withdraw'));
            }
        }

        $data['payment_gateway'] = $this->finance_model->payment_gateway_common();
        $data['coininfo'] = $this->finance_model->get_coin_info();

        $data['content'] = $this->BASE_VIEW . '\pages\withdraw';
        return $this->template->customer_layout($data);
    }

    public function withdraw_details($id = NULL)
    {
        $user_id            = $this->session->get('user_id');
        $data['title']      = display('withdraw_details');

        $data['my_info']    = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));
        $data['withdraw']   = $this->common_model->findById('dbt_withdraw', array('id' => $id, 'user_id' => $this->session->get('user_id')));

        $data['module']     = "Customer";
        $data['coininfo']   = $this->finance_model->get_coin_info(); 
        $data['settings']   = $this->common_model->findById('setting', array());
        $data['content'] = $this->BASE_VIEW . '\withdraw\withdraw_details';
        return $this->template->customer_layout($data);

    }

    public function walletid()
    {   
        $method = $this->request->getPost('method',FILTER_SANITIZE_STRING); 
        $user_id = $this->session->get('user_id');
       
        $result = $this->db->table('dbt_payout_method')
            ->select('*')
            ->where('method',$method)
            ->where('user_id',$user_id)
            ->get()
            ->getRow();
            echo json_encode($result);
    }

    /*
    |-----------------------------------
    |   confirm_withdraw
    |-----------------------------------
    */

    public function withdraw_confirm($id = null)
    {

       $data['v'] = $this->common_model->findById('dbt_verify', array('id' =>$id, 'session_id' => $this->session->get('isLogIn')));

        if($data['v']!=NULL){

            $data['title']   = display('confirm_withdraw');
            
        } else {

           return redirect()->to(base_url('customer/finance/withdraw'));
        }

        $data['title']    = display('withdraw');
        $data['coininfo'] = $this->finance_model->get_coin_info(); 
        
        $data['content'] = $this->BASE_VIEW . '\pages\confirm_withdraw';
        return $this->template->customer_layout($data);
    }

    public function withdraw_verify()
    {


        $code   = $this->request->getPost('code',FILTER_SANITIZE_STRING);
        $id     = $this->request->getPost('id',FILTER_SANITIZE_STRING);

        // check verify code
        $data = $this->db->table('dbt_verify')
                        ->select('*')
                        ->where('verify_code',$code)
                        ->where('id', $id)
                        ->where('session_id',$this->session->get('isLogIn'))
                        ->where('status',1)
                        ->get()
                        ->getRow();

        $userinfo = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));


        if($data != NULL) {


            $t_data = ((array) json_decode($data->data));

            $wdstatus  = $this->finance_model->coinpayment_withdraw();

            if($t_data['method']== "coinpayment" && $wdstatus==1){
                 
                $method = $t_data['method'];
                $withdraw_result = $this->finance_model->payment_withdraw($t_data,$method);

                if($withdraw_result['error']=='ok'){

                    $txn_id = $withdraw_result['result']['id'];
                    $t_data['comment'] = $txn_id;

                    $result = $this->common_model->save_return_id('dbt_withdraw', $t_data);

                } else {

                    $this->session->setFlashdata("exception",$withdraw_result);
                }
            } else {

                $result = $this->common_model->save_return_id('dbt_withdraw', $t_data);

                $appSetting = $this->common_model->findById('setting', array());

                    
                    $check_user_balance = $this->db->table('dbt_balance')->select('*')->where('user_id', $this->session->get('user_id'))->get()->getRow();
                    $new_balance = $check_user_balance->balance-($t_data['amount'] + $t_data['fees_amount']);
                   
                    $this->common_model->update('dbt_balance', array('balance' => $new_balance), array('user_id' => $this->session->get('user_id')));

                    //User Financial Log
                    if ($check_user_balance) {

                        $depositdata = array(

                            'user_id'            => $t_data['user_id'],
                            'balance_id'         => $check_user_balance->id,
                            'transaction_type'   => 'WITHDRAW',
                            'transaction_amount' => $t_data['amount'],
                            'transaction_fees'   => $t_data['fees_amount'],
                            'ip'                 => $t_data['ip'],
                            'date'               => $t_data['request_date']
                        );

                        $this->common_model->save('dbt_balance_log', $depositdata);
                    }


                    #----------------------------
                    #      email verify smtp
                    #----------------------------
                    $getPost = array(

                        'amount' => @$t_data['amount'],
                        'new_balance'   => @$new_balance,
                    );

                    $config_var = array( 
                        'template_name' => 'withdraw_success',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->email_msg_generate($config_var, $getPost);
                    $send_email = array(
                        'title'         => $appSetting->title,
                        'to'            => $userinfo->email,
                        'subject'       => $message['subject'],
                        'message'       => $message['message'],
                    );
                    $send = $this->common_model->send_email($send_email);


                    #----------------------------
                    #      Sms verify
                    #----------------------------
                    $template = array( 

                        'name'          => $this->session->get('fullname'),
                        'amount'        => $t_data['amount'],
                        'new_balance'   => $new_balance,
                        'date'          => date('d F Y')
                    );

                    $config_var = array( 
                        'template_name' => 'withdraw_success',
                        'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
                    );
                    $message    = $this->common_model->sms_msg_generate($config_var, $template);
                    $send_sms = array(
                        'to'        => $userinfo->phone,
                        'template'  => $message['message'],
                    );
                    #------------------------------
                    #   SMS Sending
                    #------------------------------
                    if (@$userinfo->phone) {
                        $send_sms = $this->sms_lib->send($send_sms);

                    } else {

                        $this->session->setFlashdata('exception', display('there_is_no_phone_number'));
                    }

            }
           
            $this->common_model->update('dbt_verify', array('status' => 0), array('id' => $id, 'session_id' => $this->session->get('isLogIn')));

            $this->session->setFlashdata('message', display('withdraw_successfull'));

            echo $result;


        } else {

            echo '';
        }
        
    } 

    public function transaction(){

        $data           = $this->finance_model->transections_all_sums($this->session->get('user_id'));
        $page_number          = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['transection']  = $this->common_model->get_all('dbt_balance_log',array('user_id' => $this->session->get('user_id')), 'log_id', 'desc', 20,($page_number-1)*20);
        $total                = $this->common_model->countRow('dbt_balance_log', array('user_id' => $this->session->get('user_id')));
        $data['pager']        = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('transection');
        $data['coin_setup'] = $this->finance_model->get_coin_info();

        $data['content'] = $this->BASE_VIEW . '\pages\transection';
        return $this->template->customer_layout($data);
    }

    /*
    |-----------------------------------
    |   Bitcoin Settings View
    |-----------------------------------
    */
    public function payment_method_setting()
    {   
        $user_id = $this->session->get('user_id');

        $data['bitcoin']    = $this->db->table('dbt_payout_method')->select('*')->where('user_id',$user_id)->where('method','bitcoin')->get()->getRow();
        $data['payeer']     = $this->db->table('dbt_payout_method')->select('*')->where('user_id',$user_id)->where('method','payeer')->get()->getRow();
        $data['phone']      = $this->db->table('dbt_payout_method')->select('*')->where('user_id',$user_id)->where('method','phone')->get()->getRow();
        $data['paypal']     = $this->db->table('dbt_payout_method')->select('*')->where('user_id',$user_id)->where('method','paypal')->get()->getRow();
        $data['stripe']     = $this->db->table('dbt_payout_method')->select('*')->where('user_id',$user_id)->where('method','stripe')->get()->getRow();

        $data['content'] = $this->BASE_VIEW . '\pages\bitcoin_settings';
        return $this->template->customer_layout($data);
    }

    /*
    |-----------------------------------
    |   Payeer Settings View
    |-----------------------------------
    */
    public function payment_method_update($method=NULL)
    { 

        $wallet_id = $this->request->getPost('wallet_id',FILTER_SANITIZE_STRING); 
        $user_id   = $this->session->get('user_id');

        if($method != NULL) {

            $data = array('user_id'=>$user_id,'method'=>$method,'wallet_id'=>$wallet_id);
            $check = $this->db->table('dbt_payout_method')->select('*')->where('user_id',$user_id)->where('method',$method)->get()->getRow();

            if($check != NULL) {
            
               $this->common_model->update('dbt_payout_method', $data, array('user_id' => $user_id, 'method' => $method));

            } else {
              
                $this->common_model->save('dbt_payout_method', $data); 
            }

            $this->session->setFlashdata('message',display('update_successfully')); 

        } 
        
       return redirect()->to(base_url('customer/finance/payment-method-setting'));
    }


    /*
    |----------------------------------------------
    |        id genaretor
    |----------------------------------------------     
    */
    public function randomID($mode = 2, $len = 6)
    {
        $result = "";
        if($mode == 1):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 2):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        elseif($mode == 3):
            $chars = "abcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 4):
            $chars = "0123456789";
        endif;

        $charArray = str_split($chars);
        for($i = 0; $i < $len; $i++) {
                $randItem = array_rand($charArray);
                $result .="".$charArray[$randItem];
        }
        return $result;
    }
}