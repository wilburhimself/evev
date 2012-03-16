<?php
class Sessions extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $data['yield'] = 'sessions/login';
        $this->load->vars($data);
            $this->load->view('base');
    }

    public function create() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        if ($this->User->login($username, $password)) {
            redirect();
        } else {
            print 'noooooooo';
        }
    }

    public function destroy() {
        logout();
        redirect();
    }
}