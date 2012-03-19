<?php
function get_category($id) {
    $ci =& get_instance();
    $category = $ci->Category->get_category($id);
    return $category;
}

function get_categories($vocabulary) {
    $ci =& get_instance();
    $categories = $ci->Category->get_categories($vocabulary);
    return $categories;
}
function category_dropdown($vocabulary, $multiple=null) {
    $categories = get_categories($vocabulary);
    $output = array();
    foreach ($categories as $cat) {
        $output[$cat->id] = $cat->name;
    }
    if (empty($multiple)) {
        print form_dropdown('category['.$vocabulary.'][]', $output);
    } else {
        foreach ($output as $key => $value) {
            print '<span class="checkbox-option">'.form_checkbox('category['.$vocabulary.'][]', $key).' '.$value.'</span>';
        }
    }
}

function node_categories($node, $vocabulary) {
    $ci =& get_instance();
    $categories = $ci->Category->node_categories($node, $vocabulary);
    return $categories;
}
 
