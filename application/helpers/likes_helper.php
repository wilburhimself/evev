<?php
// checks if user likes node
function user_likes($node, $user=null) {
    $user = !empty($user) ? $user : get_logged_user();
    $ci =& get_instance();
    $ci->db->where('node_id', $node->id);
    $ci->db->where('user_id', $user->id);

    $result = $ci->db->get('likes');
    return $result->num_rows() == 1;
}

// changes the likeness status of user - node
function like_status($node, $user=null) {
    $user = !empty($user) ? $user : get_logged_user();
    $ci =& get_instance();

    if (user_likes($node, $user)) {
        $ci->db->where('node_id', $node->id)
            ->where('user_id', $user->id);
        $ci->db->delete('likes');
    } else {
        $data['node_id'] = $node->id;
        $data['user_id'] = $user->id;
        $ci->db->insert('likes', $data);
    }
}

