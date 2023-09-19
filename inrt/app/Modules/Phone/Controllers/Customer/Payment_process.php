<?php 
namespace App\Modules\Phone\Controllers\Customer;

class payment_process extends BaseController
{

    

    

    public function phone()
    {
       
        $data['title']  = display('deposit');
        if ($this->request->getVar('method') == 'phone') {
            $mobiledata =  array(
                'om_name'        => $this->request->getVar('om_name', FILTER_SANITIZE_STRING),
                'om_mobile'      => $this->request->getVar('om_mobile', FILTER_SANITIZE_STRING),
                'transaction_no' => $this->request->getVar('transaction_no', FILTER_SANITIZE_STRING),
                'idcard_no'      => $this->request->getVar('idcard_no', FILTER_SANITIZE_STRING),
            );

            $comment = json_encode($mobiledata);

        }
       
        if ($this->session->get('deposit')) {
            $data['deposit'] = $this->session->get('deposit');
            $data['coininfo'] = $this->session->get('coininfo');
            if (!$data['coininfo']->name) {
                $this->session->setFlashdata('exception', "Coin is not available");
                return redirect()->to(base_url('customer/finance/deposit'));
            }

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
            $data['deposit'] = $this->session->get('buy');

            //Payment Type specify for callback (deposit/buy/sell etc )

            $method                 = $data['deposit']->method;
            $data['deposit_data']   = $this->payment->payment_process($data['deposit'], $method);
            if (!$data['deposit_data']) {
                $this->session->setFlashdata('exception', display('this_gateway_deactivated'));
                return redirect()->to(base_url('customer/buy/buy_form'));
            }
        } else {
            $this->session->setFlashdata('exception', "Something went wrong!!!");
            return redirect()->to(base_url('customer/finance/deposit'));
        }
        
        $data['content'] = $this->BASE_VIEW . '\payment_process';
        return $this->template->customer_layout($data);
    }

    


}