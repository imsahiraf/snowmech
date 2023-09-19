<?php 
namespace App\Modules\Ico_settings\Controllers\Customer;

class Ico_wallet extends BaseController
{

    public function token_buy()
    {
        $data['title']  = display('token_buy'); 
        $menucontrol    = $this->db->table('menu_control')->select('*')->get()->getRow();

        $data['menucontrol'] = $menucontrol;

        //Current Round Selecting
        $today = date('Y-m-d H:i:s');
        $where = 0;
        $coin_release_q = $this->db->table('dbt_release_setup')->select("*")->where('status', 1)->get()->getResult();

        foreach ($coin_release_q as $key => $value) {

            $lastday = date('Y-m-d H:i:s', strtotime("+$value->day days", strtotime($value->start_date)));
           

            if ($lastday >= $today && $value->start_date <= $today) {

                $where = "start_date BETWEEN '".$value->start_date."' AND '".$lastday."'";             
            }
        }

        $released_coin = $this->db->table('dbt_release_setup')->select("*")->where($where)->where('status', 1)->get()->getRow();
       
        $data['coin_price'] = $this->db->table('dbt_currency')->select("*")->where('symbol', @$released_coin->exchange_currency)->where('status', 1)->get()->getRow();

        $this->validation->setRule('coin_qty', display('coin_qty'),'required|numeric|trim');

        if ($this->validation->withRequest($this->request)->run()) 
        {
            $coin_qty = $this->request->getPost('coin_qty',FILTER_SANITIZE_STRING);
            if($coin_qty<=0){
                $this->session->setFlashdata('exception', display('invalid_amount'));
                return redirect()->to(base_url('customer/ico-wallet/token-buy'));
            }
            
            if($menucontrol->ico_wallet==0){

                $this->session->setFlashdata('exception',display('feature_is_disable'));
                return redirect()->to(base_url('customer/ico-wallet/token-buy'));
            }

            $coin_owner_wallet = $this->db->table('coin_setup')->select('*')->get()->getRow();

            if ($coin_owner_wallet->wallet=='') {
                $this->session->setFlashdata('exception', display('server_problem'));
                return redirect()->to(base_url('customer/ico-wallet/token-buy'));
            }

            $source_wallet     = @$coin_owner_wallet->wallet;  //Wallet address where come from crypto
            $crypto_qty        = $this->request->getPost('coin_qty',FILTER_SANITIZE_STRING); //Quentity of Crypto coin
            $crypto_rate       = @$data['coin_price']->rate;          //Rate of crypto coin
            $exchange_currency = @$data['coin_price']->symbol; //Exchange crypto with Currency
            $total             = @$data['coin_price']->rate*$crypto_qty; //Crypto Price + Rate
            $crypto_balance    = $crypto_qty; // Sum of Crypto Coin
            
            //Check Available Coin
            if (@$released_coin->target - @$released_coin->fillup_target<=0) {
                $this->session->setFlashdata('exception', "Coin sold out");
                return redirect()->to(base_url('customer/ico-wallet/token-buy'));
            }

            //Check Available Coin Quantity
            if ($released_coin->target - $released_coin->fillup_target < $crypto_qty) {

                $this->session->setFlashdata('exception', "This amount(quantity) is not availabe");
                return redirect()->to(base_url('customer/ico-wallet/token-buy'));
            }

            $balance    = $this->token_model->checkBalance();
            
            if ($balance >= $total) {
                //Generate Wallet
                $coinwallet = md5(hash('sha256', date('Y-m-d H:i:s').microtime().mt_rand(0, 9999999)));

                $comspdata[] = array(

                    'id'                => md5($crypto_qty.date('Y-m-d H:i:s').microtime()),
                    'source_wallet'     => $source_wallet,
                    'crypto_qty'        => $crypto_qty,
                    'crypto_rate'       => $crypto_rate,
                    'exchange_currency' => $exchange_currency,
                    'total'             => $total,
                    'crypto_balance'    => $crypto_balance,
                );

                $jsondata = array(
                    $coinwallet  => $comspdata,
                );

                $jsonencode = json_encode($jsondata);

                $walletdata = array(

                    'wallet'     => $coinwallet, 
                    'data'       => $jsonencode,
                    'datetime'   => date('Y-m-d H:i:s'),
                );
                $cryptowallet = array(

                    'user_id'    => $this->session->get('user_id'),
                    'wallet'     => $coinwallet,
                    'datetime'   => date('Y-m-d H:i:s'),
                );

                $user_wallet =  $this->token_model->retriveUserCryptoWallet();

                if ($user_wallet) {

                    $user_wallet_transaction =  $this->token_model->retriveUserCryptoTransaction();
                    $jsondecode = json_decode($user_wallet_transaction->data);

                    $datapush = array();

                    foreach ($jsondecode as $key => $value) {
                       $datapush[$key] = $value;                        
                    }

                    // Data Last value get
                    foreach ($value as $last_key => $last_value);             

                    $comspdata_ex = array(
                        'id'                => md5($crypto_qty.date('Y-m-d H:i:s').microtime()),
                        'source_wallet'     => $source_wallet,
                        'crypto_qty'        => $crypto_qty,
                        'crypto_rate'       => $crypto_rate,
                        'exchange_currency' => $exchange_currency,
                        'total'             => $total + @$last_value->total,
                        'crypto_balance'    => $crypto_balance + @$last_value->crypto_balance,
                    );

                    //New Transaction Push
                    array_push($datapush[$key], $comspdata_ex);

                    $jsonencode_ex = json_encode($datapush);

                    $walletdata = array(
                        'wallet'     => $user_wallet, 
                        'data'       => $jsonencode_ex,
                        'datetime'   => date('Y-m-d H:i:s'),
                    );


                    //New Transaction Update
                    $this->common_model->update('dbt_crypto_transaction', $walletdata, array('wallet' => $user_wallet));

                    //User Balance Update
                    $this->common_model->update('dbt_balance', array('balance'=>($balance-$total)), array('user_id' => $this->session->get('user_id')));

                    //Coin Release Balance Update
                    $this->common_model->update('dbt_release_setup', array('fillup_target' => ($released_coin->fillup_target + $crypto_qty)), array('id' => $released_coin->id));

                } else {

                    //User Balance Update
                    $this->common_model->update('dbt_balance', array('balance' => ($balance - $total)), array('user_id' =>  $this->session->get('user_id')));

                    //Coin Release Balance Update
                    $this->common_model->update('dbt_release_setup', array('fillup_target' => ($released_coin->fillup_target+$crypto_qty)), array('id' => $released_coin->id));

                    //New User Wallet
                    $this->common_model->save_return_id('dbt_user_cryptowallet', $cryptowallet);
                    //First Transaction
                    $this->common_model->save_return_id('dbt_crypto_transaction', $walletdata);

                }

                $balance1    = $this->common_model->findById('dbt_balance', array('user_id' => $this->session->get('user_id')));

                $balance_log = array(

                    'balance_id'        => $balance1->id,
                    'user_id'           => $this->session->get('user_id'),
                    'transaction_type'  => "BUY",
                    'transaction_amount'=> $total,
                    'transaction_fees'  => 0,
                    'ip'                => $this->request->getIpAddress(),
                    'date'              => date('Y-m-d H:i:s'),
                );
                //User Balance log
                $this->common_model->save('dbt_balance_log', $balance_log);

                $reffereldata = $this->db->table('dbt_user')->select('referral_id')->where('user_id',$this->session->get('user_id'))->get()->getRow();

                if($reffereldata->referral_id){

                    $refferId = $reffereldata->referral_id;
                    $rcommission = $this->db->table('earnings')->select('earning_id')->where('user_id',$refferId)->where('Purchaser_id',$this->session->get('user_id'))->where('earning_type','REFERRAL')->get();

                    if($rcommission->resultID->num_rows < 1){

                        $commissioninfo = $this->db->table('dbt_affiliation')->select('*')->where('status',1)->get();


                        if($commissioninfo->resultID->num_rows > 0){
                            $commission = $commissioninfo->getRow();

                            $camount    = 0;
                            if($commission->type=="PERCENT"){
                                $camount = number_format(($total*$commission->commission)/100,8);
                            } else {
                                $camount = number_format($commission->commission,8);
                            }
                            $commissiondata = array(

                                'user_id'       => $refferId,
                                'Purchaser_id'  => $this->session->get('user_id'),
                                'earning_type'  => 'REFERRAL',
                                'amount'        => $camount,
                                'date'          => date('Y-m-d'),
                            );

                            $this->common_model->save('earnings',$commissiondata);

                            $checkbalance = $this->db->table('dbt_balance')->select('id,user_id,balance')->where('user_id',$refferId)->get()->getRow();

                            if($checkbalance){

                                $totalbalance= $checkbalance->balance+$camount;
                                $balancedata = array(
                                    'balance'       =>$totalbalance,
                                    'last_update'   =>date('Y-m-d H:i:s'),
                                );
                                $this->common_model->update('dbt_balance', $balancedata, array('user_id' => $refferId));

                            } else {

                                $balancedata = array(
                                    'user_id'    =>$refferId,
                                    'balance'    =>$camount,
                                    'last_update'=>date('Y-m-d H:i:s')
                                );
                                $this->common_model->save("dbt_balance",$balancedata);
                            }
                        }
                    }
                }

                $this->session->setFlashdata('message', display('buy_successful'));
                return redirect()->to(base_url('customer/ico-wallet/token-list'));

            } else {

                $this->session->setFlashdata('exception', display('you_dont_have_sufficient_balance'));
                return redirect()->to(base_url('customer/ico-wallet/token-buy'));
            }
            
        } 
        $data['currency'] = $this->common_model->findAll('dbt_currency', array('status' => 1), 'id', 'desc');

        $data['content'] = $this->BASE_VIEW . '\pages\token_buy';
        return $this->template->customer_layout($data);
    }

    public function gettokenbuydata()
    {
       
        $coininfo   = $this->token_model->get_coin_info();
        $coin_price = $this->db->table('dbt_currency')->select("*")->where('symbol', $coininfo->pair_with)->where('status', 1)->get()->getRow();
        echo json_encode(array('coininfo' => $coininfo,'coin_price' => $coin_price));
    }

    public function token_list()
    {
        
        $data['title']       = display('token_list'); 
        $data['transaction'] = $this->token_model->retriveUserCryptoTransaction(); 

        $data['coin_setup']  = $this->db->table('coin_setup')->select('*')->get()->getRow();      

        $data['content'] = $this->BASE_VIEW . '\pages\token_list';
        return $this->template->customer_layout($data);

    }

    
}