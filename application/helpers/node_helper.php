<?php
function node_form($node_type, $node=null) {
    $ci =& get_instance();
    $data['node_type'] = $node_type;
    if(isset($node)) $data['node'] = $node;
    $ci->load->view('forms/node', $data);
}

function node_translation_form($node_type, $node, $language_code) {
    $ci =& get_instance();
    $data['node_type'] = $node_type;
    //$data['node'] = new node;
    $data['original_node'] = $node;
    $data['language_code'] = $language_code;
    $ci->load->view('forms/node_translation', $data);
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
    foreach ($nodes as $node) {
        $output[$node->id] = $node->title;
    }
    return $output;
}

function search($options) {
    $ci =& get_instance();
    return $ci->node->search($options);
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

function link_to($node, $text=null) {
    $text = !empty($text) ? $text : $node->title;
    return anchor($node->language.'/node/'.$node->id, $text);
}

function slug_exists($slug) {
    $ci =& get_instance();
    $ci->db->where('slug', $slug);
    $result = $ci->db->get('node');
}