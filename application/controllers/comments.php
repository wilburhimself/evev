<?php
class Comments extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function save() {
        $comment = $this->input->post('comment');
        save_comment($comment);
        redirect_back_or_default();
    }
}
