<?php

namespace App\Libraries;
use App\Models\Common_model;
define('UPDATE_INFO_URL','http://update.bdtask.com/icowallet/autoupdate/update_info');
use App\Modules\Website\Models\Web_model;

class Template
{
    public function __construct()
    {
        $this->db         = db_connect();
        $this->web_model  = new Web_model();
        $session    = \Config\Services::session();
        $this->uri        = current_url(true);
        $this->common_model        = new Common_model();
    }

    public function admin_layout($data)
    {
        if (@fopen("https://update.bdtask.com", "r")) 
        {
           $max_version = file_get_contents(UPDATE_INFO_URL);

        } else {

            $max_version = $this->current_version();
        } 

        $data['max_version']     = $max_version;
        $data['current_version'] = $this->current_version();


        $data['settings']      = $this->setting_data();
        $data['settings_info'] = $this->setting_data();
        $uri                = service('uri','<?php echo base_url(); ?>');
        $data['uri']        = $uri;
        $session            = \Config\Services::session();
        $data['session']    = $session;
        $data['request']      = \Config\Services::request();
        
        $validation         =  \Config\Services::validation();
        $data['validation'] = $validation;
        

        $data['settings'] = $this->setting_data();

        echo view('admin/head', $data);
        echo view('admin/sidebar', $data);
        echo view('admin/header', $data);
        echo view('admin/messages', $data);
        echo view($data['content'], $data);

        return view('admin/footer', $data);
    }

    public function customer_layout($data)
    {
        $uri                = service('uri','<?php echo base_url(); ?>');
        
        $data['uri']        = $uri;
        $session            = \Config\Services::session();
        $data['session']    = $session;
        $data['request']      = \Config\Services::request();
        $validation         =  \Config\Services::validation();
        $data['validation'] = $validation;

        $data['settings']   = $this->setting_data();

        echo view('customer/head', $data);
        echo view('customer/sidebar', $data);
        echo view('customer/header', $data);
        echo view('customer/messages', $data);            
        
        echo view($data['content'], $data);
        return view('customer/footer', $data);
    }

    public function website_layout($data)
    {
        $data['settings']   = $this->setting_data();
        $data['session']    = session();
        $data['lang']       = $this->langSet();
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

       
        $data['segments'] = $this->uri->getSegments();
        $data['userinfo'] = $this->user_data();
        $data['social_link'] = $this->common_model->findAll('web_social_link', array('status' => 1), 'id', 'asc');
        $data['category'] = $this->common_model->findAll('web_category', array('status' => 1), 'position_serial', 'asc');

       // $googleapikey = $this->db->table('external_api_setup')->select('data')->where('id',4)->where('status',1)->get()->getRow();
        //$data['googleapikeydecode'] = json_decode($googleapikey->data,true);
        $builder = $this->db->table('themes');
        $template = $builder->select('name')->where('status',1)->get()->getRow();
        echo view('themes/'.$template->name.'/header', $data);
        echo  view('themes/'.$template->name.'/layout', $data);
        return view('themes/'.$template->name.'/footer', $data);
    }

    public function setting_data()
    {
        $builder = $this->db->table('setting')
            ->get()
            ->getRow();
        return $builder;
    }
    public function user_data(){
        $session            = \Config\Services::session();
        $builder = $this->db->table('dbt_user')->where('user_id', $session->get('user_id'))->get()->getRow(); 
        return $builder;
    }
    /******************************
     * Language Set For User
     ******************************/
    public function langSet()
    {
        $session    = \Config\Services::session();

        $lang = "";
        $user_id = $session->get('user_id');
        if ($user_id != "") {
            $builder = $this->db->table('dbt_user');
            $ulang = $builder->select('language')->where('user_id', $user_id)->get()->getRow();
            if ($ulang->language != 'english') {
                $lang = 'french';
                $newdata = array(
                    'lang'  => 'french'
                );
                $session->set($newdata);
            } else {
                $lang = 'english';
                $newdata = array(
                    'lang'  => 'french'
                );
                $session->set($newdata);
            }
        } else {
            $builder = $this->db->table('setting');
            $alang = $builder->select('language')->get()->getRow();
            if ($alang->language == 'french') {
                $lang = 'french';
                $newdata = array(
                    'lang'  => 'french'
                );
                $session->set($newdata);
            } else {
                if ($session->lang == 'french') {
                    $lang = 'french';
                } else {
                    $lang = 'english';
                }
            }
        }

        return $lang;
    }
    
    private function current_version(){

        //Current Version
        $product_version = '';
        $path = FCPATH.'system/Security/lic.php'; 
        if (file_exists($path)) {
            
            // Open the file
            $whitefile = file_get_contents($path);

            $file = fopen($path, "r");
            $i    = 0;
            $product_version_tmp = array();
            $product_key_tmp = array();
            while (!feof($file)) {
                $line_of_text = fgets($file);

                if (strstr($line_of_text, 'product_version')  && $i==0) {
                    $product_version_tmp = explode('=', strstr($line_of_text, 'product_version'));
                    $i++;
                }                
            }
            fclose($file);

            $product_version = trim(@$product_version_tmp[1]);
            $product_version = ltrim(@$product_version, '\'');
            $product_version = rtrim(@$product_version, '\';');

            return @$product_version;
            
        } else {
            //file is not exists
            return false;
        }
        
    }
}