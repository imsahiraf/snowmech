<?php

namespace App\Modules\Auth\Models\Admin;

class Dashboard_model
{
    
    public function __construct()
    {
        $this->db = db_connect();
    }



    /*from ico-wallet main start*/
    public function get_cata_wais_transections()
    {
        $data = array();//Declear Array Variable

        /***********************|
        | All User              |
        ************************/       
        $data['total_user']         = $this->db->table('dbt_user')
                                        ->select('COUNT(user_id) as total_user')
                                        ->get()
                                        ->getRow();


        /*************************|
        | All Investment          |
        **************************/
        $data['total_investment']   = $this->db->table("investment")
                                        ->select('SUM(amount) as total_investment')
                                        ->get()
                                        ->getRow();

        /*************************|
        | All ROI                 |
        **************************/
        $data['total_roi']          = $this->db->table("earnings")
                                        ->selectSum('amount','total_roi')
                                        ->where('earning_type','ROI')
                                        ->get()
                                        ->getRow();

        /*************************|
        | Total Deposit           |
        **************************/
        $data['total_deposit']      = $this->db->table('dbt_balance_log')
                                        ->selectSUM('transaction_amount','deposit')
                                        ->where('transaction_type','DEPOSIT')
                                        ->get()
                                        ->getRow();

        /*************************|
        | Total Withdraw          |
        **************************/
        $data['total_withdraw']     = $this->db->table('dbt_balance_log')
                                        ->selectSum('transaction_amount', 'withdraw')
                                        ->where('transaction_type','WITHDRAW')
                                        ->get()
                                        ->getRow();

        /*************************|
        | Sold Token              |
        **************************/
        $data['sold_token']         = $this->db->table('dbt_release_setup')
                                        ->selectSum('fillup_target', 'sold_token')
                                        ->get()
                                        ->getRow();

        /*************************|
        | Total Fees              |
        **************************/
        $totalfees                  = $this->db->table('dbt_balance_log')
                                        ->selectSum('transaction_fees','transaction_fees')
                                        ->where('transaction_type !=', 'ADJUSTMENT')
                                        ->get()
                                        ->getRow();

        $adjustfees                 = $this->db->table('dbt_balance_log')
                                        ->selectSum('transaction_fees','transaction_fees')
                                        ->where('transaction_type', 'ADJUSTMENT')
                                        ->get()
                                        ->getRow();
                                        
        $data['total_earning_fees'] = (float)@$totalfees->transaction_fees-(float)@$adjustfees->transaction_fees;

        /*************************|
        | All Token               |
        **************************/
        $all_token      = $this->db->table('dbt_coin_manager')->select('*')->get()->getRow();
        $data['token']              = @$all_token->hold_coin+@$all_token->pre_sell+@$all_token->sell_available;

        return $data;
    }

    public function getPackage()
    {
        return $this->db->table('package')
                ->select('*')
                ->get()
                ->getResult();
    }


    public function allWithdraw()
    {
        return $this->db->table('dbt_withdraw')
                ->select('*')
                ->orderBy('request_date','DESC')
                ->limit(5)
                ->get()
                ->getResult();
    }

    public function allDeposit()
    {
        return $this->db->table('dbt_deposit')
                ->select('*')
                ->orderBy('deposit_date','DESC')
                ->limit(5)
                ->get()
                ->getResult();
    }

    public function allExchange()
    {
        return $this->db->table('dbt_exchange_details')
                ->select('*')
                ->orderBy('datetime','DESC')
                ->limit(10)
                ->get()
                ->getResult();
    }

    public function pairCurrencyInfo()
    {
        return $this->db->table('coin_setup')
                ->select('*')
                ->get()
                ->getRow();
    }

    public function monthlyInvestment($year = "")
    {
        
        if(empty($year)){

            $sqlstring = "SELECT MONTHNAME(`invest_date`) as month, SUM(`amount`) as invest FROM `investment` GROUP BY YEAR(`invest_date`), MONTH(`invest_date`)";

        } else {

            $sqlstring = "SELECT MONTHNAME(`invest_date`) as month, SUM(`amount`) as invest FROM `investment` WHERE YEAR(`invest_date`) = '".$year."' GROUP BY YEAR(`invest_date`)";

        }

        return $query = $this->db->query($sqlstring, [])->getResult();
    }

    /*from ico-wallet main end*/

    public function monthlyDeposit($currency = 'USD')
    {

        $sql = "SELECT MONTHNAME(`deposit_date`) as month, SUM(`amount`) as deposit FROM `dbt_deposit` WHERE `currency_symbol`='".$currency."' AND `status`='1' GROUP BY YEAR(`deposit_date`), MONTH(`deposit_date`)";
        return $this->db->query($sql, [])->getResult();
    }

    public function monthlyWithdraw($currency = 'USD')
    {

        $sql = "SELECT MONTHNAME(`request_date`) as month, SUM(`amount`) as withdraw FROM `dbt_withdraw` WHERE `currency_symbol`='".$currency."' AND `status`='1' GROUP BY YEAR(`request_date`), MONTH(`request_date`)";
        return $this->db->query($sql, [])->getResult();
    }

