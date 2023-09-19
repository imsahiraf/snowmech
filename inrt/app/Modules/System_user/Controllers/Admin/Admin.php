<?php 
namespace App\Modules\System_user\Controllers\Admin;

class Admin extends BaseController {
 	
 	
 
	public function index()
	{  
             
            $uri = service('uri','<?php echo base_url(); ?>');
            #-------------------------------#
            #pagination starts
            #-------------------------------#
            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            $data['admin']    = $this->common_model->get_all('admin', array(), 'id','asc',20,($page_number-1)*20);
            $total            = $this->common_model->countRow('admin');
            $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);
            #------------------------
            #pagination ends
            #------------------------
	
            $data['title']      = display('admin_list');

            $data['content'] = $this->BASE_VIEW . '\admin\list';
            return $this->template->admin_layout($data);
	}
 

    public function form($id = null)
    { 


        $this->validation->setRule('firstname', display('firstname'),'required|max_length[50]');
        $this->validation->setRule('lastname', display('lastname'),'required|max_length[50]');
        $this->validation->setRule('image', display('image'), 'ext_in[image,png,jpg,gif,ico]|is_image[image]');

        if (!empty($id)) {   
            $this->validation->setRule('email', display('email'), "required|valid_email|max_length[100]");
           
        } else {
            $this->validation->setRule('email', display('email'),'required|valid_email|is_unique[admin.email]|max_length[100]');
           
        }

        $this->validation->setRule('about', display('about'),'max_length[1000]');
        $this->validation->setRule('status', display('status'),'required|max_length[1]');
        if($this->validation->withRequest($this->request)->run()){
            $image_path = $this->imageupload->upload_image($this->request->getFile('image'), 'public/upload/dashboard', $this->request->getPost('old_image'), 115, 90);

        } else {

            $image_path = "";
        }

        $existingData = $this->common_model->findById('admin', array('id' => $id));

        if(!empty($this->request->getPost('password'))){

            $newpassword = md5($this->request->getPost('password'));

        } else if(empty($existingData)){

            $this->validation->setRule('password', display('password'),'required|max_length[32]|md5');
            $newpassword = md5($this->request->getPost('password'));

        } else {

            $newpassword = $existingData->password;

        }
        
        $data['admin'] = (object)$adminLevelData = array(

            'id'          => $this->request->getPost('id', FILTER_SANITIZE_STRING) ? $this->request->getPost('id') : '',
            'firstname'   => $this->request->getPost('firstname', FILTER_SANITIZE_STRING),
            'lastname'    => $this->request->getPost('lastname', FILTER_SANITIZE_STRING),
            'email'       => $this->request->getPost('email', FILTER_SANITIZE_STRING),
            'password'    => $newpassword,
            'about'       => $this->request->getPost('about',FILTER_SANITIZE_STRING),
            'image'       => $image_path,
            'last_login'  => null,
            'last_logout' => null,
            'ip_address'  => null,
            'status'      => $this->request->getPost('status', FILTER_SANITIZE_STRING),
            'is_admin'    => 2
        );

     
        	if($this->request->getMethod()=="post"){
            	$emailExists = $this->email_check($this->request->getPost('email'), $id);
            
                if($emailExists == 1){

                  $this->session->setFlashdata("exception", "This E-mail Already Registered, Please Use Another E-mail!");
                  if(!empty($id)) {
                    return  redirect()->to(base_url('backend/account/add-admin/'.$id));
                  } else {
                    return  redirect()->to(base_url('backend/account/add-admin'));
                  }
                }
            
            
            if ($this->validation->withRequest($this->request)->run()) 
            {
                
                if (empty($this->request->getPost('id'))) {

                    if ($this->common_model->save('admin', $adminLevelData)) {

                        $this->session->setFlashdata('message', display('save_successfully'));

                    } else {

                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('backend/account/add-admin'));

                } else {

                    if ($this->common_model->update('admin', $adminLevelData, array('id' => $id))) {

                        $this->session->setFlashdata('message', display('update_successfully'));

                    } else {

                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }

                    return  redirect()->to(base_url('backend/account/add-admin/'.$id)); 
                }

            }
                
       }
            
            if(!empty($id)) {
                $data['admin']   = $this->common_model->findById('admin', array('id' => $id));
             }

            $data['content'] = $this->BASE_VIEW . '\admin\form';
            return $this->template->admin_layout($data);
        
    }

    public function email_check($email, $id)
    { 
      
        $emailExists = $this->common_model->findById('admin', array('email'=>$email, 'id !=' => $id));
        if (!empty($emailExists)) {
            return 1;
        } else {
            return 0;
        }
    }

    public function phone_check($phone, $id)
    { 
      
        $emailExists = $this->common_model->findById('dbt_user', array('phone'=>$phone, 'id' => $id));
        if (!empty($emailExists)) {
            return false;
        } else {
            return true;
        }
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

    public function delete($id = null)
    { 
       
        if ($this->common_model->delete('admin', array('id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return  redirect()->to(base_url('backend/account/admin_list'));
    }

    public function profile()
    {
        $data['title'] = display('profile'); 
        $data['user']  = $this->admin_model->profile($this->session->userdata('id'));

        $data['content'] = $this->BASE_VIEW . '\profile';
        return $this->template->admin_layout($data);
    }

        public function edit_profile()
        { 
            $data['title']    = display('edit_profile');
            $id = $this->session->userdata('id');
            /*-----------------------------------*/
            $this->validation->setRule('firstname', 'First Name','required|max_length[50]');
            $this->validation->setRule('lastname', 'Last Name','required|max_length[50]');
            #------------------------#
            $this->validation->setRule('email', 'Email Address', 'required|valid_email|max_length[100]');
            #------------------------#
            $this->validation->setRule('password', 'Password','required|max_length[32]|md5');
            $this->validation->setRule('about', 'About','max_length[1000]');

            /*-----------------------------------*/ 
            //set config 
            if($this->validation->withRequest($this->request)->run()){
                $img = $this->request->getFile('image',FILTER_SANITIZE_STRING);
                    $savepath="public/upload/dashboard/";
                    $old_image = $this->request->getVar('old_image', FILTER_SANITIZE_STRING);
                    if($this->request->getMethod() == "post"){
                        $image=$this->imageupload->upload_image($img,$savepath,$old_image,100,100);
                    }
                }

            /*-----------------------------------*/
            $data['user'] = (object)$userData = array(
                'id'          => $this->request->getVar('id',FILTER_SANITIZE_STRING),
                'firstname'   => $this->request->getVar('firstname',FILTER_SANITIZE_STRING),
                'lastname'    => $this->request->getVar('lastname',FILTER_SANITIZE_STRING),
                'email'       => $this->request->getVar('email',FILTER_SANITIZE_STRING),
                'password'    => md5($this->request->getVar('password',FILTER_SANITIZE_STRING)),
                'about'       => $this->request->getVar('about',FILTER_SANITIZE_STRING),
                'image'       => (!empty($image)?$image:$this->request->getVar('old_image',FILTER_SANITIZE_STRING)) 
            );

            /*-----------------------------------*/
            if ($this->validation->withRequest($this->request)->run()) {

                if (empty($userData['image'])) {
                    $this->session->setFlashdata('exception', 'Image Not Defined'); 
                }

                if ($this->admin_model->update_profile($userData)) 
                {
                    $this->session->set(array(
                        'fullname'   => $this->request->getVar('firstname',FILTER_SANITIZE_STRING).' '.$this->request->getVar('lastname',FILTER_SANITIZE_STRING),
                        'email'       => $this->request->getVar('email',FILTER_SANITIZE_STRING),
                        'image'       => (!empty($image)?$image:$this->request->getVar('old_image',FILTER_SANITIZE_STRING))
                    ));


                    $this->session->setFlashdata('message', display('update_successfully'));
                } else {
                    $this->session->setFlashdata('exception',  display('please_try_again'));
                }
                return redirect()->to(base_url('backend/account/edit_profile'));

            } else {
                    
                $data['user']   = $this->admin_model->profile($id);

                $data['content'] = $this->BASE_VIEW . '\edit_profile';
                return $this->template->admin_layout($data);
            }
        }
}