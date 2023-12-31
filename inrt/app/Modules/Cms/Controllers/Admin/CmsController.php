<?php 
namespace App\Modules\Cms\Controllers\Admin;

class CmsController extends BaseController
{
    public function index(){

        $this->validation->setRule('body_background_color','Body Background Color','required');
        $this->validation->setRule('body_font_color','Body Font Color','required');
        $this->validation->setRule('menu_bg_color','Menu Background Color','required');
        $this->validation->setRule('menu_bg_color','Menu Background Color','required');
        $this->validation->setRule('menu_font_color','Menu Font Color','required');
        $this->validation->setRule('footer_bg_color','Footer Background Color','required');
        $this->validation->setRule('footer_font_color','Menu Font Color','required');
        $this->validation->setRule('btn_font_color','Theme Color','required');
        $this->validation->setRule('top_footer_horizontal_border_color','Top Footer Horizontal Border Color','required');
        $this->validation->setRule('footer_menu_border_color','Footer Menu Border Color','required');
        $this->validation->setRule('bottom_footer_background_color','Bottom Footer Background Color','required');
        $this->validation->setRule('bottom_footer_font_color','Bottom Footer Font Color','required');
        $this->validation->setRule('theme_color','Menu Background Color','required');
        $this->validation->setRule('newslatter_bg','Newslatter Bg Color','required');
        $this->validation->setRule('newslatter_font','Newslatter Font Color','required');
        $this->validation->setRule('btn_bg_color','Button Background Color','required');
        $this->validation->setRule('form_background_color','Form Background Color','required');
        $this->validation->setRule('form_border_color','Form Border Color','required');
        $this->validation->setRule('form_label_color','Form Label Color','required');
        $this->validation->setRule('form_input_field_background_color','Form Input Field Background Color','required');
        $this->validation->setRule('input_field_border_color','Form Input Field Border Color','required');
        $this->validation->setRule('input_field_color','Input Field Color','required');
        $this->validation->setRule('newslatter_img', 'This Image', "ext_in[newslatter_img,png,jpg,gif,ico]|is_image[newslatter_img]");

        if($this->request->getMethod() == 'post'){

            if($this->validation->withRequest($this->request)->run())
            {

                $image = $this->imageupload->upload_image($this->request->getFile('newslatter_img'), 'public/upload/themes/', $this->request->getPost('newslatter_img_old'), 1500,1000);
               
                $jsondata = array(

                    'body_background_color' => $this->request->getPost('body_background_color', FILTER_SANITIZE_STRING),
                    'body_font_color'   => $this->request->getPost('body_font_color', FILTER_SANITIZE_STRING),
                    'menu_bg_color'     => $this->request->getPost('menu_bg_color', FILTER_SANITIZE_STRING),
                    'menu_font_color'   => $this->request->getPost('menu_font_color', FILTER_SANITIZE_STRING),
                    'footer_bg_color'   => $this->request->getPost('footer_bg_color', FILTER_SANITIZE_STRING),
                    'footer_font_color' => $this->request->getPost('footer_font_color', FILTER_SANITIZE_STRING),
                    'btn_bg_color'      => $this->request->getPost('btn_bg_color', FILTER_SANITIZE_STRING),
                    'btn_font_color'    => $this->request->getPost('btn_font_color', FILTER_SANITIZE_STRING),
                    'top_footer_horizontal_border_color'    => $this->request->getPost('top_footer_horizontal_border_color', FILTER_SANITIZE_STRING),
                    'footer_menu_border_color'    => $this->request->getPost('footer_menu_border_color', FILTER_SANITIZE_STRING),
                    'bottom_footer_background_color'    => $this->request->getPost('bottom_footer_background_color', FILTER_SANITIZE_STRING),
                    'bottom_footer_font_color'    => $this->request->getPost('bottom_footer_font_color', FILTER_SANITIZE_STRING),
                    'theme_color'       => $this->request->getPost('theme_color', FILTER_SANITIZE_STRING),
                    'newslatter_bg'     => $this->request->getPost('newslatter_bg', FILTER_SANITIZE_STRING),
                    'newslatter_font'   => $this->request->getPost('newslatter_font', FILTER_SANITIZE_STRING),
                    'form_background_color'   => $this->request->getPost('form_background_color', FILTER_SANITIZE_STRING),
                    'form_border_color'   => $this->request->getPost('form_border_color', FILTER_SANITIZE_STRING),
                    'form_label_color'   => $this->request->getPost('form_label_color', FILTER_SANITIZE_STRING),
                    'form_input_field_background_color'   => $this->request->getPost('form_input_field_background_color', FILTER_SANITIZE_STRING),
                    'input_field_border_color'   => $this->request->getPost('input_field_border_color', FILTER_SANITIZE_STRING),
                    'input_field_color'   => $this->request->getPost('input_field_color', FILTER_SANITIZE_STRING),
                    'newslatter_img'    => $image
                );

                $updatedata = json_encode($jsondata);
                $dataU = (object)$datainfo = array('settings' => $updatedata);
                $this->common_model->update('dbt_theme', $dataU, array());
                $this->session->setFlashdata('message','Update Successfully!');

            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }
    
        $data['theme']  = $this->common_model->findById('dbt_theme', array('status' => 1));


        $data['content'] = $this->BASE_VIEW . '\article\theme_setting';
        return $this->template->admin_layout($data);
    }

    public function page_content_list(){

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAll paramiter = where, limit, offset.
        $data['article']  = $this->cms_model->findAllPageContend(array('page_content' => 1), 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('page_content' => 1));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

         $data['content'] = $this->BASE_VIEW . '\article\list';
        return $this->template->admin_layout($data);
    }

    

    public function add_page_content($article_id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $this->validation->setRule('headline_en',display('headline_en'),'required|max_length[1000]');
        $this->validation->setRule('cat_id',display('category'),'required|max_length[10]');
        $this->validation->setRule('position_serial',display('position_serial'),'required|max_length[10]|trim');
        $this->validation->setRule('article_image', 'This Image', "ext_in[article_image,png,jpg,gif,ico]|is_image[article_image]");

        if($this->request->getMethod() == 'post'){
            if($this->validation->withRequest($this->request)->run())
            {
                
                $filePath = $this->imageupload->doUpload('public/upload/', $this->request->getFile('article_image'));
                
                if(empty($filePath)){
                    $image = $this->request->getVar('article_image_old');
                } else {
                    $image = $filePath;
                }

                $data['article']   = (object)$userdata = array(

                    'article_id'        => $this->request->getPost('article_id', FILTER_SANITIZE_STRING),
                    'headline_en'       => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
                    'headline_fr'       => $this->request->getPost('headline_fr', FILTER_SANITIZE_STRING), 
                    'article_image'     => $image, 
                    'article1_en'       => $this->request->getPost('article1_en'),
                    'article1_fr'       => $this->request->getPost('article1_fr'),
                    'article2_en'       => $this->request->getPost('article2_en'),
                    'article2_fr'       => $this->request->getPost('article2_fr'),
                    'video'             => $this->request->getPost('video', FILTER_SANITIZE_STRING),
                    'cat_id'            => $this->request->getPost('cat_id', FILTER_SANITIZE_STRING),
                    'page_content'      => 1,
                    'position_serial'   => $this->request->getPost('position_serial', FILTER_SANITIZE_STRING),
                    'publish_date'      => date("Y-m-d h:i:s"),
                    'publish_by'        => $this->session->get('email')
                );

                if (empty($article_id)) 
                {
                    if ($this->common_model->save('web_article', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/add-page-content'));
                } else {
                    if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/edit-page-content/'.$article_id));
                }
                
            } else {

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                if(!empty($article_id)){
                    return  redirect()->to(base_url('/backend/cms/edit-page-content/'.$article_id));
                } else {
                 return  redirect()->to(base_url('/backend/cms/add-page-content'));
                }
            }
        }
        if (empty($article_id)) {
                $data['article']  = (object)$userdata = array(
                    'article_id'  => $this->request->getPost('article_id', FILTER_SANITIZE_STRING),
                );
        } else {
            //paramiter = table, where, fieldname, order
            $data['article']   = $this->common_model->findById('web_article', array('article_id' => $article_id));
        }

        $data['parent_cat'] = $this->common_model->findAll('web_category', array(), 'cat_id', 'desc');


         $data['content'] = $this->BASE_VIEW . '\article\form';
        return $this->template->admin_layout($data);
        
    }

    public function delete_page_content($id = null)
    { 
       
        if ($this->common_model->delete('web_article', array('article_id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/page-content-list');
    } 


    /*
    |----------------------------------------------
    |     Team segment
    |----------------------------------------------     
    */

    public function team_list()
    {

        $data['title']  = display('team_list');  
       
        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all('web_article',array('cat_id'=>$cat_id), 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id'=>$cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);


        $data['team_overview'] = $this->db->table("web_article")
                                    ->select("*")
                                    ->where('article_id', 46)
                                    ->limit(1)
                                    ->get()
                                    ->getRow();

        $data['title']  = display('add_teammember');

         $data['content'] = $this->BASE_VIEW . '\article\team';
        return $this->template->admin_layout($data);
    }

    public function add_team($article_id = null)
    {
        $data['title']  = display('add_teammember');

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
 

        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $position = $this->db->table('web_article')->selectMax('position_serial')->where('cat_id',$cat_id)->get()->getRow()->position_serial;

        $data['max_position'] =  ++$position;

        $position_serial = $this->request->getPost('position_serial', FILTER_SANITIZE_STRING);
        @$existSerial = $this->db->table('web_article')->select('position_serial')->where('cat_id',$cat_id)->where('position_serial',$position_serial)->get()->getRow()->position_serial;
        if($existSerial==$position_serial){
            $position_serial = $data['max_position'] ;
        }

        //Set Rules From validation     
        $this->validation->setRule('article1_en', 'Name','max_length[20]|trim');
        $this->validation->setRule('article1_fr', 'Article FR','max_length[20]|trim');
        $this->validation->setRule('headline_en', display('headline_en'),'required|max_length[15]|trim');
        $this->validation->setRule('position_serial', display('position_serial'),'required|max_length[10]|trim');
        $this->validation->setRule('article_image', 'This Image', "ext_in[article_image,png,jpg,gif,ico]|is_image[article_image]");
        if ($this->validation->withRequest($this->request)->run()) 
        {
            if($this->request->getMethod() == 'post'){
                $image = $this->imageupload->upload_image($this->request->getFile('article_image'), 'public/upload/team/', $this->request->getPost('article_image_old'), 200,200);
            }
        }
        $data['article']   = (object)$userdata = array(
            'article_id'        => $this->request->getPost('article_id', FILTER_SANITIZE_STRING)? $this->request->getPost('article_id') : '',
            'headline_en'       => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
            'article_image'     => (!empty($image)?$image:$this->request->getPost('article_image_old', FILTER_SANITIZE_STRING)), 
            'article1_en'       => $this->request->getPost('article1_en'),
            'article1_fr'       => $this->request->getPost('article1_fr'),
            'cat_id'            => $cat_id,
            'position_serial'   => $position_serial,
            'publish_date'      => date("Y-m-d h:i:s"),
            'publish_by'        => $this->session->get('email')
        );

        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

            if (empty($userdata['article_image']) && $this->session->setFlashdata('exception') == null) {
                $this->session->setFlashdata('exception', display('you_did_not_upload_any_file'));
            }

            if (empty($article_id)) 
            {
                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/team/form'));

            }  else {
                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/team/form/'.$article_id));
            }

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }

            if(!empty($article_id)) {
                $data['title']   = display('edit_teammember');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }


        $data['module'] = "Cms";

         $data['content'] = $this->BASE_VIEW . '\article\team_form';
        return $this->template->admin_layout($data);

    }

    public function overview()
    {
        $this->validation->setRule('overviewheaderen', display('overview_header_en'),'required|trim');
        $this->validation->setRule('overviewheaderfr', display('overview_header_fr'),'required|trim');
        $this->validation->setRule('subheaderen', display('sub_header_en'),'required|trim');
        $this->validation->setRule('subheaderfr', display('sub_header'),'required|trim');
        $this->validation->setRule('descriptionen', display('description_en'),'required|trim');
        $this->validation->setRule('descriptionfr', display('description_fr'),'required|trim');

        if ($this->validation->withRequest($this->request)->run()) 
        {
            $overviewheaderen   = $this->request->getPost('overviewheaderen',FILTER_SANITIZE_STRING);
            $overviewheaderfr   = $this->request->getPost('overviewheaderfr',FILTER_SANITIZE_STRING);
            $subheaderen        = $this->request->getPost('subheaderen',FILTER_SANITIZE_STRING);
            $subheaderfr        = $this->request->getPost('subheaderfr',FILTER_SANITIZE_STRING);
            $descriptionen      = $this->request->getPost('descriptionen',FILTER_SANITIZE_STRING);
            $descriptionfr      = $this->request->getPost('descriptionfr',FILTER_SANITIZE_STRING);

            $data = array(
                'headline_en'=>$overviewheaderen,
                'headline_fr'=>$overviewheaderfr,
                'article1_en'=>$subheaderen,
                'article1_fr'=>$subheaderfr,
                'article2_en'=>$descriptionen,
                'article2_fr'=>$descriptionfr
            );
            $this->common_model->update('web_article', $data, array('article_id'=> 46));
           
            $this->session->setFlashdata('message',display('update_successfully'));

        } else {
            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }
        }
       return redirect()->to(base_url('backend/cms/team'));
    }

    /*
    |----------------------------------------------
    |     Advisor segment
    |----------------------------------------------     
    */
    public function advisor_list()
    {

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all('web_article',array('cat_id'=>$cat_id), 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id'=>$cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('advisors_list');

         $data['content'] = $this->BASE_VIEW . '\article\advisor_list';
        return $this->template->admin_layout($data);
    }

    public function add_advisors($article_id = null)
    {
        $data['title']  = display('add_teammember');

       $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
      
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $position = $this->db->table('web_article')->selectMax('position_serial')->where('cat_id',$cat_id)->get()->getRow()->position_serial;

        $data['max_position'] =  ++$position;

        //Set Rules From validation  

        $this->validation->setRule('headline_en', 'Name','required|max_length[15]|trim');
        $this->validation->setRule('position_serial', display('position_serial'),'required|max_length[10]|trim');
        $this->validation->setRule('article_image', 'This Image', "ext_in[article_image,png,jpg,gif,ico]|is_image[article_image]");

        if ($this->validation->withRequest($this->request)->run()){
            if($this->request->getMethod() == 'post'){
                $image = $this->imageupload->upload_image($this->request->getFile('article_image'), 'public/upload/advisors/', $this->request->getPost('article_image_old'), 570,570);
            }
        }

        $data['article']   = (object)$userdata = array(

            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)? $this->request->getPost('article_id') : '',
            'headline_en'       => $this->request->getPost('headline_en',FILTER_SANITIZE_STRING),
            'article_image'     => (!empty($image)?$image:$this->request->getPost('article_image_old',FILTER_SANITIZE_STRING)), 
            'article1_en'       => $this->request->getPost('article1_en'),
            'article1_fr'       => $this->request->getPost('article1_fr'),
            'article2_en'       => $this->request->getPost('article2_en',FILTER_SANITIZE_STRING),
            'article2_fr'       => $this->request->getPost('article2_fr',FILTER_SANITIZE_STRING),
            'cat_id'            => $cat_id,
            'position_serial'   => $this->request->getPost('position_serial',FILTER_SANITIZE_STRING),
            'publish_date'      => date("Y-m-d h:i:s"),
            'publish_by'        => $this->session->get('email')
        );


        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

            $checkexistserial = $this->db->table('web_article')->select('position_serial,article_id')->where('cat_id',$cat_id)->where('position_serial',$this->request->getPost('position_serial'))->get();


            if(!empty($checkexistserial->getRow()) && $checkexistserial->getRow()->article_id != $article_id){
                $this->session->setFlashdata('exception', display('this_position_is_exists'));
               return redirect()->to(base_url('backend/cms/advisors'));
            }

            if (empty($userdata['article_image']) && $this->session->setFlashdata('exception') == null) {
                $this->session->setFlashdata('exception', display('you_did_not_upload_any_file'));
            }

            if (empty($article_id)) 
            {
                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/advisors/form'));

            }  else {
                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/advisors/form/'.$article_id));
            }

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }

            if(!empty($article_id)) {
                $data['title']   = display('edit_advisors');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }

        $data['title']  = display('add_advisors');

        $data['content'] = $this->BASE_VIEW . '\article\advisors';
        return $this->template->admin_layout($data);
    }

    /*
    |----------------------------------------------
    |     Testimonial segment
    |----------------------------------------------     
    */

    public function testimonial_list()
    {

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all('web_article',array('cat_id'=>$cat_id), 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id'=>$cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('testimonial_list');

        $data['content'] = $this->BASE_VIEW . '\article\testmonial_list';
        return $this->template->admin_layout($data);
    }

    public function add_testimonial($article_id = null)
    {
        $data['title']  = display('add_testimonial');

       $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $slug3  = $this->request->uri->setSilent()->getSegment(3);

        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $position = $this->db->table('web_article')->selectMax('position_serial')->where('cat_id',$cat_id)->get()->getRow()->position_serial;

        $data['max_position'] =  ++$position;

        //Set Rules From validation  

        $this->validation->setRule('headline_en', 'Name','required|max_length[15]|trim');
      

        $data['article']   = (object)$userdata = array(

            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)?$this->request->getPost('article_id',FILTER_SANITIZE_STRING) : '',
            'headline_en'       => $this->request->getPost('headline_en',FILTER_SANITIZE_STRING),
            'article1_en'       => $this->request->getPost('article1_en'),
            'article2_en'       => $this->request->getPost('article2_en'),
            'cat_id'            => $cat_id,
            'publish_date'      => date("Y-m-d h:i:sa"),
            'publish_by'        => $this->session->get('email')
        );


        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {


            if (empty($article_id)) 
            {
                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/testimonial/form'));

            }  else {
                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/testimonial/form/'.$article_id));
            }

        } else {

            if($this->request->getMethod() == 'post'){
                $this->session->setFlashdata("exception", $this->validation->listErrors());
            }

            if(!empty($article_id)) {
                $data['title']   = display('edit_testmonial');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }


        $data['content'] = $this->BASE_VIEW . '\article\testimonial';
        return $this->template->admin_layout($data);
    }

    /*
    |----------------------------------------------
    |     Cart segment
    |----------------------------------------------     
    */

    public function chart_list()
    {

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);

        $cat_id = $catinfo->cat_id;

        $ids = $this->db->table('web_category')->select("cat_id")->where('parent_id', $cat_id)->get()->getResult();


        $cat_ids = array();

        foreach ($ids as $key => $value) {
            $cat_ids[]=$value->cat_id;
        }


        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all_wherein('web_article', 'cat_id', $cat_ids, 'cat_id', 'desc', 20,($page_number-1)*20);
       
        $total            = $this->common_model->countrow_wherein('web_article', 'cat_id', $cat_ids);
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('chart_list');

        $data['content'] = $this->BASE_VIEW . '\article\chart_list';
        return $this->template->admin_layout($data);
    }


    public function add_chart($article_id = null)
    {
        $data['title']  = display('chart_list');

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $slug3   = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
      

        $this->validation->setRule('cat_id', display('cat_id'),'required|max_length[20]');
        $this->validation->setRule('headline_en', display('headline_en'),'required|max_length[255]');
        $this->validation->setRule('position_serial', display('position_serial'),'required|max_length[10]|trim');

        $exitPositon = $this->common_model->findById('web_article', array('cat_id' => $this->request->getPost('cat_id'), 'position_serial' => $this->request->getPost('position_serial')));


        $data['article']   = (object)$userdata = array(
            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)?$this->request->getPost('article_id',FILTER_SANITIZE_STRING):'',
            'headline_en'       => $this->request->getPost('headline_en',FILTER_SANITIZE_STRING),
            'article1_en'       => $this->request->getPost('article1_en',FILTER_SANITIZE_STRING),
            'article1_fr'       => $this->request->getPost('article1_fr',FILTER_SANITIZE_STRING),
            'cat_id'            => $this->request->getPost('cat_id',FILTER_SANITIZE_STRING),
            'position_serial'   => $this->request->getPost('position_serial',FILTER_SANITIZE_STRING),
            'publish_date'      => date("Y-m-d h:i:s"),
            'publish_by'        => $this->session->get('email')
        );
        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

            if (empty($article_id)) 
            {

                if(!empty($exitPositon)){
                    $this->session->setFlashdata('exception', display('this_position_is_exists'));
                    return  redirect()->to(base_url('/backend/cms/chart/form'));
                }

                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/chart/form'));

            }  else {

                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/chart/form/'.$article_id));
            }

        } else {

            $parent_cat = $this->db->table('web_category')->select("cat_id")->where('slug', 'chart')->get()->getRow();

            $data['child_cat'] = $this->db->table('web_category')->select("*")->where('parent_id', $parent_cat->cat_id)->get()->getResult();

            if(!empty($article_id)) {
                $data['title']   = display('edit_chart');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }

        $data['content'] = $this->BASE_VIEW . '\article\chart_form';
        return $this->template->admin_layout($data);
    }

    /*
    |----------------------------------------------
    |     roadmap segment
    |----------------------------------------------     
    */
    public function roadmap_list()
    {

        $data['title']  = display('roadmap_list');  
       
        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all('web_article',array('cat_id'=>$cat_id), 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id'=>$cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);


        $data['content'] = $this->BASE_VIEW . '\article\roadmap_list';
        return $this->template->admin_layout($data);
    }


    public function add_roadmap($article_id = null)
    {
        $data['title']  = display('add_roadmap');

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $slug3  = $this->request->uri->setSilent()->getSegment(3);
 
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $exitPositon = $this->common_model->findById('web_article', array('cat_id' =>$cat_id, 'position_serial' => $this->request->getPost('position_serial')));

        $this->validation->setRule('headline_en', 'Name','required|max_length[255]');
        $this->validation->setRule('position_serial', display('position_serial'),'required|max_length[7]|trim');
      

       $data['article']   = (object)$userdata = array(

            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)?$this->request->getPost('article_id',FILTER_SANITIZE_STRING):'',
            'headline_en'       => $this->request->getPost('headline_en',FILTER_SANITIZE_STRING),
            'headline_fr'       => $this->request->getPost('headline_fr',FILTER_SANITIZE_STRING),
            'article1_en'       => $this->request->getPost('article1_en',FILTER_SANITIZE_STRING),
            'article1_fr'       => $this->request->getPost('article1_fr',FILTER_SANITIZE_STRING),
            'article2_en'       => $this->request->getPost('article2_en',FILTER_SANITIZE_STRING),
            'article2_fr'       => $this->request->getPost('article2_fr',FILTER_SANITIZE_STRING),
            'publish_date'      => $this->request->getPost('publish_date',FILTER_SANITIZE_STRING),
            'position_serial'   => $this->request->getPost('position_serial',FILTER_SANITIZE_STRING),
            'cat_id'            => $cat_id
        );

        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

            if (empty($article_id)) 
            {

                if(!empty($exitPositon)){
                    $this->session->setFlashdata('exception', display('this_position_is_exists'));
                }

                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/roadmap/form'));

            }  else {

                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/roadmap/form/'.$article_id));
            }

        } else {


            if(!empty($article_id)) {
                $data['title']   = display('edit_roadmap');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }
        $data['content'] = $this->BASE_VIEW . '\article\roadmap_form';
        return $this->template->admin_layout($data);


    }

    /*
    |----------------------------------------------
    |     Advisor segment
    |----------------------------------------------     
    */
    public function client_list()
    {

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all('web_article',array('cat_id'=>$cat_id), 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id'=>$cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('client_list');

        $data['content'] = $this->BASE_VIEW . '\article\client_list';
        return $this->template->admin_layout($data);
    }

    public function add_client($article_id = null)
    {
        $data['title']  = display('add_client');

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $slug3  = $this->request->uri->setSilent()->getSegment(3);
      

        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $position = $this->db->table('web_article')->selectMax('position_serial')->where('cat_id',$cat_id)->get()->getRow()->position_serial;

        $data['max_position'] =  ++$position;

        //Set Rules From validation  
        $this->validation->setRule('headline_en', 'Name','required|max_length[15]|trim');
        $this->validation->setRule('position_serial', display('position_serial'),'required|max_length[10]|trim');
        $this->validation->setRule('article_image', 'This Image', "ext_in[article_image,png,jpg,gif,ico]|is_image[article_image]");

        if ($this->validation->withRequest($this->request)->run()){

            if($this->request->getMethod() == 'post'){
                $image = $this->imageupload->upload_image($this->request->getFile('article_image'), 'public/upload/client/', $this->request->getPost('article_image_old'), 97,73);
            }
        }

        $data['article']   = (object)$userdata = array(

            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)?$this->request->getPost('article_id',FILTER_SANITIZE_STRING):'',
            'headline_en'       => $this->request->getPost('headline_en',FILTER_SANITIZE_STRING),
            'article_image'     => (!empty($image)?$image:$this->request->getPost('article_image_old',FILTER_SANITIZE_STRING)), 
            'article1_en'       => $this->request->getPost('article1_en',FILTER_SANITIZE_STRING),
            'cat_id'            => $cat_id,
            'position_serial'   => $this->request->getPost('position_serial',FILTER_SANITIZE_STRING),
            'publish_date'      => date("Y-m-d h:i:sa"),
            'publish_by'        => $this->session->get('email')
        );


        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

            $checkexistserial = $this->db->table('web_article')->select('position_serial,article_id')->where('cat_id',$cat_id)->where('position_serial',$this->request->getPost('position_serial'))->get();


            if(!empty($checkexistserial->getRow()) && $checkexistserial->getRow()->article_id != $article_id){
                $this->session->setFlashdata('exception', display('this_position_is_exists'));
                return redirect()->to(base_url('backend/cms/client'));
            }

            if (empty($userdata['article_image']) && $this->session->setFlashdata('exception') == null) {
                $this->session->setFlashdata('exception', display('you_did_not_upload_any_file'));
            }

            if (empty($article_id)) 
            {
                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/client/form'));

            }  else {
                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/client/form/'.$article_id));
            }

        } else {

            if(!empty($article_id)) {
                $data['title']   = display('edit_client');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }

        $data['title']  = display('add_client');

        $data['content'] = $this->BASE_VIEW . '\article\client_form';
        return $this->template->admin_layout($data);

    }


    /*
    |----------------------------------------------
    |     aboutcoin segment
    |----------------------------------------------     
    */
    public function aboutcoin_list()
    {

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all('web_article',array('cat_id'=>$cat_id), 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id'=>$cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('aboutcoin_list');


        $data['content'] = $this->BASE_VIEW . '\article\aboutcoin_list';
        return $this->template->admin_layout($data);
    }

    public function slug_check_aboutcoin($headline_en, $article_id)
    { 
        $packageExists = $this->db->table('web_article')
            ->select('*') 
            ->where('headline_en',$headline_en) 
            ->where('article_id !=',$article_id) 
            ->get()
            ->getRow();

        if (!$packageExists) {
            return false;
        } else {
            return true;
        }

    }

    public function add_aboutcoin($article_id = null)
    {
        $data['title']  = display('add_aboutcoin');

       $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));


        $slug3  = $this->request->uri->setSilent()->getSegment(3);

        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        if (!empty($article_id)) {   
            $this->validation->setRule('headline_en', display("headline_en"), "required|max_length[255]");

            $checkSlug = $this->slug_check_aboutcoin($this->request->getPost('headline_en'), $article_id);

            if($checkSlug == 1){

                $this->session->setFlashdata("errors", array('headline_en' => "The Value is already Exist."));
                return  redirect()->to(base_url('/backend/cms/aboutcoin/form/'.$article_id));
            }

        } else {
            $this->validation->setRule('headline_en', display('headline_en'),'required|is_unique[web_article.headline_en]|max_length[255]');
            
        }

        $slug = url_title(strip_tags($this->request->getPost('headline_en',FILTER_SANITIZE_STRING)), 'dash', TRUE);

       
        
        $data['article']   = (object)$userdata = array(

            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)?$this->request->getPost('article_id',FILTER_SANITIZE_STRING):'',
            'slug'              => $slug,
            'headline_en'       => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
            'headline_fr'       => $this->request->getPost('headline_fr', FILTER_SANITIZE_STRING),
            'article1_en'       => $this->request->getPost('article1_en', FILTER_SANITIZE_STRING),
            'article1_fr'       => $this->request->getPost('article1_fr', FILTER_SANITIZE_STRING),
            'cat_id'            => $cat_id,
            'publish_date'      => date("Y-m-d h:i:s"),
            'publish_by'        => $this->session->get('email')
        );


        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

           
            if (empty($article_id)) 
            {
                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/aboutcoin/form'));

            }  else {
                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/aboutcoin/form/'.$article_id));
            }

        } else {

            if(!empty($article_id)) {
                $data['title']   = display('edit_aboutcoin');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }

        $data['title']  = display('add_aboutcoin');

        $data['content'] = $this->BASE_VIEW . '\article\aboutcoin_form';
        return $this->template->admin_layout($data);

    }
    // add team here now

