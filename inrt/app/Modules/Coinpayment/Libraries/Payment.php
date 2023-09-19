<?php 
namespace App\Modules\Coinpayment\Libraries;
use App\Models\Common_model;
class Payment
{
     public function __construct()
    {
        $this->session  = session();
        $this->db       = db_connect();
        $this->uri      = current_url(true);
        $this->common_model = new Common_model();
    }
    
    public function payment_process($sdata, $method=NULL){
        $gateway = $this->common_model->findById('payment_gateway', array('identity' => $method, 'status' => 1));
        if ($method=='coinpayment') {

            /******************************
            * CoinPayments Gateway API
            ******************************/
            if ($gateway) {

                $user_id = $this->session->get('user_id');
                $userinfo = $this->db->table('dbt_user')->select('*')->where('user_id',$user_id)->get()->getRow();

                $check = array(
                    'amount1'   =>$sdata->amount+(float)@$sdata->fees_amount,
                    'amount2'   =>$sdata->amount+(float)@$sdata->fees_amount,
                    'ipn_type'  =>'deposit',
                    'currency1' =>$sdata->currency_symbol,
                    'currency2' =>$sdata->currency_symbol,
                    'user_id'   =>$user_id
                );
                $query          = $this->db->table('coinpayments_payments')->select('*')->where($check)->get();
                $countrow       = $this->common_model->countRow('coinpayments_payments', $check);
                $coinpaydata    = $query->getRow();



                if($countrow > 0){

                    $querytnxid = $this->db->table('coinpayments_payments')->select('*')->where('txn_id',$coinpaydata->txn_id)->limit(0,1)->orderBy('id desc')->get();
                   

                    $counttnxidrow  = $querytnxid->resultID->num_rows;
                    $lastrow        = $querytnxid->getRow();


                    if($counttnxidrow > 1){

                        if($lastrow->status==0){

                            return json_decode($coinpaydata->status_text,true);

                        } else {

                            $coinpayment = array(
                                "private_key"   =>@$gateway->private_key,
                                "public_key"    =>@$gateway->public_key
                            );

                            $public_key     =$coinpayment['public_key']; 
                            $private_key    =$coinpayment['private_key']; 

                            $req = array(
                                "version"   =>1,
                                "cmd"       =>"create_transaction",
                                "amount"    =>number_format((float)($sdata->amount)+(float)(@$sdata->fees_amount),8, '.', ''),
                                "currency1" =>$sdata->currency_symbol,
                                "currency2" =>$sdata->currency_symbol,
                                "buyer_email"=>@$userinfo->email,
                                "custom"    =>$sdata->fees_amount,
                                "ipn_url"   =>base_url("customer/payment_callback/coinpayment_confirm"),
                                "key"       =>$public_key,
                                "format"    =>'json',
                            );

                            $post_data = http_build_query($req, '', '&');

                            $hmac = hash_hmac('sha512', $post_data, $private_key); 

                            static $ch = NULL; 
                            if ($ch === NULL) { 
                                $ch = curl_init('https://www.coinpayments.net/api.php'); 
                                curl_setopt($ch, CURLOPT_FAILONERROR, TRUE); 
                                curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
                                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
                            }
                            curl_setopt($ch, CURLOPT_HTTPHEADER, array('HMAC: '.$hmac)); 
                            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data); 
                             
                            $data = curl_exec($ch);

                            if ($data !== FALSE) { 
                                if (PHP_INT_SIZE < 8 && version_compare(PHP_VERSION, '5.4.0') >= 0) {

                                    $dec = json_decode($data, TRUE, 512, JSON_BIGINT_AS_STRING);

                                }
                                else { 

                                    $dec = json_decode($data, TRUE); 

                                } 
                                if ($dec !== NULL && count($dec)) {

                                    if($dec['error']=="ok"){

                                        $reg = array(

                                        'currency1'         =>$sdata->currency_symbol,
                                        'currency2'         =>$sdata->currency_symbol,
                                        'amount1'           =>@$dec['result']['amount'],
                                        'amount2'           =>@$dec['result']['amount'],
                                        'ipn_type'          =>'deposit',
                                        'status_text'       =>json_encode(@$dec),
                                        'txn_id'            =>@$dec['result']['txn_id'],
                                        'user_id'           =>$user_id

                                        );

                                        $this->common_model->save("coinpayments_payments",$reg);

                                        return $dec;
                                    }
                                    else{

                                        $this->session->setFlashdata("exception",@$dec['error']);
                                        return redirect()->to(base_url("customer/finance/deposit"));
                                    }
                                } 
                                else { 

                                    return array('error' => 'Unable to parse JSON result ('.json_last_error().')'); 
                                } 
                            }
                            else { 

                                return array('error' => 'cURL error: '.curl_error($ch));

                            }

                        }

                    }
                    else{

                        return json_decode($coinpaydata->status_text,true);

                    }

                } else {

                    $coinpayment = array(
                        "private_key"   =>@$gateway->private_key,
                        "public_key"    =>@$gateway->public_key
                    );

                    $public_key     =$coinpayment['public_key']; 
                    $private_key    =$coinpayment['private_key']; 


                    $req = array(
                        "version"   =>1,
                        "cmd"       =>"create_transaction",
                        "amount"    =>number_format((float)($sdata->amount)+(float)(@$sdata->fees_amount),8, '.', ''),
                        "currency1" =>$sdata->currency_symbol,
                        "currency2" =>$sdata->currency_symbol,
                        "buyer_email"=>@$userinfo->email,
                        "custom"    =>$sdata->fees_amount,
                        "ipn_url"   =>base_url("customer/payment_callback/coinpayment_confirm"),
                        "key"       =>$public_key,
                        "format"    =>'json',
                    );



                    $post_data = http_build_query($req, '', '&');

                    $hmac = hash_hmac('sha512', $post_data, $private_key); 

                    static $ch = NULL; 
                    if ($ch === NULL) { 
                        $ch = curl_init('https://www.coinpayments.net/api.php'); 
                        curl_setopt($ch, CURLOPT_FAILONERROR, TRUE); 
                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
                        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
                    }
                    curl_setopt($ch, CURLOPT_HTTPHEADER, array('HMAC: '.$hmac)); 
                    curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data); 
                     
                    $data = curl_exec($ch);



                    if ($data !== FALSE) { 

                        if (PHP_INT_SIZE < 8 && version_compare(PHP_VERSION, '5.4.0') >= 0) {

                            $dec = json_decode($data, TRUE, 512, JSON_BIGINT_AS_STRING);

                        }else { 

                            $dec = json_decode($data, TRUE); 

                        } 

                        if ($dec !== NULL && count($dec)) {

                            if($dec['error']=="ok"){

                                $reg = array(

                                'currency1'         =>$sdata->currency_symbol,
                                'currency2'         =>$sdata->currency_symbol,
                                'amount1'           =>@$dec['result']['amount'],
                                'amount2'           =>@$dec['result']['amount'],
                                'ipn_type'          =>'deposit',
                                'status_text'       =>json_encode(@$dec),
                                'txn_id'            =>@$dec['result']['txn_id'],
                                'user_id'           =>$user_id

                                );

                                $this->common_model->save("coinpayments_payments",$reg);
                                return $dec;

                            } else {

                                $this->session->setFlashdata("exception",@$dec['error']);
                                header("Location:".base_url("customer/finance/deposit"));
                            }

                        } 
                        else { 

                            return array('error' => 'Unable to parse JSON result ('.json_last_error().')'); 

                        } 
                    } else { 

                        return array('error' => 'cURL error: '.curl_error($ch));

                    }

                }

            }
            else{
                
                return false;

            }

        }
    }
}