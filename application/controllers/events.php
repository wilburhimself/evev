<?php
class Events extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function going($id) {
        login_required();
        $node = node_load($id);
        going_status($node);
        redirect_back_or_default();
    }
}
