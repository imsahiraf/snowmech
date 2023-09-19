<?php 
namespace App\Modules\Help_line\Controllers\Customer;

class Message extends BaseController
{

    public function message_list()
    {   

        $data['$settings']      = $this->common_model->findById('setting', array()); 
        $page_number            = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['messageList']    = $this->common_model->get_all('message', array('receiver_id' => $this->session->get('user_id')), 'id', 'desc', 20,($page_number-1)*20);
        $total                  = $this->common_model->countRow('message', array('receiver_id' => $this->session->get('user_id')));
        $data['pager']          = $this->pager->makeLinks($page_number, 20, $total);
        $data['title']          = display('message'); 

        $data['content'] = $this->BASE_VIEW . '\pages\all_message';
        return $this->template->customer_layout($data);
    }

    public function message_details($message_id = null)
    {   
        $user_id = $this->session->get('user_id');
        $this->common_model->update('message', array('receiver_status' => 1), array('id' => $message_id,'receiver_id' => $user_id));

        $data['message']    = $this->db->table('message')->select('*')->where('receiver_id',$user_id)->where('id',$message_id)->get()->getRow();
        $data['$settings']  = $this->common_model->findById('setting', array()); 
        $data['title']      = display('message'); 
        
        $data['content'] = $this->BASE_VIEW . '\pages\message_details';
        return $this->template->customer_layout($data);
    }

}