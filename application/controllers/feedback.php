<?php
class Feedback extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $data['page_title'] = 'Feedback';
        $data['yield'] = 'feedback/index';
        $this->load->vars($data);
        $this->load->view('base');
    }
}
