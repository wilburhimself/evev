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

    public function register() {
        $data['yield'] = 'sessions/register';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function create_account() {
        if ($this->form_validation->run('register')) {
            $user = $this->input->post('user');
            $user['passw'] = $this->User->encrypt($user['passw']);
            $user['status'] = 1;
            $user['user_type'] = 'registered';

            $this->db->insert('users', $user);
            message(lang('create_account_confirmation'));
            redirect('login');
        } else {
            $this->register();
        }
    }

    public function profile($username) {
        $user = get_user($username);
        $data['user'] = $user;
        $data['page_title'] = $user->username;
        $data['yield'] = 'sessions/profile';
        $this->load->vars($data);
        $this->load->view('base');
    }
}