<?php
class User extends CI_Model {

    private $table_name;
    public function __construct() {
        $this->table_name = 'users';
        parent::__construct();
    }

    public function encrypt($string) {
        return sha1(md5(config_item('encryption_key').$string));
    }
    
    /**
     * Return a requested user based on id, username or email
     * @param $id
     * @return bool
     */
    public function get_user($id) {
        $user = $this->db->where('username', $id)
            ->or_where('email', $id)
            ->or_where('id', $id)->get($this->table_name);

        if ($user->num_rows() == 1) {
            return $user->row();
        }
        return false;
    }

    /**
     * Logs in a user depending on login credentials.
     * This function sets the session data pertinent to authentication and login.
     * @param $username
     * @param $password
     * @return bool
     */
    public function login($username, $password) {
        if ($this->authenticate($username, $password)) {
            $user = $this->get_user($username);
            $this->save_session_userdata($user);
            return true;
        }
        return false;
    }

    /**
     * Authenticates user against database using login credentials
     * @param $username
     * @param $password
     * @return bool
     */
    private function authenticate($username, $password) {
        $authenticated_user = $this->db->where('username', $username)
            ->where('passw', $this->encrypt($password))->get($this->table_name);
        return $authenticated_user->num_rows() == 1 ? true : false;
    }

    private function save_session_userdata($user) {
        $this->session->set_userdata('user_id', $user->id);
        $this->session->set_userdata('logged', 1);
        $this->session->set_userdata('login_time', time());
    }

    public function destroy_session_userdata() {
        $this->session->unset_userdata('user_id');
        $this->session->unset_userdata('logged');
        $this->session->unset_userdata('login_time');
    }
}

class ResultUser {
    private $fields = array();

    public function __construct($user_row) {
        $this->map_fields($user_row);
    }

    private function map_fields($user_row) {
        foreach ($user_row as $key => $value) {
            $this->fields[$key] = $value;
        }
    }

    public function __get($key) {
        if (in_array($key, $this->fields)) {
            return $this->fields[$key];
        }
        return false;
    }
}
