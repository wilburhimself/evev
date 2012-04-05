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

    public function ddd() {
        require APPPATH.'/libraries/Facebook.php';
        $config = array(
            'appId'  => '355837437786493',
            'secret' => '51c10d4a7c6af28fe453350faaba4695',
            'domain' => 'todo.mac',
        );
        $facebook = new Facebook($config);
        $uid = $facebook->getUser();
        $login_url = $facebook->getLoginUrl(array(
                        'scope' => 'email,offline_access,publish_stream,user_birthday,user_location,user_work_history,user_about_me,user_hometown',
                        ''
                      ));
        if ($uid) {
            print 'logged';
        } else {
            redirect($login_url);
        }


    }

    public function login_facebook() {
        $config = array(
            'appId'  => '355837437786493',
            'secret' => '51c10d4a7c6af28fe453350faaba4695',
            'cookie' => true,
        );

        try {
            $this->load->library('Facebook', $config);
        } catch(Exception $e) {
            print_r($e);
        }

        $user = $this->facebook->getUser();
        $access = $this->facebook->getAccessToken();
        $login_url = $this->facebook->getLoginUrl(array(
                        'scope' => 'email,publish_stream,user_birthday,user_location,user_work_history,user_about_me,user_hometown',
                      ));

        if ($user) {
            try {
                $this->db->where('oauth_provider', 'facebook')
                    ->where('oauth_id', $user);
                $result = $this->db->get('users');

                if ($result->num_rows() == 0) {
                    $user_profile = $this->facebook->api('/me');
                    $data['username'] = $user_profile['username'];
                    $data['email'] = $user_profile['email'];
                    $data['display_name'] = $user_profile['name'];
                    $data['oauth_provider'] = 'facebook';
                    $data['oauth_id'] = $user_profile['id'];
                    $data['status'] = 1;
                    $this->db->insert('users', $data);
                }
                $this->db->where('oauth_provider', 'facebook')
                    ->where('oauth_id', $user);
                $result = $this->db->get('users');

                $this->User->save_session_userdata($result->row());
                redirect();

            } catch(FacebookApiException $e) {
                error_log($e);
                redirect($login_url);
            }
        } else {
            redirect($login_url);
        }
    }

    public function users() {
        login_required();
        $data['users'] = get_active_users();
        $data['yield'] = 'sessions/users';
        $data['page_title'] = 'Users';
        $data['title'] = 'Users';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function promote($user_id) {
        $user = get_user($user_id);
        change_promotion_status($user);
        redirect_back_or_default();
    }
}