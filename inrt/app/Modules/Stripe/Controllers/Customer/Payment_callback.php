<?php 
namespace App\Modules\Stripe\Controllers\Customer;


class Payment_callback extends BaseController
{

	public function stripe_confirm($session_id){
		
		
		$deposit = $this->session->get('deposit');
        $builder = $this->db->table('payment_gateway');
		$gateway = $builder->select('*')->where('identity', 'stripe')->where('status',1)->get()->getrow();

		if ($gateway) {

			if (empty($session_id)) {
		        $this->session->setFlashdata('exception', display("Invalid_payment"));
		        return redirect()->to(base_url("customer/finance/deposit"));
		  	}


	      	require_once APPPATH . 'Modules/Stripe/Libraries/stripe/vendor/autoload.php';

	      	$stripe = array(
		        "secret_key"      => @$gateway->private_key,
		        "publishable_key" => @$gateway->public_key
	      	);

	      	\Stripe\Stripe::setApiKey($stripe['secret_key']);

	      	$retrivedata = \Stripe\Checkout\Session::retrieve($session_id);
	      
		    if (!$retrivedata) {
		        $this->session->setFlashdata('exception', display("Server_problem"));
		        return redirect()->to(base_url("customer/finance/deposit"));
		    }

	      	if ($retrivedata->payment_status == "paid") {
		      	$checkstripdata = $this->db->table('dbt_deposit')->where('stripe_session_id', $session_id)->where('status',1)->countAllResults();

		      	if ($checkstripdata>0) {
			        $this->session->setFlashdata('exception', display("Wrong_payment"));
			        return redirect()->to(base_url("customer/finance/deposit"));
		      	}

			

				$payment_type = $this->session->get('payment_type');

		    	// Paypal Tranction log

				if ($payment_type == 'deposit') {	    		
		                                
		            $this->deposit_confirm($session_id);
		            return redirect()->to(base_url('customer/finance/deposit-list'));
		                                    
				}elseif ($payment_type == 'buy') {
		                    
					if ($this->payment_model->create((array)$this->session->get('buy_save'))) {
						$this->session->remove('buy');
						$this->session->remove('buy_save');
						$this->session->remove('deposit');
						$this->session->remove('payment_type');
						$this->session->setFlashdata('message', display('payment_successfully'));
						return redirect()->to(base_url('customer/buy/buy_list'));
					}else{
						$this->session->remove('buy');
						$this->session->remove('deposit');
						$this->session->remove('payment_type');
						$this->session->setFlashdata('exception', display('please_try_again'));
						return redirect()->to(base_url('customer/buy/buy_form'));
		                                                //redirect("customer/buy");
					}

				}elseif ($payment_type == 'sell') {
						# code...

				}else {
						# code...

				}

			}

		}

	}
	
	private function deposit_confirm(){

	    	$payment_type = $this->session->get('payment_type');
	    	$deposit      = $this->session->get('deposit');
	    	
	    	$sdata['deposit']   = (object)$depodata = array(

	            'user_id'        => $deposit->user_id,
	            'amount'         => $deposit->amount,
	            'method'         => $deposit->method,
	            'fees_amount'    => $deposit->fees_amount,
	            'comment'        => $deposit->comment,
	            'status'         => 1,
	            'deposit_date'   => $deposit->deposit_date,
	            'ip'             => $this->request->getIpAddress()
	        );

	    	//Update session
	    	$deposit->status = 1;
	    	$this->session->remove('deposit');

	    	//Find same payment
	    	
	    	$sql = "SELECT * FROM `dbt_deposit` WHERE user_id='".$deposit->user_id."' AND amount ='".$deposit->amount."' AND fees_amount='".$deposit->fees_amount."' AND deposit_date='".$deposit->deposit_date."'";
	        $same_payment = $this->db->query($sql, [])->getRow();

	    	//Store Data On Deposit
	    	if (!$same_payment) {

	    		$userinfo = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));

	    		$this->common_model->save('dbt_deposit', $depodata);
	    		
	    		//User Balance Add
	    		$deposit_balance = $this->payment_model->balanceAdd($deposit);

	    		//User Financial Log
	    		if ($deposit_balance) {
	    			
	    			$depositdata = array(
		                'balance_id'         => $deposit_balance,
		                'user_id'            => $deposit->user_id,
		                'transaction_type'   => 'DEPOSIT',
		                'transaction_amount' => $deposit->amount,
		                'transaction_fees'   => $deposit->fees_amount,
		                'ip'                 => $deposit->ip,
		                'date'               => $deposit->deposit_date
		            );

	    			$this->common_model->save('dbt_balance_log', $depositdata);

	    		}
				
	        	$set = $this->common_model->findById('sms_email_send_setup', array('method' => 'email'));
				$setsms = $this->common_model->findById('sms_email_send_setup', array('method' => 'sms'));
				$appSetting = $this->common_model->findById('setting', array());


				if($set->deposit != NULL){
				    #----------------------------
				    #      email verify smtp
				    #----------------------------
					$getPost = array(
						'amount' => $deposit->currency_symbol." ".$deposit->amount,
					);
					
					$config_var = array( 
		                'template_name' => 'deposit_success',
		                'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
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
							'user_id'           => $this->session->get('user_id'),
							'subject'           => $message['subject'],
							'notification_type' => 'deposit',
							'details'           => $message['message'],
							'date'              => date('Y-m-d h:i:s'),
							'status'            => '0'
						);
						$this->common_model->save('notifications',$n);    
					}
				}

				if($setsms->deposit != NULL){

					$template = array( 

						'name'   => $this->session->get('fullname'),
						'amount' => $deposit->currency_symbol." ".$deposit->amount,
						'date'   => date('d F Y')
					);

					$config_var = array( 
		                'template_name' => 'deposit_success',
		                'template_lang' => $this->template->langSet() == 'english'?'en':'fr',
		            );
		            $message    = $this->common_model->sms_msg_generate($config_var, $template);
		            $send_sms = array(
		                'to'       => $userinfo->phone,
		                'template' => $message['message'],
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
							'subject' 	  => 'Deposit',
							'message' 	  => $message['message'],
							'datetime' 	  => date('Y-m-d h:i:s'),
						);
						$this->common_model->save('message',$message_data);    
					}
				}
				
				unset($_SESSION['payment_type']);
				$this->session->setFlashdata('message', display('payment_successfully'));
				return 1;

			} else {

				unset($_SESSION['payment_type']);
				$this->session->setFlashdata('exception', display('please_try_again'));
				return 2;
			}

	    }


}