<?php

function user_going($event, $user=null) {
    $ci =& get_instance();
    $user = !empty($user) ? $user : get_logged_user();
    $ci->db->where('node_id', $event->id)
        ->where('user_id', $user->id);
    $result = $ci->db->get('events_going');
    return $result->num_rows() == 1;
}

function going_status($event, $user=null) {
    $ci =& get_instance();
    $user = !empty($user) ? $user : get_logged_user();
    if (user_going($event, $user)) {
        $ci->db->where('node_id', $event->id)
            ->where('user_id', $user->id);
        $ci->db->delete('events_going');
    } else {
        $data['user_id'] = $user->id;
        $data['node_id'] = $event->id;
        $ci->db->insert('events_going', $data);
    }
}

function count_users_going($node) {
    $ci =& get_instance();
    $ci->db->where('node_id', $node->id);

    return $ci->db->get('events_going')->num_rows();
}
