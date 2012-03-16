<?php
function create_hidden_fields($type, $id) {
            $hiddens['entity_type'] = $type;
            $hiddens['entity_id'] = $id;
            return $hiddens;
        }
        
function load_view($data, $template='main') {
            $ci =& get_instance();
            $ci->load->vars($data);
            $isXmlHttpRequest = array_key_exists('X_REQUESTED_WITH', $_SERVER) &&
            $_SERVER['X_REQUESTED_WITH'] == 'XMLHttpRequest';
            if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
                    $ci->load->view($data['yield']);
            } else {
                    $ci->load->view($template);	
            }
}
function aanchor($url, $title) {
            return anchor('#/'.$url, $title);
}

function partial_collection($data, $view, $extra_vars=array()) {
    $ci = get_instance();
    $output = '';
    $on = isset($extra_vars['object_name']) ? $extra_vars['object_name'] : 'object';
    $current = '';
    $current_reverse = sizeof($data);
    foreach ($data as $object) {
        $current++;

        $data[$on] = $object;
        $data['extra'] = $extra_vars;
        $data['current'] = $current;
        $data['current_reverse'] = $current_reverse;
        $ci->load->vars($data);
        $output .= $ci->load->view($view, '', true);
        $current_reverse--;
        if (isset($extra_vars['limit']) and $extra_vars['limit'] == $current) break;
    }
    return $output;
}

function commify_list($items, $display="name") {
    $cats = array();
    foreach ($items as $item):
	$cats[] = $item->{$display};
        endforeach;
    return join(', ', $cats);
}

function render_404() {
    $ci = get_instance();
    $data['restaurants'] = $ci->Restaurant->get(6);
    $data['yield'] = 'home';
    $data['page_title'] = 'No se ha encontrado lo que buscas';
    $ci->load->vars($data);
    return $ci->load->view('404', true);

}
?>