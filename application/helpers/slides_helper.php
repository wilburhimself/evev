<?php
function get_slides($num=null) {
    $ci =& get_instance();
    $ci->db->where('language', $ci->lang->lang());
    $result = $ci->db->get('slides', $num);
    $output = array();
    foreach ($result->result() as $slide) {
        $output[] = node_load($slide->node_id);
    }
    return $output;
}
function add_slide($node_id) {
    $ci =& get_instance();
    $data['node_id'] = $node_id;
    $data['language'] = node_load($node_id)->language;
    return $ci->db->insert('slides', $data);
}

function remove_slide($node_id) {
    $ci =& get_instance();
    $ci->db->where('node_id', $node_id);
    return $ci->db->delete('slides');
}

function _is_slide($node_id) {
    $ci =& get_instance();
    $ci->db->where('node_id', $node_id);
    return $ci->db->get('slides')->num_rows();
}
function manage_slide($node_id) {
    if (_is_slide($node_id)) {
        remove_slide($node_id);
    } else {
        add_slide($node_id);
    }
}
