<?php
function get_slides($num=null) {
    $ci =& get_instance();
    $result = $ci->db->query('SELECT n.id, s.node_id
        FROM node n, fields_event f, slides s
        WHERE n.language =  "'.$ci->lang->lang().'"
        AND s.node_id = n.id
        AND f.startdate > NOW( )
        AND f.node_id = n.id
        LIMIT 0 , 30');
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
