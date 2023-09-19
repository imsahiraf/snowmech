<?php 
namespace App\Modules\User\Controllers\Customer;

class Account extends BaseController
{

/*
|-------------------------------------
|   verify-account
|-------------------------------------
*/

    public function verify_account()
    {   


        $data['title']   = display('verify_account');

        $submit_time = date('Y-m-d H:i:s');

        $this->validation->setRule('verify_type', display('verify_type'),'required|trim');
        $this->validation->setRule('first_name', display('first_name'),'required|trim');
        $this->validation->setRule('last_name', display('last_name'),'required|trim');
        $this->validation->setRule('gender', display('gender'),'required|trim');
        $this->validation->setRule('id_number', display('id_number'),'required|trim');

        if($this->request->getPost('verify_type') == "passport"){
            $this->validation->setRule('document1', display('document1'), "ext_in[document1,png,jpg,jpeg]|is_image[document1]");
            $this->validation->setRule('document2', display('document2'), "ext_in[document2,png,jpg,jpeg]|is_image[document2]");
        } else {
            $this->validation->setRule('document1', display('document1'), "ext_in[document1,png,jpg,jpeg]|is_image[document1]");
        }

        $user_id = $this->session->get('user_id');
        

        //From validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {
            $document1="";
            $document2="";


            if($this->request->getPost('verify_type') == "passport"){
                $document1 = $this->imageupload->upload_image($this->request->getFile('document1'), 'public/upload/documents/', "", 700,500);
                $document2 = $this->imageupload->upload_image($this->request->getFile('document2'), 'public/upload/documents/', "", 700,500);
            } else {
                $document1 = $this->imageupload->upload_image($this->request->getFile('document1'), 'public/upload/documents/', "", 700,500);
            }

           

            $data['verify_info']   = (object)$verify_info = array(

                'user_id'     => $this->session->get('user_id'),
                'verify_type' => $this->request->getPost('verify_type',FILTER_SANITIZE_STRING), 
                'first_name'  => $this->request->getPost('first_name',FILTER_SANITIZE_STRING),
                'last_name'   => $this->request->getPost('last_name',FILTER_SANITIZE_STRING),
                'gender'      => $this->request->getPost('gender',FILTER_SANITIZE_STRING),
                'id_number'   => $this->request->getPost('id_number',FILTER_SANITIZE_STRING),
                'document1'   => $document1,
                'document2'   => $document2,
                'date'        => $submit_time
            );

            if ($this->common_model->save('dbt_user_verify_doc', $verify_info)) {

                //Update User table for Verify Processing
                $this->common_model->update('dbt_user', array('verified' => 3),array('user_id' => $user_id));

                $this->session->setFlashdata('message', display('verification_is_being_processed'));

            } else {
                $this->session->setFlashdata('exception', display('please_try_again'));

            }

            return redirect()->to(base_url("customer/account/verify-account"));
        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }

        $data['verify_status'] = $this->db->table('dbt_user')
                                    ->select('verified')
                                    ->where('user_id',$user_id)
                                    ->get()
                                    ->getRow();
                                    
