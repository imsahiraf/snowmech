<?php namespace App\Modules\Finance\Controllers\Admin;


class Deposit extends BaseController {
 	
 
	public function index()
	{  
            
            
		    $data['title'] = display('deposit_list');
            $data['coininfo']  = $this->common_model->findById('coin_setup', array());
           #-------------------------------#
            #pagination starts
           #-------------------------------#
            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            $data['deposit']  = $this->common_model->get_all('dbt_deposit', array(),'id','desc',20,($page_number-1)*20);
            $total            = $this->common_model->countRow('dbt_deposit');
            $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);
            #------------------------
            #pagination ends
            #------------------------

            $data['content'] = $this->BASE_VIEW . '\Deposit\list';
            return $this->template->admin_layout($data);
           
            
	}


	public function pending_deposit()
	{
           
            $data['title']  = display('pending_deposit');
             $data['coininfo']  = $this->common_model->findById('coin_setup', array());
            #-------------------------------#
            #pagination starts
            #-------------------------------#
            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            $data['deposit']  = $this->common_model->get_all('dbt_deposit', array('status' => 0), 'id','asc',20,($page_number-1)*20);
            $total            = $this->common_model->countRow('dbt_deposit', array('status' => 0)); 
            $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);
            #------------------------
            #pagination ends
            #------------------------
            $data['content'] = $this->BASE_VIEW . '\Deposit\list';
            return $this->template->admin_layout($data);
	}

    public function confirm_deposit()
    {

        $user_id      = $this->request->getVar('user_id');
        $id           = $this->request->getVar('id');
        $deposit_data = array(
            'status' => 1,
        );
        $this->common_model->update('dbt_deposit', $deposit_data, array('id' => $id, 'user_id' => $user_id));

        $data = $this->common_model->findById('dbt_deposit', array('id' => $id));
        //User Balance Update
        $check_user_balance = $this->common_model->findById('dbt_balance', array('user_id' => $user_id));

        if ($check_user_balance) {
            $new_balance = $check_user_balance->balance+$data->amount;

            $newBalance = array(
                'balance' => $new_balance,
            );
            $this->common_model->update('dbt_balance', $newBalance, array('user_id' => $user_id));
            //Log Data 
            $depositdata = array(
                'user_id'            => $data->user_id,
                'balance_id'         => $check_user_balance->id,
                'transaction_type'   => 'DEPOSIT',
                'transaction_amount' => $data->amount,
                'transaction_fees'   => $data->fees_amount,
                'ip'                 => $data->ip,
                'date'               => $data->deposit_date
            );
            //Save balance log
            $this->common_model->save('dbt_balance_log', $depositdata);

        } else {

            $new_balance = $data->amount;

            $balance = array(
                'user_id'         => $data->user_id,
                'balance'         => $data->amount,
                'last_update'     => date('Y-m-d h:i:s'),
            );

            //Save new balance
            $balance_id = $this->common_model->save_return_id('dbt_balance', $balance);

            //Log Data 
            $depositdata = array(
                'user_id'            => $data->user_id,
                'balance_id'         => $balance_id,
                'transaction_type'   => 'DEPOSIT',
                'transaction_amount' => $data->amount,
                'transaction_fees'   => $data->fees_amount,
                'ip'                 => $data->ip,
                'date'               => $data->deposit_date
            );
             $this->common_model->save('dbt_balance_log', $depositdata);
        }

        $userdata   = $this->common_model->findById('dbt_user', array('user_id' => $user_id));
        $set        = $this->common_model->findById('sms_email_send_setup',array('method' => 'email'));
        $appSetting = $this->template->setting_data();     

        #-----------------------------------------------------
        if($set->deposit != NULL){
            #----------------------------
            #      email verify smtp
            #----------------------------

            $getPost = array(
                'amount' => $data->amount,
            );
            
            $config_var = array( 
                'template_name' => 'deposit_success',
                'template_lang' => $appSetting->language == 'english'?'en':'fr',
            );
            $message    = $this->common_model->email_msg_generate($config_var, $getPost);
            $send_email = array(
                'title'   => $appSetting->title,
                'to'      => $this->session->get('email'),
                'subject' => $message['subject'],
                'message' => $message['message'],
            );

            $send_email = $this->common_model->send_email($send_email);

            if($send_email){

                    $n = array(

                        'user_id'           => $userdata->user_id,
                        'subject'           => $message['subject'],
                        'notification_type' => 'deposit',
                        'details'           => $message['message'],
                        'date'              => date('Y-m-d h:i:s'),
                        'status'            => '0'
                    );
                //notification save
                $this->common_model->save('notifications',  $n);   
            }

           
            #------------------------------
            #   SMS Sending
            #------------------------------

            $template = array( 
                'name'       => $userdata->first_name." ". $userdata->last_name,
                'amount'     => $data->amount,
                'new_balance'=> $new_balance,
                'date'       => date('d F Y')
            );

            $config_var = array( 
                'template_name' => 'deposit_success',
                'template_lang' => $appSetting->language == 'english'?'en':'fr',
            );
            $message    = $this->common_model->sms_msg_generate($config_var, $template);

          

            $send_sms = array(
                'to'       => $userdata->phone,
                'template' => $message['message'],
            );


            if (@$userdata->phone) {
                $send_sms = $this->sms_lib->send($send_sms);

            } else {
                $this->session->setFlashdata('exception', display('there_is_no_phone_number'));
            }

            if($send_sms){
                $message_data = array(
                    'sender_id'    => 1,
                    'receiver_id'  => $userdata->user_id,
                    'subject'      => $message['subject'],
                    'message'      => $message['message'],
                    'datetime'     => date('Y-m-d h:i:s'),
                );

                //message save;
                $this->common_model->save('message', $message_data);  
            }
        }
        $this->session->setFlashdata('message', 'Deposit successfully confirmed!');
        return redirect()->to(base_url('backend/deposit/pending_deposit'));
    }
	
    public function cancel_deposit()
    {
        $user_id = $this->request->getVar('user_id');
        $id      = $this->request->getVar('id');
        $data = array(
            'status' => 2,
        );

        $this->common_model->update('dbt_deposit', $data, array('id' => $id, 'user_id' => $user_id));
        $this->session->setFlashdata('message', 'Deposit Cancel successfully!');
        return redirect()->to(base_url('backend/deposit/pending_deposit'));
    }

     public function user_info_load(){

        $user_id = $this->request->getVar('id');
        $userInfo = $this->common_model->findById('dbt_user', array('user_id' => $user_id));
        echo json_encode($userInfo);
    }
 

}
