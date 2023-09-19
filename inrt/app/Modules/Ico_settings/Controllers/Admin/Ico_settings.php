<?php 
namespace App\Modules\Ico_settings\Controllers\Admin;
use App\Modules\Ico_settings\Models\Admin\Ico_settings_model;

class Ico_settings extends BaseController
{
    public function index(){

        $data = array();

        $data['content'] = $this->BASE_VIEW . '\currency\list';
        return $this->template->admin_layout($data);
    }

    public function ajax_list()
    {
        $model   = new Ico_settings_model();

        $list = $model->get_datatables();

        $data = array();
        $no = $_POST['start'];
        foreach ($list as $cryptocoin) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $cryptocoin->name;
            $row[] = $cryptocoin->symbol;
            $row[] = $cryptocoin->icon." ".$cryptocoin->rate;
            $row[] = '<a href="'.base_url("backend/ico-settings/add-currency/$cryptocoin->id").'"'.' class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="hvr-buzz-out fas fa-pencil-alt"></i></a>';

            $data[] = $row;

        }

        $output = array(
            "draw"            => intval($this->request->getvar('draw')),
            "recordsTotal"    => $this->common_model->countRow('dbt_currency', array()),
            "recordsFiltered" => $model->count_filtered(),
            "data"            => $data,
          );

