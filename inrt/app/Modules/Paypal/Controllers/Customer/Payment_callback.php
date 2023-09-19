<?php 
namespace App\Modules\Paypal\Controllers\Customer;


class Payment_callback extends BaseController
{
	public function paypal_confirm(){

		if (isset($_GET['paymentId'])) {
                        
            $builder = $this->db->table('payment_gateway');
			$gateway = $builder->select('*')->where('identity', 'paypal')->where('status',1)->get()->getrow();

			if ($gateway) {

				require APPPATH.'Modules/Paypal/Libraries/paypal/vendor/autoload.php';

	            // After Step 1
				$apiContext = new \PayPal\Rest\ApiContext(
                                new \PayPal\Auth\OAuthTokenCredential(
                                @$gateway->public_key,     // ClientID
                                @$gateway->private_key     // ClientSecret
                    )
				);

	            // Step 2.1 : Between Step 2 and Step 3
				$apiContext->setConfig(
					array(
						'mode'              => @$gateway->secret_key,
						'log.LogEnabled'    => true,
						'log.FileName'      => 'PayPal.log',
						'log.LogLevel'      => 'FINE'
					)
				);

	            // Get payment object by passing paymentId
				$paymentId = $_GET['paymentId'];

				$payment = \PayPal\Api\Payment::get($paymentId, $apiContext);
				$payerId = $_GET['PayerID'];

	            // Execute payment with payer id
				$execution = new \PayPal\Api\PaymentExecution();
				$execution->setPayerId($payerId);

				try {
	              // Execute payment
					$result = $payment->execute($execution, $apiContext);

					$subtotal = $payment->transactions[0]->related_resources[0]->sale->amount->details->subtotal;


					if ($result) {
						$result = $payment->execute($execution, $apiContext);

						$subtotal = $payment->transactions[0]->related_resources[0]->sale->amount->details->subtotal;


						if ($result) {
							
							$payment_type = $this->session->get('payment_type');

							if ($payment_type == 'deposit') {

								$deposit = $this->session->get('deposit');

								
								$response = $this->deposit_confirm();

								if($response == 1){

									return redirect()->to(base_url("customer/finance/deposit-list"));

								} else if($response == 2){

									return redirect()->to(base_url('/deposit'));
								}
                                        
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
                                                    }
						}elseif ($payment_type == 'sell') {
							# code...

						}else {
							# code...

						}
					}

					}
				} catch (PayPal\Exception\PayPalConnectionException $ex) {
					echo $ex->getCode();
					echo $ex->getData();
					die($ex);

				} catch (Exception $ex) {
					die($ex);

				}
			}

		}

	}


	public function paypal_cancel(){

		$this->session->setFlashdata('exception', "Payment Canceled/Faild");
		return redirect()->to(base_url('customer/finance/deposit'));


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