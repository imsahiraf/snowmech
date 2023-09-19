<?php 
namespace App\Modules\User\Controllers\Admin;

class User extends BaseController {
 	
 	
 
	public function index()
    {   
        
        $data['title']  = display('user_list');
        $uri = service('uri','<?php echo base_url(); ?>'); 

        #-------------------------------#
        #pagination starts
        #-------------------------------#
        $page           = ($uri->getSegment(3)) ? $uri->getSegment(3) : 0;
        $page_number    = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
       
        $total           = $this->common_model->countRow('dbt_user');
        $data['pager']   = $this->pager->makeLinks($page_number, 20, $total);  
        #------------------------
        #pagination ends
        #------------------------

        $data['content'] = $this->BASE_VIEW . '\user\list';
        return $this->template->admin_layout($data);
    }

    /*
    |----------------------------------------------
    |   Datatable Ajax data Pagination+Search
    |----------------------------------------------     
    */
    public function ajax_list()
    {
        $table = 'dbt_user';
        $column_order = array(null, 'user_id','username','sponsor_id','f_name','l_name','email','phone','reg_ip','status','created','modified'); //set column field database for datatable orderable
        $column_search = array('user_id','username','sponsor_id','f_name','l_name','email','phone','reg_ip','status','created','modified'); //set column field database for datatable searchable 

        $order = array('id' => 'DESC'); // default order   
        $list = $this->user_model->get_datatables($table,$column_order,$column_search,$order);
        
        $data = array();
        $no = $this->request->getvar('start');
        foreach ($list as $users) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = '<a href="'.base_url("backend/user/user_details/$users->id").'">'.$users->user_id.'</a>';
            $row[] = '<a href="'.base_url("backend/user/user_details/$users->id").'">'.$users->first_name." ".$users->last_name.'</a>';
            $row[] = $users->referral_id;
            $row[] = $users->email;
            $row[] = $users->phone;
            $row[] = '<a href="'.base_url("backend/users/user_info/$users->id").'"'.' class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="hvr-buzz-out far fa-edit"></i></a>  '.(($users->status==1)?'<a href="#" class="btn btn-success btn-sm">Active</a>':(($users->status==2)?'<a href="#" class="btn btn-danger btn-sm">Pending</a>':(($users->status==3)?'<a href="#" class="btn btn-danger btn-sm">Suspend</a>':'<a href="#" class="btn btn-warning btn-sm">Deactive</a>'))).'  '.(($users->verified==1)?'<a href="#" class="btn btn-success btn-sm">verified</a>':(($users->verified==2)?'<a href="#" class="btn btn-danger btn-sm">Cancel</a>':(($users->verified==3)?'<a href='.base_url("backend/user/pending-user-verification/$users->user_id").' class="btn btn-info btn-sm" data-toggle="tooltip">Requested</a>':'<a href="#" class="btn btn-danger btn-sm">Not Verified</a>')));

            $data[] = $row;
        }