        //output to json format
        echo json_encode($output);
    }

    public function add_currency($id = null)
    { 
        $data['title']  = display('currency');

        if (!empty($id)) {
            $this->validation->setRule('name', display('coin_name'),"max_length[100]|required|trim");
            $this->validation->setRule('symbol', display('symbol'),"max_length[10]|required|trim");

            $existname    = $this->coin_check($this->request->getPost('name'), $id);       
            $existysymbol = $this->coinsym_check($this->request->getPost('symbol'), $id);

        } else {
            $this->validation->setRule('name', display('coin_name'),'required|is_unique[dbt_currency.name]|max_length[100]|trim');
            $this->validation->setRule('symbol', display('symbol'),'required|is_unique[dbt_currency.symbol]|max_length[10]|trim');

        }

        $this->validation->setRule('icon', display('icon'),'max_length[100]|required|trim');
        $this->validation->setRule('rate', display('rate'),'max_length[100]|required|trim');
        $this->validation->setRule('status', display('status'),'max_length[1]|required|trim');

        $data['currency'] = (object)$userdata = array(

            'id'        => $this->request->getPost('id', FILTER_SANITIZE_STRING)?$this->request->getPost('id', FILTER_SANITIZE_STRING):'',
            'name'      => $this->request->getPost('name', FILTER_SANITIZE_STRING),
            'icon'      => $this->request->getPost('icon', FILTER_SANITIZE_STRING),
            'symbol'    => $this->request->getPost('symbol', FILTER_SANITIZE_STRING),
            'rate'      => $this->request->getPost('rate', FILTER_SANITIZE_STRING),
            'status'    => $this->request->getPost('status', FILTER_SANITIZE_STRING),
        );
    

        if ($this->validation->withRequest($this->request)->run()) 
        {
            if(!empty($id)){
                
                if($existname == true){

                    $this->session->setFlashdata("exception", array('name' => "The ".$this->request->getPost('name')." is already Exist."));
                    return  redirect()->to(base_url('/backend/ico-settings/add-currency/'.$id));
                }

                if($existysymbol == true){

                    $this->session->setFlashdata("exception", array('name' => "The ".$this->request->getPost('name')." is already Exist."));
                    return  redirect()->to(base_url('/backend/ico-settings/add-currency/'.$id));
                }
            } 


            if (empty($id)) 
            {
                if ($this->common_model->save('dbt_currency', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return redirect()->to(base_url('backend/ico-settings/add-currency'));
            } 
            else 
            {
                if ($this->common_model->update('dbt_currency', $userdata, array('id' =>$id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return redirect()->to(base_url('backend/ico-settings/add-currency/'.$id));
            }
        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }

        if(!empty($id)) {
            $data['title']    = display('edit_currency');
            $data['currency'] = $this->common_model->findById('dbt_currency', array('id' => $id));

        }
        
        $data['content'] = $this->BASE_VIEW . '\currency\form';
        return $this->template->admin_layout($data);
    }


    public function coin_check($name, $id)
    { 
        $coinExists = $this->db->table('dbt_currency')
            ->select('*') 
            ->where('name',$name) 
            ->where('id !=',$id) 
            ->get()
            ->getRow();

        if (!$coinExists) {
            return false;

        } else {
            return true;

        }
    }

    public function coinsym_check($symbol, $id)
    { 
         $coinExists = $this->db->table('dbt_currency')
            ->select('*') 
            ->where('symbol',$symbol) 
            ->where('id !=',$id) 
            ->get()
            ->getRow();

        if (!$coinExists) {
            return false;

        } else {
            return true;

        }
    } 



    public function coin_setup()
    {
        $data['title']  = display('coin_setup');
        $this->validation->setRule('coin_name',display('coin_name'),'required|trim');
        $this->validation->setRule('coin_symbol',display('coin_symbol'),'required|trim');
        $this->validation->setRule('pair_with',display('pair_with'),'required|trim');


        $data['coin_setup'] = $this->db->table('coin_setup')->select('*')->get()->getRow();
        $data['currency']   = $this->db->table('dbt_currency')->select('*')->where('status', 1)->get()->getResult();

        $data['check_system_run'] = $this->db->table('dbt_balance')->select('*')->get()->getResult(); 
        

        if($this->validation->withRequest($this->request)->run()){

            if(@count($data['check_system_run'])==0){
                if ($data['coin_setup']->create_wallet==0) {            
                    //Generate Wallet
                    $coinwallet = md5(hash('sha256', date('Y-m-d H:i:s').microtime().mt_rand(0, 9999999).@$this->request->getPost('coin_name',FILTER_SANITIZE_STRING).@$this->request->getPost('coin_symbol',FILTER_SANITIZE_STRING)));
                    $create_wallet = 1;

                    $data = array(
                        'name'      =>$this->request->getPost('coin_name',FILTER_SANITIZE_STRING),
                        'symbol'    =>$this->request->getPost('coin_symbol',FILTER_SANITIZE_STRING),
                        'pair_with' =>$this->request->getPost('pair_with',FILTER_SANITIZE_STRING),
                        'wallet'    => $coinwallet,
                        'create_wallet'    => $create_wallet
                    );
                }
                else{
                    $data = array(
                        'name'      =>$this->request->getPost('coin_name',FILTER_SANITIZE_STRING),
                        'symbol'    =>$this->request->getPost('coin_symbol',FILTER_SANITIZE_STRING),
                        'pair_with' =>$this->request->getPost('pair_with',FILTER_SANITIZE_STRING),
                    );
                }
  
                $this->common_model->update("coin_setup", $data, array());
                $this->session->setFlashdata("message",display('setup_successfully'));

            }else{

                $this->session->setFlashdata("exception", display('now_you_cant_change_it'));

            }

            return redirect()->to(base_url("backend/ico-settings/coin-setup"));

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }       



        $data['content'] = $this->BASE_VIEW . '\coin_setup\form';
        return $this->template->admin_layout($data);
    }


    public function coin_manager($id = 1)
    {

        $data['title']  = display('coin_manager');

        $this->validation->setRule('hold_coin', display('hold_coin'),'required|trim');
        $this->validation->setRule('pre_sell', display('pre_sell'),'required|trim');
        $this->validation->setRule('sell_available', display('sell_available'),'required|trim');

        $data['coin_manager'] = (object)$userdata = array(

            'id'            => $this->request->getPost('id',FILTER_SANITIZE_STRING)?$this->request->getPost('id',FILTER_SANITIZE_STRING):'',
            'hold_coin'     => $this->request->getPost('hold_coin',FILTER_SANITIZE_STRING),
            'pre_sell'      => $this->request->getPost('pre_sell',FILTER_SANITIZE_STRING),
            'sell_available'=> $this->request->getPost('sell_available',FILTER_SANITIZE_STRING)
        );
        

        if ($this->validation->withRequest($this->request)->run()) 
        {

            if ($this->common_model->update('dbt_coin_manager', $userdata, array('id' => $id))) {
                $this->session->setFlashdata('message', display('update_successfully'));

            } else {
                $this->session->setFlashdata('exception', display('please_try_again'));

            }
            return redirect()->to(base_url('backend/ico-settings/coin-manager/'.$id));
        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }  


        if(!empty($id)) {
            $data['title'] = display('coin_manager');
            $data['coin_manager']   = $this->common_model->findById('dbt_coin_manager', array('id' => $id));
        }

        $data['content'] = $this->BASE_VIEW . '\coin_manager\form';
        return $this->template->admin_layout($data);
    }

    public function coin_releasing_list(){

        $data['title']  = display('coin_release');

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['coin_release']  = $this->common_model->get_all('dbt_release_setup',array(), 'id', 'asc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('dbt_release_setup', array());
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);


        $data['content'] = $this->BASE_VIEW . '\coin_release\list';
        return $this->template->admin_layout($data);
    }

    public function coin_release_add($id = null)
    { 
        $data['title']  = display('coin_release');

        $this->validation->setRule('round_name', display('round_name'),'required|trim');
        $this->validation->setRule('day', display('day'),'required|trim');
        $this->validation->setRule('target', display('target'),'required|trim');
        $this->validation->setRule('start_date', display('start_date'),'required|trim');
        $this->validation->setRule('start_time', display('start_time'),'required|trim');

        @$start_date = $this->request->getPost('start_date',FILTER_SANITIZE_STRING)." ".$this->request->getPost('start_time',FILTER_SANITIZE_STRING).":00";
        $coin_setup = $this->db->table('coin_setup')->select('*')->get()->getRow();
        $newroundtarget = $this->request->getPost('target',FILTER_SANITIZE_STRING);

        $data['coin_release'] = (object)$userdata = array(
                'id'         => $this->request->getPost('id',FILTER_SANITIZE_STRING)?$this->request->getPost('id',FILTER_SANITIZE_STRING):'',
                'round_name' => $this->request->getPost('round_name',FILTER_SANITIZE_STRING),
                'day'        => $this->request->getPost('day',FILTER_SANITIZE_STRING),
                'target'     => $this->request->getPost('target',FILTER_SANITIZE_STRING),
                'exchange_currency'=> $coin_setup->pair_with,
                'start_date' => $start_date,
                'status'     => $this->request->getPost('status',FILTER_SANITIZE_STRING),
        );
        $data['checktargetfilup'] = $checktargetfilup = $this->db->table('dbt_release_setup')->select('fillup_target')->where('id',$id)->get()->getRow();

        if ($this->validation->withRequest($this->request)->run())
        {
            if(!empty($id)){
                
                if($checktargetfilup->fillup_target>0){
                    $this->session->setFlashdata('exception','Now you can\'t change this round!');
                    return redirect()->to(base_url("backend/ico-settings/coin-release-add/$id"));
                }
            }

            $rounddetails = $this->db->table('dbt_release_setup')->select('id,start_date as startdate,DATE_ADD(dbt_release_setup.start_date, INTERVAL dbt_release_setup.day DAY) as enddate')->where("DATE_ADD(dbt_release_setup.start_date, INTERVAL dbt_release_setup.day DAY)>='$start_date'")->get();



            if(empty($id)){

                $checkroundtime = $rounddetails->resultID->num_rows>0?1:0;
            }
            else{
                if($rounddetails->resultID->num_rows>=2){
                    $checkroundtime = 1;
                }
                else{
                    if($rounddetails->resultID->num_rows>0){
                        $data = $rounddetails->getRow();
                        $checkroundtime = $data->id==$id?0:1;
                    }
                    else{
                        $checkroundtime = 0;
                    }
                }
            }

            if($checkroundtime==0)
            {
                if(empty($id)){
                    $releaseround = $this->db->table('dbt_release_setup')->selectSum('target')->get()->getRow();
                }
                else{
                    $releaseround = $this->db->table('dbt_release_setup')->selectSum('target')->where('id !=',$id)->get()->getRow();
                }

                $roundtarget  = $releaseround->target;
                $sellcoin     = $this->db->table('dbt_coin_manager')->select('sell_available')->get()->getrow();
                $totalsellcoin= $sellcoin->sell_available;
                $availablecoin= $totalsellcoin-$roundtarget;
                
                if($availablecoin>=$newroundtarget){

                    if (empty($id)) 
                    {
                        if ($this->common_model->save('dbt_release_setup', $userdata)) {
                            $this->session->setFlashdata('message', display('save_successfully'));

                        } else {
                            $this->session->setFlashdata('exception', display('please_try_again'));

                        }
                       return redirect()->to(base_url("backend/ico-settings/coin-release-add"));

                    }  else  {
                        
                        if ($this->common_model->update('dbt_release_setup', $userdata, array('id' => $id))) {
                             $this->session->setFlashdata('message', display('update_successfully'));

                        } else {
                            $this->session->setFlashdata('exception', display('please_try_again'));

                        }
                        return redirect()->to(base_url("backend/ico-settings/coin-release-add/".$id));
                    }
                } else {
                    $this->session->setFlashdata('exception', display('sell_available_limit'));
                }

            } else {
                $this->session->setFlashdata('exception', display('already_exists'));
            }

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }

        if(!empty($id)) {
            $data['title'] = display('edit_coin_release');
            $data['coin_release'] = $this->common_model->findById('dbt_release_setup', array('id' => $id));

        }

        $data['currency'] = $this->common_model->findAll('dbt_release_setup', array(), 'id', 'asc');


        $data['content'] = $this->BASE_VIEW . '\coin_release\form';
        return $this->template->admin_layout($data);

    }

    public function menu_control(){

        $data['title']   = display('menu_control');
        $data['control'] = $this->db->table('menu_control')->select('*')->get()->getRow();


        $data['content'] = $this->BASE_VIEW . '\menu_control\menu_control';
        return $this->template->admin_layout($data);
    }

    public function menu_control_save()
    {
        $ico_wallet = $this->request->getPost('ico_wallet',FILTER_SANITIZE_STRING)?1:0;
        $exchange = $this->request->getPost('exchange',FILTER_SANITIZE_STRING)?1:0;
        $package = $this->request->getPost('package',FILTER_SANITIZE_STRING)?1:0;
        
        $this->common_model->update('menu_control', array('ico_wallet'=>$ico_wallet,'exchange'=>$exchange,'package'=>$package), array());
        return redirect()->to(base_url('backend/ico-settings/menu-control'));
    }


    public function white_paper()
    {
        $data['title']   = display('white_paper');
        $data['white_paper'] = $this->db->table('coin_setup')->select('white_paper')->get()->getRow();


        $data['content'] = $this->BASE_VIEW . '\white_paper\white_paper';
        return $this->template->admin_layout($data);
    }


    public function white_paper_save()
    {

        $this->validation->setRule('white_paper_pdf', "This white Paper Pdf", 'ext_in[white_paper_pdf,pdf,word,txt]');

        if($this->validation->withRequest($this->request)->run()){

            $filePath = $this->imageupload->doUpload('public/upload/pdf/', $this->request->getFile('white_paper_pdf'));

            $this->common_model->update('coin_setup', array('white_paper'=> $filePath), array());
            $this->session->setFlashdata('message',display('update_successfully'));

        } else {

            $this->session->setFlashdata('exception',$this->validation->listErrors());
        }

        return redirect()->to(base_url('backend/ico-settings/white-paper'));
    }


   
    /*
    |----------------------------------------------
    |        id genaretor
    |----------------------------------------------     
    */
    public function randomID($mode = 2, $len = 6)
    {
        $result = "";
        if($mode == 1):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 2):
            $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        elseif($mode == 3):
            $chars = "abcdefghijklmnopqrstuvwxyz0123456789";
        elseif($mode == 4):
            $chars = "0123456789";
        endif;

        $charArray = str_split($chars);
        for($i = 0; $i < $len; $i++) {
                $randItem = array_rand($charArray);
                $result .="".$charArray[$randItem];
        }
        return $result;
    }
}
