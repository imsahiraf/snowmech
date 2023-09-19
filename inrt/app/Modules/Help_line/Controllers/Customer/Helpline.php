<?php 
namespace App\Modules\Help_line\Controllers\Customer;

class Helpline extends BaseController
{

    public function helpline()
    { 

        $data['$settings']      = $this->common_model->findById('setting', array()); 
        $page_number            = (!empty($this->request->getVar('page'))?$this->request->getVar('page'):1);

        $data['message'] = $this->db->table('dbt_messenger')
            ->select('dbt_messenger.*,dbt_user.first_name,dbt_user.last_name,dbt_user.id as user_id')
            ->join('dbt_user','dbt_messenger.sender_id = dbt_user.user_id')
            ->orderBy('id','DESC')
            ->where('sender_id',$this->session->get('user_id'))
            ->limit(5, ($page_number-1)*5)
            ->get()
            ->getResult();  
      
        $total                  = $this->common_model->countRow('dbt_messenger', array('sender_id' => $this->session->get('user_id')));
        $data['pager']          = $this->pager->makeLinks($page_number, 5, $total);
        $data['title']          = display('helpline'); 
        
        $data['content'] = $this->BASE_VIEW . '\pages\helpline';
        return $this->template->customer_layout($data);
    }

    public function helpline_details($id=null)
    {
        $user_id = $this->session->get('user_id');

        $this->common_model->update('dbt_messenger', array('status' => 0), array('status' => 1, 'replay_id' => $id));
        $this->common_model->update('dbt_messenger', array('admin_status' => 0), array('admin_status' => 1, 'id' => $id));
        $this->common_model->update('dbt_messenger', array('admin_status' => 0), array('admin_status' => 1, 'replay_id' => $id, 'reciver_id' => $user_id));

        $data['usermessege'] = $this->db->table('dbt_messenger')
            ->select('dbt_messenger.*,dbt_user.first_name,dbt_user.last_name,dbt_user.email')
            ->join('dbt_user','dbt_messenger.sender_id=dbt_user.user_id')
            ->where('dbt_messenger.id',$id)
            ->get()
            ->getRow();
        $data['adminmessege']= $this->db->table('dbt_messenger')->select('*')->where('replay_id',$id)->get()->getResult();

        $data['$settings']  = $this->common_model->findById('setting', array()); 
        
        $data['content'] = $this->BASE_VIEW . '\pages\helpline_details';
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

    public function send_message()
    {
        $this->validation->setRule('subject', display('subject'),'required');
        $this->validation->setRule('message', display('message'),'required');

        if($this->validation->withRequest($this->request)->run()){

            $subject = $this->request->getPost('subject',FILTER_SANITIZE_STRING);
            $message = $this->request->getPost('message',FILTER_SANITIZE_STRING);

            $data = array(

                'sender_id' => $this->session->get('user_id'),
                'reciver_id'=> 'admin',
                'subject'   => $subject,
                'messege'   => $message,
                'date_time' => date('Y-m-d H:i:s'),
                'status'    => 1
            );
            $this->common_model->save("dbt_messenger",$data);
            $this->session->setFlashdata("message", "Data sent successfully!");

        } else {

                $this->session->setFlashdata("exception", $this->validation->listErrors());
       
        }
        
       return redirect()->to(base_url("customer/help-line/helpline"));
    }

}