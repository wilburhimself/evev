<?php
function going($event, $user) {
    $data['user_id'] = $user->id;
    $data['event_id'] = $event->id;
    $ci =& get_instance();
    $ci->db->insert('events_going', $data);
}
function user_going($event, $user) {
    $ci =& get_instance();
    $ci->db->where('event_id', $event->id)
        ->where('user_id', $user->id);
    $result = $ci->db->get('events_going');
    return $result->num_rows() == 1;
}