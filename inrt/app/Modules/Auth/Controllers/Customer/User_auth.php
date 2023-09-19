<?php

namespace App\Modules\Auth\Controllers\Customer;

helper('captcha');
class User_auth extends BaseController
{

    public function index()
    {
        if ($this->session->get('isLogIn') && $this->session->get('user_id')) {
            return redirect()->to(base_url('customer/home'));
        }
        if ($this->session->get('isLogIn') && $this->session->get('isAdmin')) {
            return redirect()->to('backend/home');
        }
        $data['title']    = display('customer');
        $data['session']  = $this->session;

        //check the validation
        #-------------------------------------#
        $this->validation->setRule('email', display('email'), 'required|valid_email|max_length[100]');
        $this->validation->setRule('password', display('password'), 'required|max_length[32]|md5');
        $this->validation->setRule('captcha', display('captcha'), 'required|max_length[32]');
        #-------------------------------------#

        $data['user'] = (object)$userData = array(
            'email'      => $this->request->getPost('email', FILTER_SANITIZE_STRING),
            'password'   => $this->request->getPost('password', FILTER_SANITIZE_STRING),
        );

        $oldCaptcha = $this->session->get('captcha');
        $captcha   = $this->request->getPost('captcha', FILTER_SANITIZE_STRING);

        if ($this->validation->withRequest($this->request)->run()) {

            $this->session->remove('captcha');
            $user = $this->auth_model->checkUser($userData);
            if ($captcha == $oldCaptcha) {
                if (!empty($user->getResult())) {

                    $sData = array(

                        'isLogIn'     => true,
                        'id'          => $user->getRow()->id,
                        'user_id'     => $user->getRow()->user_id,
                        'fullname'    => $user->getRow()->first_name.' '.$user->getRow()->last_name,
                        'email'       => $user->getRow()->email,
                        'image'       => $user->getRow()->image,
                    );
                    
                    
                    //store date to session 
                    $this->session->set($sData);
                    
                    //welcome message
                    $this->session->setFlashdata('message', display('welcome_back') . ' ' . $user->getRow()->first_name . ' ' . $user->getRow()->last_name);
                    if($user->getRow()->status==6){
                        return  redirect()->to(base_url('customer/change-password'));
                    }

                    return  redirect()->to(base_url('customer/home'));
                } else {

                    $this->session->setFlashdata('exception', display('incorrect_email_password'));
                    return redirect()->route('customer/login');
                }
            } else {

                $this->session->setFlashdata('exception', 'Captcha is not Matched');
                return redirect()->route('customer/login');
            }
        } else {

            $error = $this->validation->listErrors();
            if ($this->request->getMethod() == "post") {
                $this->session->setFlashdata('exception', $error);
                return redirect()->route('customer/login');
            }
            $captcha = create_captcha(array(
                'img_path'      => FCPATH . './public/assets/images/captcha/',
                'img_url'       => base_url('public/assets/images/captcha/'),
                'font_path'     => FCPATH . './public/assets/fonts/captcha.ttf',
                'img_width'     => '300',
                'img_height'    => 64,
                'expiration'    => 600, //5 min
                'word_length'   => 4,
                'font_size'     => 26,
                'img_id'        => 'Imageid',
                'pool'          => '0123456789abcdefghijklmnopqrstuvwxyz',

                // White background and border, black text and red grid
                'colors'        => array(
                    'background' => array(255, 255, 255),
                    'border' => array(228, 229, 231),
                    'text' => array(49, 141, 1),
                    'grid' => array(241, 243, 246)
                )
            ));

            $data['captcha_word'] = $captcha['word'];
            $data['captcha_image'] = $captcha['image'];

            $this->session->set('captcha', $captcha['word']);

            return view($this->BASE_VIEW . '\login', $data);
        }
    }
     public function change_password()
    {
        $data['title']  = display('change_password');
     
        return view($this->BASE_VIEW . '\change_password',$data);
        

    }

    public function change_save(){

        $this->validation->setRule('old_pass', display('old_password'), 'required');
        $this->validation->setRule('new_pass', display('new_password'), 'required|max_length[32]|matches[confirm_pass]|trim');
        $this->validation->setRule('confirm_pass', display('confirm_password'), 'required|max_length[32]|trim');
        
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
                 return redirect()->to(base_url('customer/change-password'));
            } else {
                $new_pass['password'] = MD5($password);
                $new_pass['status'] = '1';

                $query = $this->db->table('dbt_user')
                ->select('password')
                ->where('user_id',$this->session->get('user_id'))
                ->where('password',$oldpass)
                ->get();
                if($query->resultID->num_rows > 0) {

                  
                    $this->common_model->update('dbt_user', $new_pass, array('user_id' => $this->session->get('user_id')));

                    $this->session->setFlashdata('message', display('password_change_successfull'));
                    return  redirect()->to(base_url('customer/home'));

                } else {
                    $this->session->setFlashdata('exception',display('old_password_is_wrong'));
                    return redirect()->to(base_url('customer/change-password'));
                }
            }
            

        } else {

           $this->session->setFlashdata("exception", $this->validation->listErrors());
            return redirect()->to(base_url('customer/change-password'));
        
        }
    }
    //customer logout function
    public function logout()
    {
        
        $this->session->destroy();
        return redirect()->to(base_url());
    }
}