    public function monthlyTransfer($currency = 'USD')
    {

        $sql = "SELECT MONTHNAME(`date`) as month, SUM(`amount`) as transfer FROM `dbt_transfer` WHERE `currency_symbol`='".$currency."' AND `status`='1' GROUP BY YEAR(`date`), MONTH(`date`)";
        return $this->db->query($sql, [])->getResult();
    }

    public function userGrowth($year = '')
    {
        if(empty($year)){

            $sql = "SELECT MONTHNAME(`created_date`) as month, COUNT(`user_id`) as totaUsers FROM `dbt_user` GROUP BY YEAR(`created_date`), MONTH(`created_date`)";

        } else {

            $sql = "SELECT MONTHNAME(`created_date`) as month, COUNT(`user_id`) as totaUsers FROM `dbt_user` WHERE YEAR(`created_date`) = '".$year."' GROUP BY YEAR(`created`), MONTH(`created_date`)";
        }

        return $this->db->query($sql, [])->getResult();
    }

    public function monthlyFees($currency = 'BTC')
    {

        $sql = "SELECT MONTHNAME(`success_time`) as month, SUM(`fees_amount`) as fees FROM `dbt_biding_log` WHERE `currency_symbol`='".$currency."' GROUP BY YEAR(`success_time`), MONTH(`success_time`)";
        return $this->db->query($sql, [])->getResult();
    }

    public function currentMonthFeesTotal($currency = 'BTC')
    {
        $current_date = date('Y-m-d');
        $sql1 = "SELECT SUM(`fees_amount`) as fees FROM `dbt_biding_log` WHERE MONTH(`success_time`)=MONTH('".$current_date."') AND `currency_symbol`='".$currency."' AND `status` = '1'";
        $buySellFees = $this->db->query($sql1, [])->getRow();

        $sql2 = "SELECT SUM(`fees_amount`) as depositTotalFees FROM `dbt_deposit` WHERE MONTH(`deposit_date`)=MONTH('".$current_date."') AND `currency_symbol`='".$currency."' AND `status` = '1'";
        $depositFees = $this->db->query($sql2, [])->getRow();

        $sql3 = "SELECT SUM(`fees_amount`) as withdrawTotalFees FROM `dbt_withdraw` WHERE MONTH(`success_date`)=MONTH('".$current_date."') AND `currency_symbol`='".$currency."' AND `status` = '1'";
        $withdrawFees = $this->db->query($sql3, [])->getRow();

        $sql4 = "SELECT SUM(`fees`) as transferTotalFees FROM `dbt_transfer` WHERE MONTH(`date`)=MONTH('".$current_date."') AND `currency_symbol`='".$currency."' AND `status` = '1'";
        $transferFees = $this->db->query($sql4, [])->getRow();

        $resutl =  array('buySellFees' => @$buySellFees->fees, 'depositFees' => @$depositFees->depositTotalFees, 'withdrawFees' => @$withdrawFees->withdrawTotalFees, 'transferFees' => @$transferFees->transferTotalFees);

        return $resutl;
    }

    public function monthlyBuy($currency = 'USD')
    {

        $sql = "SELECT MONTHNAME(`success_time`) as month, SUM(`complete_amount`) as totalBuy FROM `dbt_biding_log` WHERE `currency_symbol`='".$currency."' AND `bid_type`='BUY' AND `status`= '1' GROUP BY YEAR(`success_time`), MONTH(`success_time`)";
        return $this->db->query($sql, [])->getResult();
    }
    public function monthlySell($currency = 'USD')
    {

        $sql = "SELECT MONTHNAME(`success_time`) as month, SUM(`complete_amount`) as totalSell FROM `dbt_biding_log` WHERE `currency_symbol`='".$currency."' AND `bid_type`='SELL' AND `status`= '1' GROUP BY YEAR(`success_time`), MONTH(`success_time`)";
        return $this->db->query($sql, [])->getResult();
    }

    public function currentMonthFeesDeposit($currency = 'BTC')
    {
        $current_date = date('Y-m-d');
        $sql = "SELECT SUM(`fees_amount`) as fees FROM `dbt_biding_log` WHERE MONTH(`success_time`)=MONTH('".$current_date."') AND `currency_symbol`='".$currency."' AND `status` = '1'";
        return $this->db->query($sql, [])->getRow();
    }

    public function coinTradeMarket()
    {
        $sql = "SELECT `currency_symbol` as currency_symbol, SUM(`bid_qty`) as bid_qty FROM `dbt_biding` WHERE `bid_type`='BUY' GROUP BY `currency_symbol`";
        return $this->db->query($sql, [])->getResult();
    }

    
    public function marketTradeHistory()
    {
        
        $builder = $this->db->table('dbt_biding bidmaster');
        $builder->select('bidmaster.*, biddetail.bid_type as bid_type1, biddetail.bid_price as bid_price1, biddetail.market_symbol as market_symbol1, biddetail.complete_amount as complete_amount1, biddetail.success_time as success_time1, biddetail.complete_qty, biddetail.complete_amount, biddetail.success_time');
        $builder->join('dbt_biding_log biddetail', 'biddetail.bid_id = bidmaster.id', 'left');
        $builder->limit(15);
        $query = $builder->get();
        return $data = $query->getResult();
    }
}