<?php
    class pictures extends CI_Controller {
      public function __construct(){
		parent::__construct();
		
		if(is_logged_in()){
			login_required();
		}
	}
        
        function save() {
            if (!empty($_FILES)):
                $type = $this->input->post('entity_type');
                $id = $this->input->post('entity_id');
                $data['entity_type'] = $this->input->post('entity_type');
                $data['entity_id'] = $this->input->post('entity_id');
                #$data['user_id'] = get_session_user()->id;
                $data['created_at'] = time();
                $f = upload_to($type, $id);
                if ($f) {
                    $data['entity_type'] = $this->input->post('entity_type');
                    $data['entity_id'] = $this->input->post('entity_id');
                    #$data['user_id'] = get_session_user()->id;
                    $data['created_at'] = time();
                    $data['filename'] = $f['file_name'];
                    $data['title'] = $this->input->post('title');
                    $data['active'] = 1;
                    $pic = $this->Picture->add_picture($data);
                    if ($this->input->post('profile') == 1) {
                        $this->user->set_image($pic);
                    }
                } else {
                    error('No se pudo subir la imagen');
                }
            else:
                error("No hay archivos para subir");
            endif;
            redirect_back_or_default();
        }
        
        function multiple_save() {
            
                $type = $this->input->post('entity_type');
                $id = $this->input->post('entity_id');
                $data['entity_type'] = $this->input->post('entity_type');
                $data['entity_id'] = $this->input->post('entity_id');
                //$data['user_id'] = get_session_user()->id;
                $data['created_at'] = time();
                
                foreach($_FILES as $k => $v) {
                    $f = upload_to($type, $id, $k);

                    if ($f) {
                        $data['entity_type'] = $this->input->post('entity_type');
                        $data['entity_id'] = $this->input->post('entity_id');
                        //$data['user_id'] = get_session_user()->id;
                        $data['created_at'] = time();
                        $data['filename'] = $f['file_name'];
                        $data['title'] = $this->input->post('title');
                        $data['active'] = 1;
                        $pic = $this->Picture->add_picture($data);
                        if ($this->input->post('profile') == 1) {
                            $this->user->set_image($pic);
                        }
                    } else {
                        error('No se pudo subir la imagen');
                        redirect_back_or_default();
                    }
                }
            redirect_back_or_default();
        }
        
        function show($picture) {
            $data['picture'] = $this->picture->get_picture($picture);
            $data['referer'] = $_SERVER['HTTP_REFERER'];
            $data['yield'] = 'picture_show';
            $this->load->vars($data);
            $this->load->view('main');
        }
        
        function profile($picture) {
            login_required();
            $this->User->set_image($picture);
            redirect(get_session_user()->url);
        }

        function resize($pic, $width, $height) {
            $picture = $this->Picture->get_picture($pic);
            print image_thumb(picture_url($picture), $height, $width);
        }
        
        function delete($picture) {
            $this->Picture->delete_picture($picture);
            message('The picture was deleted');
            redirect_back_or_default();
        }

        function set_cover($id) {
            $this->Picture->set_cover($id);
            redirect_back_or_default();
        }
    }
?>