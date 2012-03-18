<?php
class Likes extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function status($id) {
        $node = node_load($id);
        login_required();
        like_status($node);
        redirect_back_or_default();
    }
}
