<?php 
namespace App\Modules\Phone\Controllers\Customer;


class Payment_callback extends BaseController
{
	public function phone_confirm(){

		$payment_type = $this->session->get('payment_type');

		if ($payment_type == 'deposit') {
			
			$payment_type 	= $this->session->get('payment_type');
			$deposit 	= $this->session->get('deposit');

			$userdata = array(
				'user_id'           => $deposit->user_id,
				'amount'    => $deposit->amount,
				'method'    => $deposit->method,
				'fees_amount'              => $deposit->fees_amount,
				'comment'          => $deposit->comment,
				'deposit_date'      => $deposit->deposit_date,
				'ip'        => $deposit->ip,
			);   	

	    	//Store Data On Deposit
			if ($this->payment_model->paymentStore($userdata)) {

				$this->session->remove('payment_type');
				$this->session->remove('coininfo');
				$this->session->setFlashdata('message', "Wait for Confirmation");
                return redirect()->to(base_url('customer/finance/deposit'));

			}
			else{
				$this->session->unset_userdata('payment_type');
				$this->session->setFlashdata('exception', display('please_try_again'));
                return redirect()->to(base_url('customer/finance/deposit'));

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

		$this->session->unset_userdata($payment_type);
		$this->session->set_flashdata('message', display('payment_successfully'));
		return redirect()->to(base_url('customer/deposit/show_list'));


	}

	public function phone_cancel(){

		$this->session->set_flashdata('exception', "Payment Canceled/Faild");
		redirect(base_url());    	

	}
	
}