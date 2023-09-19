<?php 
namespace App\Modules\Website\Controllers;
class Home extends BaseController
{
        
	public function index()
    {
       
        $data['lang'] = $this->template->langset();
        $data['title'] = "";
        
        $data['blog']           = $this->db->table('web_news')->select('*')->orderBy('article_id', 'desc')->limit(3)->get()->getResult();
        //Testmonial data

        $cat_id                 = $this->web_model->catidBySlug('testimonial');
        $data['testimonial']    = $this->db->table('web_article')->select('*')->where('cat_id', @$cat_id->cat_id)->get()->getResult();
        $parent_cat             = $this->db->table('web_category')->select("cat_id")->where('slug', 'faq')->get()->getRow();

        //FAQ data
        $data['faq_cat']        = $this->db->table('web_category')->select("*")->where('parent_id', @$parent_cat->cat_id)->get()->getResult();
        $ids = $this->db->table('web_category')->select("cat_id")->where('parent_id', @$parent_cat->cat_id)->get()->getResult();


        $cat_ids = '';
        $counttest = count($ids);

        foreach (@$ids as $key => $value) {

            if($key < $counttest-1){
                $cat_ids .= $value->cat_id.',';
            } else {
                $cat_ids .= $value->cat_id;
            }
        }
 
        $sql = "SELECT * FROM `web_article` WHERE `cat_id` IN($cat_ids)";
        $data['faq'] = $this->db->query($sql, [])->getResult();
   
        //Advisors data
        $cat_id = $this->web_model->catidBySlug('advisors');
        $data['advisors'] = $this->db->table('web_article')->select('*')->where('cat_id', @$cat_id->cat_id)->orderBy('position_serial','desc')->limit(4)->get()->getResult();

        //Team data
        $cat_id = $this->web_model->catidBySlug('team');
        $data['team'] = $this->db->table('web_article')->select('*')->where('cat_id', @$cat_id->cat_id)->orderBy('article_id', 'desc')->limit(9)->get()->getResult();

        //Team data
        $cat_id = $this->web_model->catidBySlug('roadmap');
        $data['roadmap'] = $this->db->table('web_article')->select('*')->where('cat_id', @$cat_id->cat_id)->limit(7)->orderBy('position_serial', 'ASC')->get()->getResult();

        $data['about']              = $this->web_model->article(@$this->web_model->catidBySlug('about')->cat_id);
        $data['client']             = $this->web_model->article(@$this->web_model->catidBySlug('client')->cat_id);
        $data['testimonial']        = $this->web_model->article(@$this->web_model->catidBySlug('testimonial')->cat_id);
        $data['social_link']        = $this->db->table('web_social_link')->select('*')->where('status','1')->get()->getResult();
        $data['contact']            = $this->db->table('web_category')->select("*")->where('slug', 'contact')->get()->getRow();
        $data['blog_cat']           = $this->db->table('web_category')->select("*")->where('slug', 'blog')->get()->getRow();
        $data['faq_cat_details']    = $this->db->table('web_category')->select("*")->where('slug', 'faq')->get()->getRow();
        $data['team_cat']           = $this->db->table('web_category')->select("*")->where('slug', 'team')->get()->getRow();
        $data['token']              = $this->db->table('web_category')->select("*")->where('slug', 'token')->get()->getRow();
        $data['aboutcoin_cat']      = $this->db->table('web_category')->select("*")->where('slug', 'aboutcoin')->get()->getRow();
        $data['aboutcoin']          = $this->web_model->article(@$this->web_model->catidBySlug('aboutcoin')->cat_id);
        $data['home']               = $this->web_model->article(@$this->web_model->catidBySlug('home')->cat_id);
        $data['rcoin_info']         = $this->web_model->release_coin_info();

        $nowtime                = date("Y-m-d H:i:s");
        $coinreleasetimedata    = $this->web_model->coin_release_time($nowtime);
        $coinrelease            = $coinreleasetimedata->getRow();
        $data['flipdata']       = $coinrelease;
        $data['teamoverview']   = $this->db->table('web_article')->select('*')->where('article_id',46)->get()->getRow();

        $data['content']        = view('themes/'.$this->templte_name->name.'/index',$data);
        return $this->template->website_layout($data);
    }

