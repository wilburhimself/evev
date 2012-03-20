<?php
class Businesses extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $categories = get_categories('business-type');
        $data['categories'] = $categories;
        $data['page_title'] = 'Negocios';
        $data['yield'] = 'businesses/index';
        $this->load->vars($data);
        $this->load->view('base');
    }
}
