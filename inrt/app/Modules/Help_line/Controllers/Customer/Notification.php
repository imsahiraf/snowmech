<?php 
namespace App\Modules\Help_line\Controllers\Customer;

class Notification extends BaseController
{

    public function notification_list()
    {   

        $data['$settings']      = $this->common_model->findById('setting', array()); 
        $page_number            = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['notification']   = $this->common_model->get_all('notifications', array('user_id' => $this->session->get('user_id')), 'notification_id', 'desc', 20,($page_number-1)*20);
        $total                  = $this->common_model->countRow('notifications', array('user_id' => $this->session->get('user_id')));
        $data['pager']          = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('notification'); 
       
        $data['content'] = $this->BASE_VIEW . '\pages\email_notification';
        return $this->template->customer_layout($data);
    }

    public function email_details($notification_id = null)
    {   
        $user_id = $this->session->get('user_id');
        $this->common_model->update('notifications', array('status' => 1), array('notification_id'=> $notification_id, 'user_id' => $user_id));
        $data['notification'] = $this->db->table('notifications')->select('*')->where('user_id',$user_id)->where('notification_id',$notification_id)->get()->getRow();


        $data['title']  = display('notification'); 
    
        $data['content'] = $this->BASE_VIEW . '\pages\email_details';
        return $this->template->customer_layout($data);
    }

}