<?php

function languages_dropdown($active=null) {
    $ci =& get_instance();
    $languages = $ci->db->get('languages')->result();
    $dropdown = array();
    foreach ($languages as $language) {
        $dropdown[$language->language_code] = $language->language_name;
    }
    return $dropdown;

}