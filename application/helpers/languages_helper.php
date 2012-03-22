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

function language_name($language_code) {
    $ci =& get_instance();
    $ci->db->where('language_code', $language_code);
    return $ci->db->get('languages')->row()->language_name;
}

function language_switcher() {
    $languages = get_languages();
    print '<div class="language-switcher">';
    foreach ($languages as $language) {

        print anchor($language->language_code, img('assets/images/'.$language->language_code.'.png'));
    }
    print '</div>';
}