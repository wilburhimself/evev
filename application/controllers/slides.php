<?php
class Slides extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function manage($node_id) {
        manage_slide($node_id);
        redirect_back_or_default();
    }
}
