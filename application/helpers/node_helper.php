<?php
function node_form($node_type, $node=null) {
    $ci =& get_instance();
    $data['node_type'] = $node_type;
    if(isset($node)) $data['node'] = $node;
    $ci->load->view('forms/node', $data);
}

function node_load($id) {
    $ci =& get_instance();
    return $ci->node->load_node($id);
}

function get_nodes($options=array()) {
    $ci =& get_instance();
    return $ci->node->objects($options);
}

function node_dropdown($type) {
    $nodes = get_nodes(array('type' => array($type)));
    $output = array();
    foreach ($nodes as $node) $output[$node->id] = $node->title;

    return $output;
}

/**
 * @param integer $id
 * @param string $op
 * @return void
 *
 * $op can be one of these:
 *
 * full: For full display of node, better use this in display or details page
 * teaser: For display in lists and usually will render a link to full node display
 *
 */


function node_display($node, $op='full') {
    $ci =& get_instance();
    $template = file_exists(APPPATH.'views/nodes/display/'.$node->type.'.php') ? 'nodes/display/'.$node->type : 'nodes/display/node';
    $ci->load->view($template, array('node' => $node, 'op' => $op));
}