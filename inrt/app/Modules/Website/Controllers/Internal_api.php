<?php namespace App\Modules\Website\Controllers;

class Internal_api extends BaseController 
{

    /*********************
    |Websites Internal API|
    **********************/

    public function get_chart_data()
    {
        //Chart Data
        $parent_cat = $this->db->table('web_category')->select("cat_id")->where('slug', 'chart')->get()->getRow();
        $ids = $this->db->table('web_category')->select("cat_id")->where('parent_id', @$parent_cat->cat_id)->get()->getResult();
        $i      = 0;
        $chart = array();
        foreach ($ids as $key => $value) {
            $chart[$i] = $this->db->table('web_article')->select('*')->where('cat_id', @$value->cat_id)->orderBy('position_serial','asc')->get()->getResult();
            $i++;
        }

        $color0  = array();
        $data0   = array();

        foreach ($chart[0] as $key0 => $value0) {
            array_push($color0, $value0->article1_fr);
            $data0[] = array('value'=>$value0->article1_en,'name'=>$value0->headline_en);
        }

        $color1 = array();
        $data1  = array();

        foreach ($chart[1] as $key1 => $value1) {
            array_push($color1, $value1->article1_fr);
            $data1[] = array('value'=>$value1->article1_en,'name'=>$value1->headline_en);
        }

        echo json_encode(array('color0'=>$color0,'data0'=>$data0,'color1'=>$color1,'data1'=>$data1));
    }

    public function getflipdata()
    {

        $nowtime      = date("Y-m-d H:i:s");

        $coinreleasetimedata    = $this->web_model->coin_release_time($nowtime);
        $checkitem              = count($coinreleasetimedata->getResult());
        $coinrelease            = $coinreleasetimedata->getRow();
        $fliptime               = 0;
        if($checkitem>0){

            $releasetime        = date("Y-m-d H:i:s",strtotime("$coinrelease->start_date +$coinrelease->day day"));
            $realreleasetime    = strtotime($releasetime)-strtotime($nowtime);
            if($realreleasetime>0){
                $fliptime       = $realreleasetime;
            }
        }
        
        echo json_encode(array('fliptime' => $fliptime));
    }

    /*********************
    |Backend Internal API|
    **********************/
    public function getadvirtigementdata()
    {
        $id = $this->request->getVar('id');
        $advertisement = $this->common_model->findById('advertisement', array('id'=>$id));

        echo json_encode($advertisement);
    }

    public function getemailsmsgateway()
    {
        $sms = $this->db->select('*')->from('email_sms_gateway')->where('es_id', 1)->get()->row();

        echo json_encode($sms);
    }

    public function getlinechartdata()
    {
        $this->load->model('backend/dashboard/dashboard_model');

        $monthlyInvestment = $this->dashboard_model->monthlyInvestment();
        
        $months       = array();
        $investamount = array();
        foreach ($monthlyInvestment as $key => $value) {
            array_push($months,$value->month);
            array_push($investamount,$value->invest);
        }
        
        echo json_encode(array('investamount'=>$investamount,'months'=>$months));
    }

    public function getdepositgatewaydata()
    {
        $gateway = $this->db->select('*')->from('payment_gateway')->where('identity', 'phone')->where('status',1)->get()->row();

        echo json_encode($gateway);
    }

    public function getmenucontrollerinfo()
    {
        $menucontrol = $this->db->select('*')->from('menu_control')->get()->row();

        echo json_encode($menucontrol);
    }

    public function gettokenbuydata()
    {
        $this->load->model('common_model');

        $coininfo   = $this->common_model->get_coin_info();
        $coin_price = $this->db->select("*")->from('dbt_currency')->where('symbol', $coininfo->pair_with)->where('status', 1)->get()->row();

        echo json_encode(array('coininfo'=>$coininfo,'coin_price'=>$coin_price));
    }

    public function getcoininfo()
    {
        $this->load->model('common_model');

        $coininfo = $this->common_model->get_coin_info();

        echo json_encode($coininfo);
    }
}