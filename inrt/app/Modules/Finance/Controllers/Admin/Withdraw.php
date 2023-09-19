<?php namespace App\Modules\Finance\Controllers\Admin;

class Withdraw extends BaseController {
 	
 	
	public function index()
	{  
             
            $data['title'] = display('withdraw_list');
             $data['coininfo']  = $this->common_model->findById('coin_setup', array());

            #-------------------------------#
             #pagination starts
            #-------------------------------#
            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            $data['withdraw'] = $this->common_model->get_all('dbt_withdraw', array(), 'id','desc',20,($page_number-1)*20);
            $total            = $this->common_model->countRow('dbt_withdraw');
            $data['pager']    = $this->pager->makeLinks($page_number, 20, $total); 
            #------------------------
            #pagination ends
            #------------------------
            $data['content'] = $this->BASE_VIEW . '\Withdraw\withdraw_list';
            return $this->template->admin_layout($data);
	}


	public function pending_withdraw()
	{
            
            $data['title']  = display('pending_withdraw');
            $data['coininfo']  = $this->common_model->findById('coin_setup', array());

            #-------------------------------#
            #pagination starts
            #-------------------------------#
            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            $data['withdraw'] = $this->common_model->get_all('dbt_withdraw', array('status'=>2), '','',20,($page_number-1)*20);
            $total            = $this->common_model->countRow('dbt_withdraw', array('status'=>2));
            $data['pager']    = $this->pager->makeLinks($page_number, 20, $total); 
            #------------------------
            #pagination ends
            #------------------------
            $data['content'] = $this->BASE_VIEW . '\Withdraw\pending_withdraw';
            return $this->template->admin_layout($data);
            
	}


    public function confirm_withdraw()
    {
        $set_status   = 1;
        $user_id      = $this->request->getVar('user_id');
        $id           = $this->request->getVar('id');
        $data         = array(
            'success_date' =>date('Y-m-d h:i:s'),
            'status' => $set_status,
        );

        $this->common_model->update('dbt_withdraw', $data, array('user_id'=>$user_id, 'id' => $id));

        $t_data             = $this->common_model->findById('dbt_withdraw', array('id' => $id, 'user_id' => $user_id));

        $userinfo           = $this->common_model->findById('dbt_user', array('user_id' => $user_id));
        $set                = $this->common_model->findById('sms_email_send_setup', array('method' => 'email'));
        $appSetting         = $this->template->setting_data();
        $check_user_balance = $this->common_model->findById('dbt_balance', array('user_id' => $user_id));
        $new_balance = $check_user_balance->balance-(@$t_data->amount+$t_data->fees_amount);

       
        #----------------------------
        #      email verify smtp
        #----------------------------
        $getPost = array(
            'amount'        => $t_data->amount,
            'new_balance'   => $new_balance,
        );
        
        $config_var = array( 
            'template_name' => 'withdraw_success',
            'template_lang' => $appSetting->language == 'english'?'en':'fr',
        );
        $message    = $this->common_model->email_msg_generate($config_var, $getPost);
        $send_email = array(
            'title'         => $appSetting->title,
            'to'            => $this->session->get('email'),
            'subject'       => $message['subject'],
            'message'       => $message['message'],
        );
        $send = $this->common_model->send_email($send_email);
       
        if($send){
                $n = array(
                'user_id'                => $user_id,
                'subject'                => $message['subject'],
                'notification_type'      => 'withdraw',
                'details'                => $message['message'],
                'date'                   => date('Y-m-d h:i:s'),
                'status'                 => '0'
            );
            //notification save
            $this->common_model->save('notifications',$n);    
        }

        #----------------------------
        #      Sms verify
        #----------------------------
   
        $template = array( 
            'name'      => $userinfo->first_name." ".$userinfo->last_name,
            'amount'    => $t_data->amount,
            'new_balance' => $new_balance,
            'date'      => date('d F Y')
        );

        $config_var = array( 
            'template_name' => 'withdraw_success',
            'template_lang' => $appSetting->language == 'english'?'en':'fr',
        );
        $message  = $this->common_model->sms_msg_generate($config_var, $template);
        $send_sms = array(
            'to'        => $userinfo->phone,
            'subject'   => $message['subject'],
            'template'  => $message['message'],
        );

        if (@$userinfo->phone) {
            $send_sms = $this->sms_lib->send($send_sms);

        } else {

            $this->session->setFlashdata('exception', display('there_is_no_phone_number'));
        }

       
                
        if(@$send_sms){
            $message_data = array(
                'sender_id'   => 1,
                'receiver_id' => $userinfo->user_id,
                'subject'     => 'Withdraw',
                'message'     => $message['message'],
                'datetime'    => date('Y-m-d h:i:s'),
            );

            //message save;
            $this->common_model->save('message', $message_data);
        }

        $this->session->setFlashdata('message', 'Withdraw successfully confirmed!');

        return redirect()->to(base_url('backend/withdraw/withdraw_list'));
    }

    public function cancel_withdraw()
    {
        $set_status = 0;
        $user_id    = $this->request->getVar('user_id');
        $id         = $this->request->getVar('id');

        $data = array(
            'cancel_date' =>date('Y-m-d h:i:s'),
            'status'      => $set_status,
        );

        $this->common_model->update('dbt_withdraw', $data, array('id' => $id, 'user_id' => $user_id));
        $this->session->setFlashdata('message', 'Withdraw Cancel successfully!');

        return redirect()->to(base_url('backend/withdraw/withdraw_list'));
    }


        

}
