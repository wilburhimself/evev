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

function is_admin($user=null) {
    if (empty($user)) return false;
    if (!is_logged_in()) return false;
    return $user->user_type == 'admin' ? true : false;
}

/**
 * A user created a node or has the permissions to edit it ...
 *
 * @param $user
 * @param $node
 * @return void
 */
function owns_node($user, $node) {
    if ((is_admin($user)) or $user->id == $node->user_id) {
        return true;
    }
    return false;
}

function get_active_users($num=null, $offset=null) {
    $ci =& get_instance();
    $ci->db->where('status', 1);
    $users = $ci->db->get('users', $num, $offset)->result();
    return $users;
}

function change_promotion_status($user) {
    switch($user->user_type) {
        case 'admin':
            $data['user_type'] = 'registered';
            break;
        case 'registered':
            $data['user_type'] = 'admin';
            break;
        default:
            $data['user_type'] = 'registered';
    }
    $ci =& get_instance();
    $ci->db->where('id', $user->id)->update('users', $data);
}