    /*
    |----------------------------------------------
    |     Faq segment
    |----------------------------------------------     
    */
    public function faq_list_backup(){

        $findCatId = $this->common_model->findById('web_category', array('slug' => "faq"));

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAll paramiter = where, limit, offset.
        $data['article']  = $this->cms_model->findAllPageContend(array('web_article.cat_id' => $findCatId->cat_id), 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id' => $findCatId->cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['content'] = $this->BASE_VIEW . '\article\faq-list';
        return $this->template->admin_layout($data);
    }
    
    public function faq_list()
    {

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
        $catinfo = $this->cms_model->catidBySlug($slug3);

        $cat_id = $catinfo->cat_id;

        $ids = $this->db->table('web_category')->select("cat_id")->where('parent_id', $cat_id)->get()->getResult();


        $cat_ids = array();

        foreach ($ids as $key => $value) {
            $cat_ids[]=$value->cat_id;
        }


        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['article']  = $this->common_model->get_all_wherein('web_article', 'cat_id', $cat_ids, 'cat_id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countrow_wherein('web_article', 'cat_id', $cat_ids);
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['title']  = display('chart_list');

        $data['content'] = $this->BASE_VIEW . '\article\faq_list';
        return $this->template->admin_layout($data);
    }


    public function add_faq($article_id = null)
    {
        $data['title']  = display('faq');

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $slug3  = $this->request->uri->setSilent()->getSegment(3);
       
        $catinfo = $this->cms_model->catidBySlug($slug3);
        $cat_id = $catinfo->cat_id;

        $this->validation->setRule('cat_id', display('cat_id'),'required|max_length[20]');
        $this->validation->setRule('headline_en', 'Question','required|max_length[255]');
       
        $data['article']   = (object)$userdata = array(

            'article_id'        => $this->request->getPost('article_id',FILTER_SANITIZE_STRING)?$this->request->getPost('article_id',FILTER_SANITIZE_STRING):'',
            'headline_en'       => $this->request->getPost('headline_en',FILTER_SANITIZE_STRING),
            'headline_fr'       => $this->request->getPost('headline_fr',FILTER_SANITIZE_STRING),
            'article1_en'       => $this->request->getPost('article1_en'),
            'article1_fr'       => $this->request->getPost('article1_fr'),
            'cat_id'            => $this->request->getPost('cat_id',FILTER_SANITIZE_STRING),
            'publish_date'      => date("Y-m-d h:i:sa"),
            'publish_by'        => $this->session->get('email')
        );


        //From Validation Check
        if ($this->validation->withRequest($this->request)->run()) 
        {

            if (empty($article_id)) 
            {
                if ($this->common_model->save('web_article', $userdata)) {
                    $this->session->setFlashdata('message', display('save_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                return  redirect()->to(base_url('/backend/cms/faq/form'));

            }  else {
                if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                    $this->session->setFlashdata('message', display('update_successfully'));

                } else {
                    $this->session->setFlashdata('exception', display('please_try_again'));

                }
                 return  redirect()->to(base_url('/backend/cms/faq/form/'.$article_id));
            }

        } else {

            
            $parent_cat = $this->db->table('web_category')->select("cat_id")->where('slug', 'faq')->get()->getRow();

            $data['child_cat'] = $this->db->table('web_category')->select("*")->where('parent_id', $parent_cat->cat_id)->get()->getResult();

            if(!empty($article_id)) {
                $data['title']   = display('faq');
                $data['article'] = $this->common_model->findById('web_article',array('article_id'=> $article_id));
            }
        }


        $data['content'] = $this->BASE_VIEW . '\article\faq';
        return $this->template->admin_layout($data);
    }

    public function delete_faq($id = null)
    { 
       
        if ($this->common_model->delete('web_article', array('article_id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/faq-list');
    }


    /*
    |----------------------------------------------
    |     Faq segment
    |----------------------------------------------     
    */
    public function notice_list(){

        $findCatId = $this->common_model->findById('web_category', array('slug' => "notice"));

        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAll paramiter = where, limit, offset.
        $data['article']  = $this->cms_model->findAllPageContend(array('web_article.cat_id' => $findCatId->cat_id), 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_article', array('cat_id' => $findCatId->cat_id));
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);




        $data['content'] = $this->BASE_VIEW . '\article\notice-list';
        return $this->template->admin_layout($data);
    }

    public function add_notice($article_id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $findCatId = $this->common_model->findById('web_category', array('slug' => "notice"));

        $rules = ['article1_en' => ['label' =>  display('article1_en'), 'rules' => 'required'],];

        if($this->request->getMethod() == 'post'){


            $data['article']   = (object)$userdata = array(

                'headline_en'   => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
                'headline_fr'   => $this->request->getPost('headline_fr', FILTER_SANITIZE_STRING),
                'article1_en'   => $this->request->getPost('article1_en'),
                'article1_fr'   => $this->request->getPost('article1_fr'),
                'cat_id'        => $findCatId->cat_id,
                'publish_date'  => date("Y-m-d h:i:s"),
                'publish_by'    => $this->session->get('email')
            );

            //From Validation Check
            if ($this->validate($rules, $rules)) 
            {

                if (empty($article_id)) 
                {
                    if ($this->common_model->save('web_article', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/notice-list'));
                } else {
                    if ($this->common_model->update('web_article', $userdata, array('article_id' => $article_id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/edit-notice/'.$article_id));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                if(empty($article_id)){

                     return  redirect()->to(base_url('/backend/cms/add-notice'));
                } else {
                    return  redirect()->to(base_url('/backend/cms/edit-notice/'.$article_id));
                }
            }

        } else {

            //paramiter = table, where, fieldname, order
            $data['parent_cat'] = $this->common_model->findAll('web_category', array(), 'cat_id', 'desc');

            if(!empty($article_id)) {

                $data['article']   = $this->common_model->findById('web_article', array('article_id' => $article_id));
            } else {

                $data['article']   = (object)$userdata = array(
                    'article_id'    => '',
                    'headline_en'   => '',
                    'headline_fr'   => '',
                    'article1_en'   => '',
                    'article1_fr'   => '',
                    'cat_id'        => '',
                    'publish_date'  => '',
                    'publish_by'    => ''
                );
            }

        $data['content'] = $this->BASE_VIEW . '\article\notice';
        return $this->template->admin_layout($data);

        }
        
    }

    public function delete_notice($id = null)
    { 
       
        if ($this->common_model->delete('web_article', array('article_id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/notice-list');
    }

    /*
    |----------------------------------------------
    |       segment contact
    |----------------------------------------------     
    */

    public function contact($article_id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $findCatId = $this->common_model->findById('web_category', array('slug' => "contact"));
        $articleId = $this->common_model->findById('web_article', array('cat_id' => $findCatId->cat_id));


        $rules = ['headline_en' => ['label' =>  display('headline_en'), 'rules' => 'required|max_length[255]']];

        if($this->request->getMethod() == 'post'){


            $data['article']   = (object)$userdata = array(

                'headline_en'   => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
                'headline_fr'   => $this->request->getPost('headline_fr', FILTER_SANITIZE_STRING),
                'article1_en'   => $this->request->getPost('article1_en'),
                'article1_fr'   => $this->request->getPost('article1_fr'),
                'cat_id'        => $findCatId->cat_id,
                'publish_date'  => date("Y-m-d h:i:s"),
                'publish_by'    => $this->session->get('email')
            );

            //From Validation Check
            if ($this->validate($rules, $rules)) 
            {

                if (empty($articleId->article_id)) 
                {
                    if ($this->common_model->save('web_article', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/contact'));
                } else {
                    if ($this->common_model->update('web_article', $userdata, array('article_id' => $articleId->article_id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/contact'));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return  redirect()->to(base_url('/backend/cms/contact'));
            }
        } else {

            if(!empty($articleId)) {

                $data['article']   = $this->common_model->findById('web_article', array('article_id' => $articleId->article_id));
            } else {

                $data['article']   = (object)$userdata = array(
                    'article_id'    => '',
                    'headline_en'   => '',
                    'headline_fr'   => '',
                    'article1_en'   => '',
                    'article1_fr'   => '',
                    'cat_id'        => '',
                    'publish_date'  => '',
                    'publish_by'    => ''
                );
            }

        $data['content'] = $this->BASE_VIEW . '\article\contact';
        return $this->template->admin_layout($data);

        }
        
    }


    /*
    |----------------------------------------------
    |       segment news
    |----------------------------------------------     
    */

    public function news_list(){

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllNews paramiter =  where, limit, offset.
        $data['article']  = $this->cms_model->findAllNews(array(), 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_news', array());
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);


        $data['content'] = $this->BASE_VIEW . '\news\list';
        return $this->template->admin_layout($data);
    }

    public function add_news($article_id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        if (!empty($article_id)) {   

            $this->validation->setRule('headline_en',display('headline_en'),'required|max_length[255]'); 
            $this->validation->setRule('cat_id',display('category'),'required|max_length[10]'); 

        } else {
            
            $this->validation->setRule('headline_en',display('headline_en'),'required|max_length[255]'); 
            $this->validation->setRule('cat_id',display('category'),'required|max_length[10]'); 
        }
      
        $slug = url_title(strip_tags($this->request->getPost('headline_en')), '-', FILTER_SANITIZE_STRING);
        $this->validation->setRule('article1_en','Article English','required'); 
        $this->validation->setRule('article_image', 'This Image', "ext_in[article_image,png,jpg,gif,ico]|is_image[article_image]");


        if($this->request->getMethod() == 'post'){


            if($this->validation->withRequest($this->request)->run())
            {
                $image = $this->imageupload->upload_image($this->request->getFile('article_image'), 'public/upload/news/', $this->request->getPost('article_image_old'), 290,185);
                $data['article']   = (object)$userdata = array(

                    'slug'          => $slug,
                    'headline_en'   => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
                    'headline_fr'   => $this->request->getPost('headline_fr', FILTER_SANITIZE_STRING), 
                    'article_image' => $image, 
                    'article1_en'   => $this->request->getPost('article1_en'),
                    'article1_fr'   => $this->request->getPost('article1_fr'),
                    'cat_id'        => $this->request->getPost('cat_id', FILTER_SANITIZE_STRING),
                    'publish_date'  => date("Y-m-d h:i:s"),
                    'publish_by'    => $this->session->get('email'),
                );


                if(empty($article_id)) 
                {
                    if ($this->common_model->save('web_news', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/news-list'));
                } else {
                    if ($this->common_model->update('web_news', $userdata, array('article_id' => $article_id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));
                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/edit-news/'.$article_id));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());

                if(empty($article_id)){

                    return  redirect()->to(base_url('/backend/cms/add-news'));

                } else {

                    return  redirect()->to(base_url('/backend/cms/edit-news/'.$article_id));
                }
            }

        } else {

            //paramiter = table, where
            $parent_cat = $this->common_model->findById('web_category', array('slug' => 'blog'));

            //paramiter = table, where, fieldname, order
            $child_cat = $this->common_model->findAll('web_category', array('parent_id' => $parent_cat->cat_id), 'cat_id', 'desc');
            $data['child_cat'] = $child_cat;

            if(!empty($article_id)) {

                $data['article']   = $this->common_model->findById('web_news', array('article_id' => $article_id));
            } else {

                 $data['article']   = (object)$userdata = array(
                    'article_id'    => $this->request->getPost('article_id', FILTER_SANITIZE_STRING),
                    'slug'          => $slug,
                    'headline_en'   => $this->request->getPost('headline_en', FILTER_SANITIZE_STRING),
                    'headline_fr'   => $this->request->getPost('headline_fr', FILTER_SANITIZE_STRING), 
                    'article_image' => "", 
                    'article1_en'   => $this->request->getPost('article1_en'),
                    'article1_fr'   => $this->request->getPost('article1_fr'),
                    'cat_id'        => $this->request->getPost('cat_id', FILTER_SANITIZE_STRING),
                    'publish_date'  => date("Y-m-d h:i:s"),
                    'publish_by'    => $this->session->get('email'),
                );
            }


        $data['content'] = $this->BASE_VIEW . '\news\form';
        return $this->template->admin_layout($data);

        }
        
    }

    public function delete_news($id = null)
    { 
       
        if ($this->common_model->delete('web_news', array('article_id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/news-list');
    }

    /*
    |----------------------------------------------
    |       segment news
    |----------------------------------------------     
    */

    public function category_list(){

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['category']  = $this->common_model->get_all('web_category',array(), 'cat_name_en', 'asc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_category', array());
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['blog_info']    = $this->db->table('web_category')->select('cat_id')->where('slug','blog')->get()->getRow();

        $data['content'] = $this->BASE_VIEW . '\category\list';
        return $this->template->admin_layout($data);
    }

    public function slug_check($cat_name_en, $cat_id)
    { 

        $packageExists = $this->common_model->findById('web_category', array('cat_name_en' => $cat_name_en, 'cat_id !=' => $cat_id));
        
        if(empty($packageExists)) {
            return true;
        } else {
            return false;
        }
    }

   
    public function add_category($cat_id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        if (!empty($cat_id)) {   
            $this->validation->setRule('cat_name_en', display('cat_name_en'),'required|max_length[255]');
        } else {

            $this->validation->setRule('cat_name_en', display('cat_name_en'),'required|is_unique[web_category.cat_name_en]|max_length[255]');
            $this->validation->setRule('slug', display('slug'),'is_unique[web_category.slug]|max_length[255]');
        }
        $this->validation->setRule('cat_image', display('cat_image'), 'ext_in[cat_image,png,jpg,gif,ico]|is_image[cat_image]');
    
        if($this->validation->withRequest($this->request)->run()){

            $image_path = $this->imageupload->upload_image($this->request->getFile('cat_image'), 'public/upload/', $this->request->getPost('cat_image_old'), 400, 400);

        } else {

            $image_path = "";
        }

        if($this->request->getMethod() == 'post'){

             $data['category']   = (object)$userdata = array(

                'slug'          => $slug = url_title(strip_tags($this->request->getPost('cat_name_en')), '-', FILTER_SANITIZE_STRING),
                'cat_name_en'   => $this->request->getPost('cat_name_en', FILTER_SANITIZE_STRING),
                'cat_name_fr'   => $this->request->getPost('cat_name_fr', FILTER_SANITIZE_STRING),
                'parent_id'     => $this->request->getPost('parent_id', FILTER_SANITIZE_STRING),
                'cat_title1_en' => $this->request->getPost('cat_title1_en', FILTER_SANITIZE_STRING),
                'cat_title1_fr' => $this->request->getPost('cat_title1_fr', FILTER_SANITIZE_STRING),
                'cat_image'     => $image_path,
                'cat_title2_en' => $this->request->getPost('cat_title2_en', FILTER_SANITIZE_STRING),
                'cat_title2_fr' => $this->request->getPost('cat_title2_fr', FILTER_SANITIZE_STRING),
                'menu'          => $this->request->getPost('menu', FILTER_SANITIZE_STRING),
                'position_serial'=> $this->request->getPost('position_serial', FILTER_SANITIZE_STRING),
                'status'        => $this->request->getPost('status', FILTER_SANITIZE_STRING)
            );

             /*echo "<pre>";

             print_r($data['category']);
             die();*/

            $slugCheck = $this->slug_check($this->request->getPost('cat_name_en'), $cat_id);
            if($slugCheck != 1){

                $this->session->setFlashdata('exception', "This category Already Exists, Please Try Again!");
                return  redirect()->to(base_url('/backend/cms/category-list'));
            }

            //From Validation Check
            if ($this->validation->withRequest($this->request)->run()) {

                if (empty($cat_id)) 
                {
                    if ($this->common_model->save('web_category', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));
                        return  redirect()->to(base_url('/backend/cms/category-list'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                        return  redirect()->to(base_url('/backend/cms/add-category'));

                    }
                    return  redirect()->to(base_url('/backend/cms/add-category'));
                } else {
                    if ($this->common_model->update('web_category', $userdata, array('cat_id' => $cat_id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));
                        return  redirect()->to(base_url('/backend/cms/category-list'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                        return  redirect()->to(base_url('/backend/cms/edit-category/'.$cat_id));
                    }
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return  redirect()->to(base_url('/backend/cms/add-category'));
            }

        } else {

            //paramiter = table, where, fieldname, order
            $data['parent_cat'] = $this->common_model->findAll('web_category', array(), 'cat_id', 'desc');

            if(!empty($cat_id)) {

                $data['category'] = $this->common_model->findById('web_category', array('cat_id' => $cat_id));
            } else {

                $data['category']   = (object)$userdata = array(

                    'cat_id'        => '',
                    'slug'          => '',
                    'cat_name_en'   => '',
                    'cat_name_fr'   => '',
                    'parent_id'     => '',
                    'cat_title1_en' => '',
                    'cat_title1_fr' =>'',
                    'cat_image'     => '',
                    'cat_title2_en' => '',
                    'cat_title2_fr' => '',
                    'menu'          => '',
                    'position_serial'=> '',
                    'status'        => ''
                );
            }


        $data['content'] = $this->BASE_VIEW . '\category\form';
        return $this->template->admin_layout($data);
        }
    }

    public function delete_category($id = null)
    { 
       
        if ($this->common_model->delete('web_category', array('cat_id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/category-list');
    }


    /*
    |----------------------------------------------
    |       segment Slider
    |----------------------------------------------     
    */

    public function slider_list(){

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['slider']   = $this->common_model->get_all('web_slider',array(), 'id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_slider', array());
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['content'] = $this->BASE_VIEW . '\slider\list';
        return $this->template->admin_layout($data);
    }


    public function add_slider($id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $this->validation->setRule('slider_h1_en', display('slider_h1_en'),'required|max_length[1000]');
        $this->validation->setRule('slider_img', display('slider_img'), 'ext_in[slider_img,png,jpg,gif,ico]|is_image[slider_img]');

        if($this->validation->withRequest($this->request)->run()){

            $image_path = $this->imageupload->upload_image($this->request->getFile('slider_img'), 'public/upload/slider/', $this->request->getPost('slider_img_old'), 1200, 800);

        } else {

            $image_path = "";
        }

        if($this->request->getMethod() == 'post'){

            $data['slider']   = (object)$sliderdata = array(

                'slider_h1_en'  => $this->request->getPost('slider_h1_en', FILTER_SANITIZE_STRING),
                'slider_h1_fr'  => $this->request->getPost('slider_h1_fr', FILTER_SANITIZE_STRING), 
                'slider_h2_en'  => $this->request->getPost('slider_h2_en', FILTER_SANITIZE_STRING), 
                'slider_h2_fr'  => $this->request->getPost('slider_h2_fr', FILTER_SANITIZE_STRING),
                'slider_h3_en'  => $this->request->getPost('slider_h3_en', FILTER_SANITIZE_STRING),
                'slider_h3_fr'  => $this->request->getPost('slider_h3_fr', FILTER_SANITIZE_STRING),
                'slider_img'    => $image_path,
                'custom_url'    => $this->request->getPost('custom_url', FILTER_SANITIZE_STRING),
                'status'        => $this->request->getPost('status', FILTER_SANITIZE_STRING)
            );

            //From Validation Check
            if ($this->validation->withRequest($this->request)->run()) {

                if (empty($id)) 
                {
                    if ($this->common_model->save('web_slider', $sliderdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));

                    }
                    return  redirect()->to(base_url('/backend/cms/add-slider'));
                } else {
                    if ($this->common_model->update('web_slider', $sliderdata, array('id' => $id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/edit-slider/'.$id));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return  redirect()->to(base_url('/backend/cms/slider-list'));
            }

        } else {

            if(!empty($id)) {

                $data['slider'] = $this->common_model->findById('web_slider', array('id' => $id));
            } else {
                $data['slider']   = (object)$sliderdata = array(

                    'id'            => '',
                    'slider_h1_en'  => '',
                    'slider_h1_fr'  => '', 
                    'slider_h2_en'  => '', 
                    'slider_h2_fr'  => '',
                    'slider_h3_en'  => '',
                    'slider_h3_fr'  => '',
                    'slider_img'    => '',
                    'custom_url'    => '',
                    'status'        => ''
                );
            }

        $data['content'] = $this->BASE_VIEW . '\slider\form';
        return $this->template->admin_layout($data);
        }
    }


    public function delete_slider($id = null)
    { 
       
        if ($this->common_model->delete('web_slider', array('id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/slider-list');
    }

    /*
    |----------------------------------------------
    |       segment Social
    |----------------------------------------------     
    */

    public function social_link_list(){

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['social_link']   = $this->common_model->get_all('web_social_link',array(), 'id', 'desc', 20,($page_number-1)*20);
        $total            = $this->common_model->countRow('web_social_link', array());
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);
        $data['content'] = $this->BASE_VIEW . '\social_link\list';
        return $this->template->admin_layout($data);
    }

    public function add_social_link($id = null)
    {
        $data['title']        = display('add_content');
        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));

        $this->validation->setRule('name', display('name'),'required|max_length[100]');
        $this->validation->setRule('link', display('link'),'required|max_length[100]|valid_url');
        $this->validation->setRule('icon', display('icon'),'required|max_length[100]');
    
        $data['social_link']   = (object)$userdata = array(

            'name'  => $this->request->getPost('name', FILTER_SANITIZE_STRING),
            'link'  => $this->request->getPost('link', FILTER_SANITIZE_STRING), 
            'icon'  => $this->request->getPost('icon', FILTER_SANITIZE_STRING), 
            'status'=> $this->request->getPost('status', FILTER_SANITIZE_STRING)
        );

        if($this->request->getMethod() == 'post'){

            //From Validation Check
            if ($this->validation->withRequest($this->request)->run()) {

                if (!empty($id)) 
                {
                   
                    if ($this->common_model->update('web_social_link', $userdata, array('id' => $id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/edit-social-link/'.$id));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return  redirect()->to(base_url('/backend/cms/social-link-list'));
            }

        } else {

            if(!empty($id)) {

                $data['social_link'] = $this->common_model->findById('web_social_link', array('id' => $id));
            } 


        $data['content'] = $this->BASE_VIEW . '\social_link\form';
        return $this->template->admin_layout($data);
        }
    }


    /*
    |----------------------------------------------
    |       segment Advertisement
    |----------------------------------------------     
    */
    public function advertisement_list(){

        $data['web_language'] = $this->common_model->findById('web_language', array('id' => 1));
        $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
        //findAllcategory paramiter =  where, limit, offset.
        $data['advertisement']   = $this->common_model->get_all('advertisement',array(), 'page', 'asc', 20,($page_number-1)*20);
   
        $total            = $this->common_model->countRow('advertisement', array());
        $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

        $data['content'] = $this->BASE_VIEW . '\advertisement\list';
        return $this->template->admin_layout($data);
    }


    public function add_advertisement($id = null)
    {
        
        $this->validation->setRule('page', display('page'),'required|trim');
        $this->validation->setRule('add_type', display('add_type'),'required|trim');
        $this->validation->setRule('serial_position', display('position_serial'),'required|trim|max_length[10]');

        if(!empty($this->request->getFile('image'))){
            $this->validation->setRule('image', display('image'), 'ext_in[image,png,jpg,gif,ico]|is_image[image]');

            if($this->validation->withRequest($this->request)->run()){

                $image_path = $this->imageupload->upload_image($this->request->getFile('image'), 'public/upload/advertisement/', $this->request->getPost('image_old'), 728, 90);

            } else {

                $image_path = "";
            }
        }

      

        if (!empty($id)) {

            $exist = $this->common_model->findById('advertisement', array('page'=> $this->request->getPost('page'), 'serial_position' => $this->request->getPost('serial_position'), 'id !=' =>$id));

            if(!empty($exist)){
                $this->session->setFlashdata('exception', display('already_exists'));
                return  redirect()->to(base_url('/backend/cms/add-advertisement/'.$id));
            }

        } else {
            $exist = $this->common_model->findById('advertisement', array('page'=>$this->request->getPost('page'), 'serial_position' => $this->request->getPost('serial_position')));
            if ($exist) {
                $this->session->setFlashdata('exception', display('already_exists'));
               return  redirect()->to(base_url('/backend/cms/add-advertisement'));
            }
        }       
        if ($this->request->getPost('add_type')=='code') {
            $this->validation->setRule('script', display('script'),'required');

        }


        if($this->request->getMethod() == 'post'){

            $data['advertisement']  = (object)$advertisementdata = array(
            
                'name'              => $this->request->getPost('name', FILTER_SANITIZE_STRING),
                'page'              => $this->request->getPost('page', FILTER_SANITIZE_STRING), 
                'image'             => @$image_path,
                'script'            => $this->request->getPost('script'),
                'url'               => $this->request->getPost('url', FILTER_SANITIZE_STRING),
                'serial_position'   => $this->request->getPost('serial_position', FILTER_SANITIZE_STRING),
                'status'            => $this->request->getPost('status', FILTER_SANITIZE_STRING)
            );

            //From Validation Check
            if ($this->validation->withRequest($this->request)->run()) {

                if (empty($id)) 
                {
                    if ($this->common_model->save('advertisement', $advertisementdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));

                    }
                    return  redirect()->to(base_url('/backend/cms/add-advertisement'));
                } else {
                    if ($this->common_model->update('advertisement', $advertisementdata, array('id' => $id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/edit-advertisement/'.$id));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return  redirect()->to(base_url('/backend/cms/add-advertisement'));
            }

        } else {
            $data['parent_cat'] = $this->common_model->findAll('web_category', array(), 'cat_id', 'desc');
            if(!empty($id)) {
                $data['advertisement'] = $this->common_model->findById('advertisement', array('id' => $id));
            } else {
                $data['advertisement']  = (object)$advertisementdata = array(
            
                'id'                => '',
                'name'              => '',
                'page'              => '', 
                'image'             => '',
                'script'            => '',
                'url'               => '',
                'serial_position'   => '',
                'status'            => ''
            );
            }

        $data['content'] = $this->BASE_VIEW . '\advertisement\form';
        return $this->template->admin_layout($data);
        }
    }

    public function delete_advertisement($id = null)
    { 
        if ($this->common_model->delete('advertisement', array('id' => $id))){
            $this->session->setFlashdata('message', display('delete_successfully'));
        } else {
            $this->session->setFlashdata('exception', display('please_try_again'));
        }
        return redirect()->route('backend/cms/advertisement-list');
    }

    public function getAdvertisementinfo($id = '')
    {

        if(!empty($id)){
            $advertisement = $this->common_model->findById('advertisement', array('id' => $id));
        } else {

            $advertisement = array(
                'id'                => '',
                'name'              => '',
                'page'              => '', 
                'image'             => '',
                'script'            => '',
                'url'               => '',
                'serial_position'   => '',
                'status'            => ''
            );
        }

        echo json_encode($advertisement);
    }



    /*
    |----------------------------------------------
    |       segment Web-Language
    |----------------------------------------------     
    */
    public function weblanguage_list($id = 1)
    {
        
        $this->validation->setRule('name', display('name'),'required|max_length[100]');
        $this->validation->setRule('flag', display('flag'),'required|max_length[10]');
        
        $data['language'] = (object)$userdata = array(

            'name'  => $this->request->getPost('name', FILTER_SANITIZE_STRING),
            'flag'  => $this->request->getPost('flag', FILTER_SANITIZE_STRING)
        );

        if($this->request->getMethod() == 'post'){

            //From Validation Check
            if ($this->validation->withRequest($this->request)->run()) {

                if (empty($id)) 
                {
                    if ($this->common_model->save('web_language', $userdata)) {
                        $this->session->setFlashdata('message', display('save_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));

                    }
                    return  redirect()->to(base_url('/backend/cms/web-language-list'));
                } else {
                    if ($this->common_model->update('web_language', $userdata, array('id' => $id))) {
                        $this->session->setFlashdata('message', display('update_successfully'));

                    } else {
                        $this->session->setFlashdata('exception', display('please_try_again'));
                    }
                    return  redirect()->to(base_url('/backend/cms/web-language-list'));
                }
            } else { 

                $this->session->setFlashdata("exception", $this->validation->listErrors());
                return  redirect()->to(base_url('/backend/cms/web-language-list'));
            }

        } else {

            $page_number      = (!empty($this->request->getGet('page'))?$this->request->getGet('page'):1);
            $data['country']  = $this->common_model->get_all('dbt_country',array(), 'name', 'asc', 20,($page_number-1)*20);
            $total            = $this->common_model->countRow('dbt_country', array());
            $data['pager']    = $this->pager->makeLinks($page_number, 20, $total);

            if(!empty($id)) {
                $data['language'] = $this->common_model->findById('web_language', array('id' => $id));
            } 
        $data['content'] = $this->BASE_VIEW . '\article\language';
        return $this->template->admin_layout($data);
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
}