        $output = array(
                "draw" => intval($this->request->getvar('draw')),
                "recordsTotal" => $this->user_model->count_all($table),
                "recordsFiltered" => $this->user_model->count_filtered($table,$column_order,$column_search,$order),
                "data" => $data,
            );
        //output to json format
        echo json_encode($output);
    }


 
    public function form($id = null)
    { 

        $this->validation->setRule('first_name', display('firstname'),'required|max_length[50]');        
        $this->validation->setRule('last_name', display('lastname'),'required|max_length[50]');        

        if (!empty($id)) {   
            $this->validation->setRule('email', display('email'), "required|valid_email|max_length[100]|trim"); 
            $this->validation->setRule('mobile', display('mobile'),"required|max_length[30]");
        } else {
            $this->validation->setRule('email', display('email'),'required|valid_email|is_unique[dbt_user.email]|max_length[100]');
            $this->validation->setRule('mobile', display('mobile'),'required|is_unique[dbt_user.phone]|max_length[100]');
        }
        $this->validation->setRule('status', display('status'),'required|max_length[1]');

        $existingData = $this->common_model->findById('dbt_user', array('id' => $id));

        if(!empty($this->request->getPost('password',FILTER_SANITIZE_STRING))){

            $this->validation->setRule('password', display('password'),'required|min_length[6]|max_length[32]|md5');
            $this->validation->setRule('conf_password', display('conf_password'),'required|min_length[6]|max_length[32]|md5|matches[password]');
            $newpassword = md5($this->request->getPost('password',FILTER_SANITIZE_STRING));

        } else if(empty($existingData)){

            $this->validation->setRule('password', display('password'),'required|min_length[6]|max_length[32]|md5');
            $this->validation->setRule('conf_password', display('conf_password'),'required|min_length[6]|max_length[32]|md5|matches[password]');
            $newpassword = md5($this->request->getPost('password',FILTER_SANITIZE_STRING));

        } else {

            $newpassword = $existingData->password;
        }

        $default_password = $this->request->getPost('password',FILTER_SANITIZE_STRING);
        $userid           = $this->randomID();

        if (empty($id))
        { 
            $data['user'] = (object)$userdata = array(

                'id'          => $this->request->getPost('id', FILTER_SANITIZE_STRING)? $this->request->getPost('id') : '',
                'user_id'     => $userid,
                'referral_id' => $this->request->getPost('referral_id', FILTER_SANITIZE_STRING),
                'first_name'  => $this->request->getPost('first_name', FILTER_SANITIZE_STRING),
                'last_name'   => $this->request->getPost('last_name', FILTER_SANITIZE_STRING),
                'email'       => $this->request->getPost('email', FILTER_SANITIZE_EMAIL),
                'password'    => $newpassword,
                'password_reset_token' => md5($userid),
                'phone'       => $this->request->getPost('mobile', FILTER_SANITIZE_STRING),
                'ip'          => $this->request->getipAddress(),
                'status'      => 1,
            );

        } else {

            $data['user'] = (object)$userdata = array(

                'id'          => $this->request->getPost('id', FILTER_SANITIZE_STRING),
                'user_id'     => $this->request->getPost('user_id', FILTER_SANITIZE_STRING),
                'first_name'  => $this->request->getPost('first_name', FILTER_SANITIZE_STRING),
                'last_name'   => $this->request->getPost('last_name', FILTER_SANITIZE_STRING),
                'email'       => $this->request->getPost('email', FILTER_SANITIZE_EMAIL),
                'password'    => $newpassword,
                'language'    => 'english',
                'phone'       => $this->request->getPost('mobile', FILTER_SANITIZE_STRING),
                'ip'          => $this->request->getipAddress(),
                'status'      => $this->request->getPost('status', FILTER_SANITIZE_STRING),
            );
        }

        if($this->request->getMethod() == 'post'){

            $existemail = $this->email_check($this->request->getPost('email'), $id);
            
            $existphone = $this->phone_check($this->request->getPost('mobile'), $id);
           

            if ($this->validation->withRequest($this->request)->run()) 
            {

                if (!empty($id)){

                    if($existemail == 0){

                        $this->session->setFlashdata("exception", array('email' => "This Email Already Registered, Please Use Another E-mail!"));
                       return  redirect()->to(base_url('backend/users/user_info/'.$id));

                    }

                    if($existphone == 0){
                        $this->session->setFlashdata("exception", array('mobile' => "This Mobile Number Already Registered, Please Use Another Mobile Number!"));
                       return  redirect()->to(base_url('backend/users/user_info/'.$id));
                        }
                }

                if (empty($id)) 
                {
                    
                     #----------------------------
                    #      email verify smtp mail
                    #----------------------------
                    
                    $appSetting = $this->common_model->findById('setting', array());
                    $email_theme = $this->common_model->findById('dbt_sms_email_template', array('id' => 12));

                    if($this->langSet() == 'english'){

                        $theme_message = @$email_theme->template_en;
                        $theme_subject = @$email_theme->subject_en;

                    } else { 

                        $theme_message = @$email_theme->template_fr; 
                        $theme_subject = @$email_theme->subject_fr;
                    }
                    
                    $msg['title']      = $appSetting->title;
                    $msg['to']         = $this->request->getPost('email', FILTER_SANITIZE_STRING);
                    $msg['subject']    = $theme_subject;
                    $msg['url']        = "<a target='_blank' href='".base_url()."/activate-account/".md5($userdata['user_id'])."'>".base_url()."/activate-account/".md5($userdata['user_id'])."</a>"."<br>User Credential-<br>User Id- ".$userdata['user_id']."<br>Email- ".$userdata['email']."<br>Default Password- ".$default_password;
                    $msg['message']    = $theme_message;
                    $this->common_model->send_email_theme($msg);
                    if ($this->common_model->save('dbt_user', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }

                    #-----------------------------
                    return redirect()->route('backend/users/user_info');
                } else {
                    if ($this->common_model->update('dbt_user',$userdata, array('id' => $id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('backend/users/user_info/'.$id));

                }

            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
              
                if(!empty($id)){

                   
                    return  redirect()->to(base_url('backend/users/user_info/'.$id));

                } else {
                    return  redirect()->to(base_url('backend/users/user_info'));

                }
               
            }
        } else {

            if(!empty($id)) {
                $data['title'] = display('edit_user');
                $data['user']   = $this->common_model->findById('dbt_user', array('id' => $id));
            }

            $data['content'] = $this->BASE_VIEW . '\user\form';
             return $this->template->admin_layout($data);
        }
    }

    public function email_check($email, $id)
    { 
      
        $emailExists = $this->common_model->findById('dbt_user', array('email'=>$email, 'id !=' => $id));
        if (!empty($emailExists)) {
            return 0;
        } else {
            return 1;
        }
    }

    public function phone_check($phone, $id)
    { 
      
        $phoneExist = $this->common_model->findById('dbt_user', array('phone'=>$phone, 'id !=' => $id));
        if (!empty($phoneExist)) {
            return 0;
        } else {
            return 1;
        }
    }

     public function pending_user_verification_list(){

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        $data['users']    = $this->common_model->get_all('dbt_user', array('verified' => 3), 'id','asc',20,($page_number-1)*20);
        $total            = $this->common_model->countRow('dbt_user', array('verified' => 3));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);
        $data['content'] = $this->BASE_VIEW . '\user\pending_user_verification_list';
        return $this->template->admin_layout($data);
    }
    public function subscriber_list(){

        $page_number        = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
        $data['subscriber'] = $this->common_model->get_all('web_subscriber', array(), '','',20,($page_number-1)*20);
        $total              = $this->common_model->countRow('web_subscriber');
        $data['pager']      = $this->pager->makeLinks($page_number, 20, $total);

        $data['content'] = $this->BASE_VIEW . '\user\subscribelist';
        return $this->template->admin_layout($data);
    }

    public function pending_user_verification($user_id = null)
    {
        $data['title']  = "Pending User verify";
        $data['user']   = $this->user_model->singleUserVerifyDoc($user_id);

        $rules = array('user_id' =>'required|trim',);

        if ($this->validate($rules, $rules)) 
        {

            if (isset($_POST['cancel'])) {
                
                $c_data = (object)$cdata = array('verified' => 2);
                $update_verify = $this->common_model->update('dbt_user', $c_data, array('user_id' => $this->request->getPost('user_id')));

                if ($update_verify) {

                    $this->session->setFlashdata('message', display('save_successfully'));
                    return  redirect()->to(base_url('/backend/user/pending-user-verification/'.$user_id));

                } else {

                    $this->session->setFlashdata('exception', display('please_try_again'));
                    return  redirect()->to(base_url('/backend/user/pending-user-verification/'.$user_id));

                }
            }

            if (isset($_POST['approve'])) {
                
                $c_data = (object)$cdata = array('verified' => 1);
                $update_verify = $this->common_model->update('dbt_user', $c_data, array('user_id' => $this->request->getPost('user_id')));

                if ($update_verify) {

                    $this->session->setFlashdata('message', display('save_successfully'));
                    return  redirect()->to(base_url('/backend/user/pending-user-verification/'.$user_id));

                } else {

                    $this->session->setFlashdata('exception', display('please_try_again'));
                    return  redirect()->to(base_url('/backend/user/pending-user-verification/'.$user_id));

                }
            }
        }

        $data['content'] = $this->BASE_VIEW . '\user\pending_user_verification';
        return $this->template->admin_layout($data);
    }


    public function user_details($id = null)
    {
        $data['title']  = display('details');
        $data['id']     = $id;

        $this->validation->setRule('user_id','User Id','required|trim|exact_length[6]|alpha_numeric');

        if (empty($id)) {

            $user_id             = $this->request->getPost('user_id');
            $data                = $this->user_model->transections_all_sums($user_id);
            $data['user']        = $this->common_model->findById('dbt_user', array('user_id' => $user_id));
            $data['transection'] = $this->common_model->findAll('dbt_balance_log', array('user_id' => $user_id), 'log_id', 'desc');
            $data['earning']     = $this->common_model->findAll('earnings', array('user_id' => $user_id), 'earning_id', 'desc');
            if(!$data['user']){
                $this->session->setFlashdata('exception',"Sorry, we couldn't find any user for '".$user_id."'");
            }

        } else {

            $user                = $this->common_model->findById('dbt_user', array('id' => $id));
            $user_id             =  $user->user_id; 
            $data                = $this->user_model->transections_all_sums($user_id);
            $data['transection'] = $this->common_model->findAll('dbt_balance_log', array('user_id' => $user_id), 'log_id', 'desc');
            $data['earning']     = $this->common_model->findAll('earnings', array('user_id' => $user_id), 'earning_id', 'desc');
            $data['user']        = $this->common_model->findById('dbt_user', array('id' => $id));
        }

        $data['coin_setup']  = $this->db->table('coin_setup')->select('*')->get()->getRow();
        $data['content'] = $this->BASE_VIEW . '\user\search_user';
        return $this->template->admin_layout($data);
    }

 
    function ajax_tradelist()
    {
        $uri = current_url(true);
        $segemt = $uri->getSegments();
        $user_id = $this->request->uri->setSilent()->getSegment(4);

        $total_rows = $this->db->table('dbt_biding bidmaster')
            ->select('bidmaster.*, biddetail.bid_type as bid_type1, biddetail.bid_price as bid_price1, biddetail.market_symbol as market_symbol1, biddetail.complete_amount as complete_amount1, biddetail.success_time as success_time1, biddetail.complete_qty, biddetail.complete_amount, biddetail.success_time')
            ->join('dbt_biding_log biddetail', 'biddetail.bid_id = bidmaster.id', 'left')
            ->where('bidmaster.user_id', $user_id)
            ->get()
            ->getResult();

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        $total            = count($total_rows);
        $data['pager']    = $this->pager->makeLinks($page_number, 50, $total, 'front_full');

        $output = array(
            'pagination_link' => $data['pager'],
            'country_table'   => $this->user_model->ajax_trade_fetch_details(50, $page_number, $user_id)
        );
        echo json_encode($output);
    }

    public function delete($user_id = null)
    {  
        if ($this->user_model->delete($user_id)) {
            $this->session->set_flashdata('message', display('delete_successfully'));
        } else {
            $this->session->set_flashdata('exception', display('please_try_again'));
        }
        redirect("backend/user/user");
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
    /*
    |----------------------------------------------
    |         Ends of id genaretor
    |----------------------------------------------
    */

    /******************************
    * Language Set For User
    ******************************/
    public function langSet(){

        $lang = "";
        $user_id = $this->session->get('user_id');

        if ($user_id!="") {

            $ulang = $this->db->table('dbt_user')->select('language')->where('user_id', $user_id)->get()->getRow();

            if ($ulang->language != 'english') {

                $lang    ='french';
                $newdata = array(
                    'lang'  => 'french'
                );
                $this->session->set($newdata);

            } else {
                $lang    ='english';
                $newdata = array(
                    'lang'  => 'french'
                );
                $this->session->set($newdata);
            }

        } else {

            $alang      = $this->common_model->findById('setting', array());

            if ($alang->language=='french') {

                $lang    ='french';
                $newdata = array(
                    'lang'  => 'french'
                );
                $this->session->set($newdata);

            } else {

                if ($this->session->lang=='french'){

                    $lang ='french';

                } else {

                    $lang ='english';
                }

            }

        }
        return $lang;
    }
}
