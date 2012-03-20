<?php

function get_languages() {
    $ci =& get_instance();
    $languages = $ci->db->get('languages')->result();
    return $languages;
}

function languages_dropdown() {
    $languages = get_languages();
    $dropdown = array();
    foreach ($languages as $language) {
        $dropdown[$language->language_code] = $language->language_name;
    }
    return $dropdown;
}