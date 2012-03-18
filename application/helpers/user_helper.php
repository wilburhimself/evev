<?php

function logout() {
    $ci =& get_instance();
    $ci->User->destroy_session_userdata();
}

function is_logged_in() {
    $ci =& get_instance();
    $logged = $ci->session->userdata('logged');
    if ($logged == 1) {
        return true;
    }
    return false;
}

function get_logged_user() {
    if (!is_logged_in()) return false;
    $ci =& get_instance();
    return $ci->User->get_user($ci->session->userdata('user_id'));
}

function login_required() {
    if (!is_logged_in()) {
        redirect('sessions');
    } else {
        $ci =& get_instance();
        $data['user'] = get_logged_user();

        $ci->load->vars($data);
        return $data['user'];
    }
}

function get_user($id) {
    $ci =& get_instance();
    return $ci->User->get_user($id);
}