        $data['content'] = $this->BASE_VIEW . '\pages\verify_account';
        return $this->template->customer_layout($data);
    
    }

    public function profile()
    {
        $data['title']  = display('profile');
        $data['languageList'] = $this->languageList();
        $data['profile']   = $this->common_model->findById('dbt_user', array('user_id' => $this->session->get('user_id')));
       
        $data['content'] = $this->BASE_VIEW . '\pages\profile';
        return $this->template->customer_layout($data);
    }


    public function update_profile()
    {
        $this->validation->setRule('username','User Name','max_length[100]');
        $this->validation->setRule('referral_id','Referral Id','max_length[6]');
        $this->validation->setRule('first_name','First Name','max_length[100]|required|trim');
        $this->validation->setRule('last_name','Last Name','max_length[100]|required|trim');
        $this->validation->setRule('email','Email','max_length[50]|valid_email|required|trim');
        $this->validation->setRule('mobile','Mobile','max_length[20]|numeric|required|trim');
        $this->validation->setRule('profile_image', display('profile_image'), "ext_in[profile_image,png,jpg,gif,ico]|is_image[profile_image]");

        if($this->validation->withRequest($this->request)->run()){


            $email = $this->db->table('dbt_user')->select('email')->where('user_id',$this->session->get('user_id'))->get()->getRow();
            if(!empty($this->request->getFile('profile_image'))){

                $image = $this->imageupload->upload_image($this->request->getFile('profile_image'), 'public/upload/user/', "", 700,500);
            } else {

                $image = $email->image;
            }

            $userdata = array(

                'language'    => $this->request->getPost('language',FILTER_SANITIZE_STRING),
                'first_name'  => $this->request->getPost('first_name',FILTER_SANITIZE_STRING),
                'last_name'   => $this->request->getPost('last_name',FILTER_SANITIZE_STRING),
                'email'       => $this->request->getPost('email',FILTER_SANITIZE_STRING),
                'phone'       => $this->request->getPost('mobile',FILTER_SANITIZE_STRING),
                'image'       => $image,
            );

            $varify_code = $this->randomID();

            #----------------------------
            #      email verify
            #----------------------------
            $appSetting = $this->common_model->findById('setting', array());

            $post = array(

                'title'     => $appSetting->title,
                'subject'   => 'Profile Change Verification!',
                'to'        => $email->email,
                'message'   => 'The Verification Code is <h1>'.$varify_code.'</h1>'
            );

            $send = $this->common_model->send_email($post);
            
            #-----------------------------
            if(isset($send)){

                $varify_data = array(

                    'ip_address'    => $this->request->getIpAddress(),
                    'user_id'       => $this->session->get('user_id'),
                    'session_id'    => $this->session->get('isLogIn'),
                    'verify_code'   => $varify_code,
                    'data'          => json_encode($userdata)

                );

                $insertid = $this->common_model->save_return_id('dbt_verify',$varify_data);
                
                return redirect()->to(base_url('customer/account/profile-verify/'.$insertid));
            }
        } else {
            if($this->request->getMethod() == "post"){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
            return redirect()->to(base_url('customer/account/profile'));
        }

    }


    public function profile_verify($id=NULL)
    {
        $data['title']   = display('change_verify'); 
        $data['profile_id'] = $id;

        $data['content'] = $this->BASE_VIEW . '\pages\profile_verify';
        return $this->template->customer_layout($data);
    }

   

    public function languageList()
    { 
        if ($this->db->tableExists("language")) { 

                $fields = $this->db->getFieldData("language");
                $i = 1;
                foreach ($fields as $field)
                {  
                    if ($i++ > 2)
                    $result[$field->name] = ucfirst($field->name);
                }

                if (!empty($result)) return $result;
 

        } else {
            return false; 
        }
    }


    public function profileupdate()
    {
        $code = $this->request->getPost('code',FILTER_SANITIZE_STRING);
        $id   = $this->request->getPost('id',FILTER_SANITIZE_STRING);

        $data = $this->db->table('dbt_verify')
        ->select('*')
        ->where('verify_code',$code)
        ->where('id',$id)
        ->where('session_id',$this->session->get('isLogIn'))
        ->get()
        ->getRow();


        if($data!=NULL) {
            $p_data = ((array) json_decode($data->data));

            $user_id = $this->session->get('user_id');

            $this->common_model->update('dbt_user', $p_data, array('user_id' => $user_id));

            if(!empty($p_data['image'])){
                $this->session->set('image', $p_data['image']);
            }


            $this->common_model->update('dbt_verify', array('status' => 0), array('verify_code' => $code, 'id' => $id, 'session_id' => $this->session->get('isLogIn')));

            $this->session->setFlashdata('message',display('update_successfully'));
            
            echo 1;

        }else{

            echo 2;
        }
    }

    public function change_password()
    {
        $data['title']  = display('change_password');
     
        $data['content'] = $this->BASE_VIEW . '\pages\change_password';
        return $this->template->customer_layout($data);

    }

    public function change_save(){

        $this->validation->setRule('old_pass', display('enter_old_password'), 'required');
        $this->validation->setRule('new_pass', display('enter_new_password'), 'required|max_length[32]|matches[confirm_pass]|trim');
        $this->validation->setRule('confirm_pass', display('enter_confirm_password'), 'required|max_length[32]|trim');
        
        if ( $this->validation->withRequest($this->request)->run())
        {
            $oldpass = MD5($this->request->getPost('old_pass',FILTER_SANITIZE_STRING));
            $password = $this->request->getPost('new_pass',FILTER_SANITIZE_STRING);
 
            $number = preg_match('@[0-9]@', $password);
            $uppercase = preg_match('@[A-Z]@', $password);
            $lowercase = preg_match('@[a-z]@', $password);
            $specialChars = preg_match('@[^\w]@', $password);
             
            if(strlen($password) < 8 || !$number || !$uppercase || !$lowercase || !$specialChars) {
                 $this->session->setFlashdata('exception','Password must be at least 8 characters in length and must contain at least one number, one upper case letter, one lower case letter and one special character.');
                 return redirect()->to(base_url('customer/account/change-password'));
            } else {
                $new_pass['password'] = MD5($password);

                $query = $this->db->table('dbt_user')
                ->select('password')
                ->where('user_id',$this->session->get('user_id'))
                ->where('password',$oldpass)
                ->get();
                if($query->resultID->num_rows > 0) {

                  
                    $this->common_model->update('dbt_user', $new_pass, array('user_id' => $this->session->get('user_id')));

                    $this->session->setFlashdata('message', display('password_change_successfull'));
                   return redirect()->to(base_url('customer/account/change-password'));

                } else {
                    $this->session->setFlashdata('exception',display('old_password_is_wrong'));
                    return redirect()->to(base_url('customer/account/change-password'));
                }
            }
            

        } else {

           $this->session->setFlashdata("exception", $this->validation->listErrors());
           return redirect()->to(base_url('customer/account/change-password'));
        
        }
    }

    public function language_setting()
    {
        $user_id = $this->session->get('user_id');
        $data['lang'] =$this->db->table('dbt_user')->select('language')->where('user_id',$user_id)->get()->getRow();
     
        $data['title']   = display('language_setting'); 
        $data['languageList'] = $this->languageList(); 

        $data['content'] = $this->BASE_VIEW . '\pages\language_setting';
        return $this->template->customer_layout($data);
    }

    public function update_language()
    {
        $language = $this->request->getPost('language',FILTER_SANITIZE_STRING);
        $user_id = $this->session->get('user_id');
        $this->common_model->update('dbt_user', array('language' => $language), array('user_id' => $user_id));
        $this->session->setFlashdata('message',display('update_successfully')); 
            
        return redirect()->to(base_url('customer/account/language-setting'));
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