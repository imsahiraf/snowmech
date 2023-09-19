<?php namespace App\Modules\Gourl\Controllers\Customer;


class Payment_callback extends BaseController
{

	public function bitcoin_confirm($orderid = null){

			// Bitcoin Tranction log
			$payment_type 	= $this->session->get('payment_type');
			$paymentID 		= $this->session->get('paymentID');
			$deposit      	= $this->db->table('crypto_payments')->select('*')->where('orderID', $orderid)->get()->getRow();

			if ($payment_type == 'deposit' && $deposit) {
				
				$userinfo = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));

				//Affilition Bonus
				$set        = $this->common_model->findById('sms_email_send_setup',array('method' => 'email'));
				$setsms     = $this->common_model->findById('sms_email_send_setup',array('method' => 'sms'));
				$appSetting = $this->common_model->findById('setting',array());

				if($set->deposit != NULL){
				    #----------------------------
				    #      email verify smtp
				    #----------------------------

					$getPost = array(
						'amount' => $deposit->coinLabel.' '.$deposit->amount,
					);

					$config_var = array( 
                        'template_name' => 'deposit_success',
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
                }

                if($setsms->deposit != NULL){

					if($send_email){
						$n = array(
							'user_id'           => $userinfo->user_id,
							'subject'           => $message['subject'],
							'notification_type' => 'deposit',
							'details'           => $message['message'],
							'date'              => date('Y-m-d h:i:s'),
							'status'            => '0'
						);
						$this->common_model->save('notifications',$n);    
					}

					$template = array( 

						'name'   => $this->session->get('fullname'),
						'amount' => $deposit->coinLabel." ".$deposit->amount,
						'date'   => date('d F Y')
					);

					$config_var = array( 
                        'template_name' => 'deposit_success',
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

					if(@$send_sms){
						$message_data = array(
							'sender_id'   => 1,
							'receiver_id' => @$userinfo->user_id,
							'subject' 	  => $message['subject'],
							'message' 	  => $message['message'],
							'datetime' 	  => date('Y-m-d h:i:s'),
						);
						$this->common_model->save('message',$message_data);    
					}
				}
				unset($_SESSION['payment_type']);
				unset($_SESSION['deposit']);

				$this->session->setFlashdata('message', display('payment_successfully'));
				return redirect()->to(base_url('customer/finance/deposit-list'));
				//here remove deposit_confirm method because it was commmented

			}elseif ($payment_type == 'buy') {
				# code...

			}elseif ($payment_type == 'sell') {
				# code...

			}else {
				# code...

			}

		}

		public function gourl_callback(){
			require FCPATH.'app/Modules/Gourl/Libraries/gourl/lib/cryptobox.callback.php';

		}

		public function bitcoin_cancel(){

			$this->session->set_flashdata('exception', display('payment_cancel'));
			return redirect()->to(base_url('/customer/finance/deposit'));
		}

}