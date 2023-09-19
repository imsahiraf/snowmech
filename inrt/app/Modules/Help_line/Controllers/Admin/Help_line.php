<?php 
namespace App\Modules\Help_line\Controllers\Admin;
use App\Modules\Help_line\Models\Help_line_model;

class Help_line extends BaseController
{
    
    public function index(){

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['message']  = $this->help_line_model->findAll(20,($page_number-1)*20);

        $total            = $this->common_model->countRow('dbt_messenger', array('sender_id !=' => 'admin'));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

         $data['content'] = $this->BASE_VIEW . '\help_line\helpline';
        return $this->template->admin_layout($data);
    }

    public function details($id=null)
    {
        
        $this->common_model->update('dbt_messenger', array('status'=>0), array('id'=>$id));

        $data['usermessege'] = $this->db->table('dbt_messenger')
            ->select('dbt_messenger.*,dbt_user.first_name,dbt_user.last_name,dbt_user.email')
            ->join('dbt_user','dbt_messenger.sender_id=dbt_user.user_id')
            ->where('dbt_messenger.id',$id)
            ->get()
            ->getRow();

        $data['adminmessege']= $this->db->table('dbt_messenger')->select('*')->where('replay_id',$id)->get()->getResult();

        $data['content'] = $this->BASE_VIEW . '\help_line\helpline_details';
        return $this->template->admin_layout($data);
    }


    public function send_message($id=null)
    {
        $this->validation->setRule('subject', display('subject'),'required');
        $this->validation->setRule('message', display('message'),'required');

        if($this->validation->withRequest($this->request)->run()){

            $reciver_id = $this->db->table('dbt_messenger')->select('sender_id')->where('id',$id)->get()->getRow()->sender_id;
            $subject = $this->request->getPost('subject',FILTER_SANITIZE_STRING);
            $message = $this->request->getPost('message',FILTER_SANITIZE_STRING);

            $data = array(

                'sender_id' => 'admin',
                'reciver_id'=> $reciver_id,
                'subject'   => $subject,
                'messege'   => $message,
                'replay_id' => $id,
                'date_time' => date('Y-m-d H:i:s'),
                'status'    => 1,
                'admin_status'=>1
            );

            $this->common_model->save("dbt_messenger",$data);
            $this->common_model->update("dbt_messenger",array('admin_status' => 1), array('id' => $id));

            $this->session->setFlashdata("message", "Data save successfully!");

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
            
        }
        return redirect()->to(base_url("backend/helpline/details/$id"));
    }
}
