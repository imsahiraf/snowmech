<?php 
namespace App\Modules\Gourl\Controllers\Customer;

class payment_process extends BaseController
{

    public function bitcoin()
    {
        
        if ($this->session->get('deposit')) {
            $data['title']  = display('deposit');
            $data['deposit'] = $this->session->get('deposit');

            //Payment Type specify for callback (deposit/buy/sell etc )
            $this->session->set('payment_type', 'deposit');

            $method  = $data['deposit']->method;
            $data['deposit_data']   = $this->payment->payment_process($data['deposit'], $method);
            if (!$data['deposit_data']) {
                $this->session->setFlashdata('exception', display('this_gateway_deactivated'));
                return redirect()->to(base_url('customer/finance/deposit'));
            }

        }else if($this->session->userdata('buy')){
            $data['title']  = display('buy');
            $data['deposit'] = $this->session->userdata('buy');

                    //Payment Type specify for callback (deposit/buy/sell etc )

            $method                 = $data['deposit']->deposit_method;
            $data['deposit_data']   = $this->payment->payment_process($data['deposit'], $method);
            if (!$data['deposit_data']) {
                $this->session->setFlashdata('exception', display('this_gateway_deactivated'));
                return redirect()->to(base_url('customer/buy/buy_form'));
            }
        } else {
            $this->session->setFlashdata('exception', "Something went wrong!!!");
            return redirect()->to(base_url('customer/deposit/add_deposit'));
        }
        
        $data['content'] = $this->BASE_VIEW . '\payment_process';
        return $this->template->customer_layout($data);
    }

    


}