    public function register()
    {
        $data['title'] = display('register');

        if ($this->session->get('isLogIn'))
           return redirect()->to(base_url());


        //Load Cookie For Store Referral ID
        helper(array('cookie', 'url'));
        $ref = $this->request->getVar('ref'); 

        if (isset($ref) && ($ref!="")) {

            $user_id = $this->db->table('dbt_user')->select('user_id')->where('user_id', $ref)->get()->getRow();

            if($user_id){

                set_cookie('referral_id', $ref, 86400*30);

            } else {

                $this->session->setFlashdata('exception', display('referral_id_is_invalid'));
                return redirect()->to(base_url("register"));

            }
        }               

        //Load Helper For [user_id] Generate
        helper('text');

        //Set Rules From validation
        $this->validation->setRule('rf_name', display('firstname'),'required|max_length[50]|trim');
        $this->validation->setRule('remail', display('email'),"required|valid_email|max_length[100]|trim");
        $this->validation->setRule('rusername', display('username'),"required|is_unique[dbt_user.username]|max_length[100]|trim|alpha_numeric");
        $this->validation->setRule('rpass', display('password'),'required|min_length[8]|max_length[32]|matches[rr_pass]|trim');
        $this->validation->setRule('rr_pass','Confirm Password','trim');
        $this->validation->setRule('raccept_terms', display('accept_terms_privacy'),'required|trim');
      
        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) {

            //Generate User Id
            $userid = strtoupper(random_string('alnum', 6));

            while ( $this->common_model->checkUseridExist($userid) ) {
                $userid = strtoupper(random_string('alnum', 6));

            }

            if ($this->common_model->checkEmailExist($this->request->getPost('remail'))) {

                if ($this->common_model->accountStatusCheck($this->request->getPost('remail')) == 0) {
                    $this->session->set_flashdata('exception',display('please_activate_your_account'));
                    return redirect()->to(base_url("register"));

                }
                elseif ($this->common_model->accountStatusCheck($this->request->getPost('remail')) == 1) {
                    $this->session->set_flashdata('exception',display('already_registered'));
                    return redirect()->to(base_url("register"));

                } 
                elseif ($this->common_model->accountStatusCheck($this->request->getPost('remail')) == 2) {
                    $this->session->set_flashdata('exception',display('this_account_is_now_pending'));
                    return redirect()->to(base_url("register"));

                }  
                elseif ($this->common_model->accountStatusCheck($this->request->getPost('remail')) == 2) {
                    $this->session->set_flashdata('exception',display('this_account_is_suspend'));
                    return redirect()->to(base_url("register"));

                }               

            }

            $dlanguage = $this->db->table('setting')->select('language')->get()->getRow();
           
            $data = [

                'first_name'    => $this->request->getPost('rf_name'),
                'last_name'     => $this->request->getPost('rl_name'),
                'username'      => $this->request->getPost('rusername'),
                'referral_id'   => get_cookie('referral_id'), 
                'language'      => $dlanguage->language,
                'user_id'       => $userid,
                'email'         => $this->request->getPost('remail'),
                'password'      => md5($this->request->getPost('rpass')),
                'password_reset_token' => md5($userid),
                'status'        => 0,
                'ip'            => $this->request->getIpAddress()
            ];

            $returnId = $this->common_model->save_return_id('dbt_user', $data);

            if(!empty($returnId)){
                $appSetting = $this->common_model->findById('setting', array());
                $email_theme = $this->common_model->findById('dbt_sms_email_template', array('id' => 12));

                if($this->langSet() == 'english'){

                    $theme_message = @$email_theme->template_en;
                    $theme_subject = @$email_theme->subject_en;

                } else { 

                    $theme_message = @$email_theme->template_fr; 
                    $theme_subject = @$email_theme->subject_fr;
                }

                $data['title']      = $appSetting->title;
                $data['to']         = $this->request->getPost('remail', FILTER_SANITIZE_STRING);
                $data['subject']    = $theme_subject;
                $data['url']        = "<a target='_blank' href='".base_url()."/activate-account/".md5($userid)."'>".base_url()."/activate-account/".md5($userid)."</a>";
                $data['message']    = $theme_message;
                $this->common_model->send_email_theme($data);


                $this->session->setFlashdata('message', display('account_create_active_link'));
                return redirect()->to(base_url("login"));
            }
        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata('exception', $this->validation->listErrors());
            }
        }

        $data['content']        = view('themes/'.$this->templte_name->name.'/register',$data);
        return $this->template->website_layout($data);
        
    }

    public function valid_password($rpass = '')
    {
        $rpass = trim($rpass);
        $regex_lowercase = '/[a-z]/';
        $regex_uppercase = '/[A-Z]/';
        $regex_number = '/[0-9]/';
        $regex_special = '/[!@#$%^&*()\-_=+{};:,<.>§~]/';

        if (preg_match_all($regex_lowercase, $rpass) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must be at least one lowercase letter.');
            return FALSE;
        }
        if (preg_match_all($regex_uppercase, $rpass) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must be at least one uppercase letter.');
            return FALSE;
        }
        if (preg_match_all($regex_special, $rpass) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must have at least one special character.' . ' ' . htmlentities('!@#$%^&*()\-_=+{};:,<.>§~'));
            return FALSE;
        }
        if (preg_match_all($regex_number, $rpass) < 1)
        {
            $this->form_validation->set_message('valid_password', 'The {field} field must have at least one number.');
            return FALSE;
        }
        return TRUE;
    }

    public function activate_account($activecode=NULL){
        
        if ($activecode != NULL || $activecode != '') {
            
            $user = $this->common_model->findById('dbt_user', array('password_reset_token' => $activecode));

            if ($user->status == 1){

                $this->session->setFlashdata('message', display('this_account_already_activated'));
                return  redirect()->to(base_url('/login'));

            } elseif ($user->status == 2) {

                $this->session->setFlashdata('exception',  display('this_account_is_now_pending'));
                return  redirect()->to(base_url('/login'));

            } elseif ($user->status == 3) {

                $this->session->setFlashdata('exception',  display('this_account_is_suspend'));
                return  redirect()->to(base_url('/login'));

            } elseif ($user->status == 0) {

                $this->common_model->update('dbt_user', array('status' => 1), array('password_reset_token' => $activecode));
                $this->session->setFlashdata('message', display('active_account'));
                return  redirect()->to(base_url('/login'));

            }elseif($user->status == 5){

                $this->common_model->update('dbt_user', array('status' => 6), array('password_reset_token' => $activecode));
                $this->session->setFlashdata('message', display('active_account'));
                return  redirect()->to(base_url('/login'));
                
            } else {

                $this->session->setFlashdata('exception', display('something_wrong'));
                return  redirect()->to(base_url('/login'));
            }

        } else {

            $this->session->setFlashdata('exception', display('wrong_try_activation'));
            return  redirect()->to(base_url('/login'));
        }
    }

    public function login()
    {
        if(!empty($this->session->get('user_id'))){
            return  redirect()->to(base_url());
        }

             
        $data['title']      = $this->request->uri->setSilent()->getSegment(1);

        $email      = $this->request->getPost('luseremail',FILTER_SANITIZE_EMAIL);
        $password   = $this->request->getPost('lpassword',FILTER_SANITIZE_STRING);
        $passwordmd5   = md5($password);

        //Set Rules From validation
        $this->validation->setRule('luseremail', display('email'),   'required|max_length[100]|trim');
        $this->validation->setRule('lpassword', display('password'), 'required|max_length[32]|md5|trim');
        
        //From Validation Check
        if ($this->validation->withRequest($this->request)->run())
        {
            //$date = new DateTime();
            $access_time = date('Y-m-d H:i:s');

            $data['user'] = (object)$userData = array(
                'email'    => $email,
                'password' => $passwordmd5
            );

            $existEmail = $this->common_model->findById('dbt_user', array('email' => $email));

            if (!empty($existEmail)) {

                if ($existEmail->status == 0) {
                    
                    $this->session->setFlashdata('exception',  display('please_activate_your_account'));
                    return  redirect()->to(base_url('/login'));

                } else if ($existEmail->status == 2) {
                   
                    $this->session->setFlashdata('exception',  display('this_account_is_now_pending'));
                    return  redirect()->to(base_url('/login'));

                } else if ($existEmail->status == 3) {

                    $this->session->setFlashdata('exception',  display('this_account_is_suspend'));
                    return  redirect()->to(base_url('/login'));

                } else if ($existEmail->status == 1 || $existEmail->status == 6) {

                    $user = $this->web_model->loginCheckUser($userData);

                    if($user) {

                        $query = $this->common_model->findById('dbt_user', array('user_id' => $user->user_id));

                        if ($query->googleauth!='') {

                            $user_agent = array(
                                'device'     => $this->agent->browser(),
                                'browser'    => $this->agent->browser().' V-'.$this->agent->version(),
                                'platform'   => $this->agent->platform()
                            );
                            

                            $sData = array(
                                'id'          => $user->id,
                                'user_id'     => $user->user_id,
                                'fullname'    => $user->first_name.' '.$user->last_name,
                                'email'       => $user->email,
                                'image'       => $user->image
                            );
                            $logData = array(
                                'log_type'     => 'login',
                                'access_time'  => $access_time,
                                'user_agent'   => json_encode($user_agent),
                                'user_id'      => $user->user_id,
                                'ip'           => $this->request->ip_address()
                            );

                            $this->session->set('userdata', $sData);
                            $this->session->set('userlogdata', $logData);
                            return  redirect()->to(base_url('login-verify'));                              

                        } else {

                            $agent = $this->request->getUserAgent();

                            $user_agent = array(
                                'device'     => $agent->getBrowser(),
                                'browser'    => $agent->getBrowser().' V-'.$agent->getVersion(),
                                'platform'   => $agent->getPlatform()
                            );
                            

                            $sData = array(
                                'isLogIn'     => true,
                                'id'          => $user->id,
                                'user_id'     => $user->user_id,
                                'fullname'    => $user->first_name.' '.$user->last_name,
                                'email'       => $user->email,
                                'image'       => $user->image
                            );
                            $logData = array(
                                'log_type'     => 'login',
                                'access_time'  => $access_time,
                                'user_agent'   => json_encode($user_agent),
                                'user_id'      => $user->user_id,
                                'ip'           => $this->request->getIPAddress()
                            );
                          
                            
                            //Store data to session, log & Login
                            $this->session->set($sData);
                            $this->common_model->save('dbt_user_log', $logData);
                            if($user->status==6){
                                return  redirect()->to(base_url('customer/change-password'));
                            }
                            //Store data to session, log & Login
                            $this->session->setFlashdata('message', '<script type="text/javascript">toastr.success("You Are Logged In Successfully!")</script>');
                            return  redirect()->to(base_url(''));
                        }                            

                    } else {
                        $this->session->setFlashdata('exception', display('incorrect_email_password'));
                        return  redirect()->to(base_url('login'));

                    }
                }
                else{
                    $this->session->setFlashdata('exception', display('something_wrong'));
                    return  redirect()->to(base_url('login'));

                }

            } else {
                $this->session->setFlashdata('exception','Invalid Login Information');
                return  redirect()->to(base_url('login'));
            }
        }

         $data['content']        = view('themes/'.$this->templte_name->name.'/login',$data);
        return $this->template->website_layout($data);
    }

    public function forgotPassword()
    {

        //Set Rules From validation
        $this->validation->setRule('luseremail', display('email'),'required|valid_email|max_length[100]|trim');

        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()){

            $accountCheck = $this->common_model->findById('dbt_user',  array('email' => $this->request->getPost('luseremail')));


            if(!empty($accountCheck->email)){

                $userdata = array(

                    'email' => $this->request->getPost('luseremail', FILTER_SANITIZE_EMAIL),
                );

                $varify_code = $this->randomID();

                /******************************
                *  Email Verify
                ******************************/
                $appSetting = $this->common_model->findById('setting', array());
                $email_theme = $this->common_model->findById('dbt_sms_email_template', array('id' => 9));

                if($this->langSet() == 'english'){

                    $theme_message = @$email_theme->template_en;
                    $theme_subject = @$email_theme->subject_en;

                } else { 

                    $theme_message = @$email_theme->template_fr; 
                    $theme_subject = @$email_theme->subject_fr;
                }

                $post = array(

                    'title'      => $appSetting->title,
                    'subject'    => $theme_subject,
                    'to'         => $this->request->getPost('luseremail', FILTER_SANITIZE_STRING),
                    'varify_code'=> $varify_code,
                    'message'    => $theme_message,
                );

                //Send Mail Password Reset Verification
                $send = $this->common_model->send_email_theme($post);

                if(isset($send)){

                    $varify_data = array(

                        'ip_address'    => $this->request->getipAddress(),
                        'user_id'       => $this->session->get('user_id'),
                        'session_id'    => $this->session->get('isLogIn'),
                        'verify_code'   => $varify_code,
                        'data'          => json_encode($userdata)
                    );

                    $id = $this->common_model->save_return_id('dbt_verify',$varify_data);

                    $this->session->setFlashdata('message', display('password_reset_code_send_check_your_email'));
                    return redirect()->to('resetPassword');
                }

            } else {

                $this->session->setFlashdata('exception', "Your account has not found, Please try again!");
                return redirect()->to('login');
            }

        } else {

            $this->session->setFlashdata('exception', display('email_required'));
            return redirect()->to('login');

        }

    }

    public function resetPassword()
    {   


        $code        = $this->request->getPost('verificationcode', FILTER_SANITIZE_STRING);
        $newpassword = $this->request->getPost('newpassword', FILTER_SANITIZE_STRING);
   
        $chkdata = $this->common_model->findById('dbt_verify', array('verify_code' => $code, 'status' => 1));

        //Set Rules From validation
        $this->validation->setRule('verificationcode', display('enter_verify_code'),'required|max_length[10]|alpha_numeric|trim');
        $this->validation->setRule('newpassword', display('password'),'required|min_length[8]|matches[r_pass]|trim');
        $this->validation->setRule('r_pass', display('password'),'required|trim');

        if($this->request->getMethod() == 'post'){
            //From Validation Check
            if ($this->validation->withRequest($this->request)->run()) {

                if($chkdata != NULL) {

                    $p_data     = ((array) json_decode($chkdata->data));
                    $password   = array('password' => md5($newpassword));
                    $status     = array('status'   => 0);

                    $this->common_model->update('dbt_verify', $status, array('verify_code' => $code));
                    $this->common_model->update('dbt_user', $password, array('email' => $p_data['email']));

                    $this->session->setFlashdata('message', display('password_changed'));
                    return redirect()->to(base_url('login'));

                } else {

                    $this->session->setFlashdata('exception',display('wrong_try_activation'));
                    return redirect()->to(base_url('resetPassword'));
                }

            } else {

                $this->session->setFlashdata('exception', $this->validation->listErrors());
            }
        }
      
       
        $data['content']        = view('themes/'.$this->templte_name->name.'/passwordreset',$data);
        return $this->template->website_layout($data);
    }

    public function blog()
    {

        $slug1 = $this->request->uri->setSilent()->getSegment(1);
        $slug2 = $this->request->uri->setSilent()->getSegment(2);
        $slug3 = $this->request->uri->setSilent()->getSegment(3);

        //Language setting
        $data['title'] = $this->request->uri->setSilent()->getSegment(1);

        //For Coin Tricker
        $data['recentblog']         = $this->db->table('web_news')->select("*")->orderBy('article_id', 'desc')->limit(3)->get()->getResult();

        if ($slug2=="" || $slug2==NULL || is_numeric($slug2)) {

            //All Category blog with Pagination
            $cat_id     = $this->web_model->catidBySlug($slug1)->cat_id;
            if (!$cat_id) {
                return  redirect()->to(base_url('blog'));
            }
            $where_add  = $this->web_model->catidBySlug('blog')->cat_id;

            /******************************
            * Pagination Start
            ******************************/
            $page_number    = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
            //findAll paramiter = where, limit, offset.
            $data['blog']   = $this->common_model->get_all('web_news', array(), 'article_id', 'desc', 9,($page_number-1)*9);
            $total          = $this->common_model->countRow('web_news', array());
            $data['pager']  = $this->pager->makeLinks($page_number, 9, $total);
          

            /******************************
            * Pagination ends
            ******************************/
            $data['advertisement']  = $this->common_model->get_all('advertisement', array('page' => $where_add, 'status' => 1), 'id', 'desc', 12, 0);
            $data['blogcat']        = $this->web_model->blogCatListBySlug('blog');
            $data['cat_info']       = $this->web_model->cat_info($slug1);
            $data['social_link']    = $this->db->table('web_social_link')->get()->getResult();

            $data['content']        = view("themes/".$this->templte_name->name."/sidebar", $data);
            $data['content']        = view('themes/'.$this->templte_name->name.'/blog',$data);
            return $this->template->website_layout($data);
        }
        elseif (($slug2!="" || !is_numeric($slug2)) && ($slug3=="" || $slug3==NULL)) {


            @$where_add  = $this->web_model->catidBySlug('blog')->cat_id;

            //Slug Category blog
            $cat_id     = $this->web_model->catidBySlug($slug2)->cat_id;

            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            //findAll paramiter = where, limit, offset.
            $data['blog'] = $this->common_model->get_all('web_news', array('cat_id' => $cat_id), 'article_id', 'desc', 9,($page_number-1)*9);
            $total            = $this->common_model->countRow('web_news', array('cat_id' => $cat_id));
            $data['pager']    = $this->pager->makeLinks($page_number, 9, $total);
            /******************************
            * Pagination ends
            ******************************/

            $data['advertisement']      = $this->web_model->advertisement($where_add);
            @$data['blogcat']            = $this->web_model->blogCatListBySlug('blog');
            $data['cat_info']           = $this->web_model->cat_info($slug1);
            $data['social_link']    = $this->db->table('web_social_link')->get()->getResult();
            
            $data['content']        = view("themes/".$this->templte_name->name."/sidebar", $data);
            $data['content']        = view('themes/'.$this->templte_name->name.'/blog',$data);
            return $this->template->website_layout($data);

        }
        elseif ($slug3=="" || $slug3==NULL || is_numeric($slug3)) {

            @$where_add  = $this->web_model->catidBySlug('blog')->cat_id;

            //Slug Category blog with Pagination
            $cat_id     = $this->web_model->catidBySlug($slug2)->cat_id;
            if (!$cat_id) {
               return  redirect()->to(base_url('blog'));
            }
            /******************************
            * Pagination Start
            ******************************/

            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            //findAll paramiter = where, limit, offset.
            $data['blog'] = $this->common_model->get_all('web_news', array('cat_id' => $cat_id), 'article_id', 'desc', 9,($page_number-1)*9);
            $total            = $this->common_model->countRow('web_news', array('cat_id' => $cat_id));
            $data['pager']    = $this->pager->makeLinks($page_number, 9, $total);
            /******************************
            * Pagination ends
            ******************************/
            
            $data['advertisement']  = $this->web_model->advertisement($where_add);
            @$data['blogcat']        = $this->web_model->blogCatListBySlug('blog');
            $data['cat_info']       = $this->web_model->cat_info($slug1);
            $data['social_link']    = $this->db->table('web_social_link')->get()->getResult();

            $data['content']        = view("themes/".$this->templte_name->name."/sidebar", $data);
            $data['content']        = view('themes/'.$this->templte_name->name.'/blog',$data);
            return $this->template->website_layout($data);

        }
        elseif ($slug3!="" || !is_numeric($slug3)) {
            //Slug Category blog detail

            $where_add = $this->web_model->catidBySlug('blog')->cat_id;

            $data['advertisement']  = $this->web_model->advertisement($where_add);
            @$data['blogcat']       = $this->web_model->blogCatListBySlug('blog');
            $data['article']        = $this->web_model->article($slug1);
            $data['cat_info']       = $this->web_model->cat_info($slug1);
            $data['blog']           = $this->web_model->blogDetails($slug3);
            $data['social_link']    = $this->db->table('web_social_link')->get()->getResult();

            $data['content']        = view("themes/".$this->templte_name->name."/sidebar", $data);
            $data['content']        = view('themes/'.$this->templte_name->name.'/blogdetails',$data);
            
            return $this->template->website_layout($data);      
        }
        
    }

    //Ajax Subscription Action
    public function subscribe()
    {
        $data = array();
        $data['email'] =  $this->request->getPost('subscribe_email',FILTER_SANITIZE_EMAIL);

        $exist = $this->common_model->findById('web_subscriber', array('email' => $data['email']));

        if(empty($exist)){

            $this->common_model->save_return_id('web_subscriber', array('email' => $data['email']));
            echo json_encode(array('message'=>display('save_successfully')));

        } else {

            echo json_encode(array('message'=>'This email already exist!'));
        }
    }

    //Ajax Contact Message Action
    public function contactMsg()
    {
        $appSetting = $this->common_model->findById('setting', array());

        $this->validation->setRule('name','Your Name','required|trim|max_length[50]');
        $this->validation->setRule('email','Email','required|trim|max_length[30]|valid_email');
        $this->validation->setRule('subject','Subject','required|trim|max_length[50]');
        $this->validation->setRule('comment','Comment','required|trim|max_length[250]');

        if($this->validation->withRequest($this->request)->run()){

            $data['fromName']  = $this->request->getPost('name',FILTER_SANITIZE_STRING);
            $data['from']      = $this->request->getPost('email',FILTER_SANITIZE_STRING);
            $data['to']        = $appSetting->email;
            $data['subject']   = $this->request->getPost('subject',FILTER_SANITIZE_STRING);
            $data['title']     = $this->request->getPost('email',FILTER_SANITIZE_STRING);
            $data['message']   = "<b>Message: </b>".$this->request->getPost('comment',FILTER_SANITIZE_STRING);
            $this->common_model->send_email($data);

            echo json_encode(array('message'=>display('message_send_successfully')));

        } else {

            echo json_encode(array('message'=>strip_tags($this->validation->listErrors())));
        }

    }

    //Ajax Language Change
    public function langChange()
    {
        $newdata = array(
            'lang'  => $this->request->getPost('lang', FILTER_SANITIZE_STRING)
        );        

        $user_id = $this->session->get('user_id');

        if ($user_id != "") {

            $data['language'] = $this->request->getPost('lang', FILTER_SANITIZE_STRING);
            if($this->common_model->update('dbt_user', $data, array('user_id' => $user_id))){
                echo 1;
            } else {
                echo 2;
            }

        } else {

            $this->session->set($newdata);
        }
    }
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

	//--------------------------------------------------------------------
}
