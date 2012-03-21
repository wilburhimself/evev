<?php
function is_translation($id) {
    $ci =& get_instance();
    $table = 'translations';
    $ci->db->where('translation_id', $id);
    $result = $ci->db->get($table);
    return $result->num_rows() == 1;
}

function get_original($id) {
    $ci =& get_instance();
    $table = 'translations';
    $ci->db->where('translation_id', $id);
    $result = $ci->db->get($table)->row();
    $original = node_load($result->original_id);
    return $original;
}

function has_translation($id) {
    $ci =& get_instance();
    $table = 'translations';

    $ci->db->where('original_id', $id);
    $translations = $ci->db->get($table);
    if ($translations->num_rows() > 0) {
        return get_translations($id);
    }
    return FALSE;
}

function get_translations($id) {
    $ci =& get_instance();
    $table = 'translations';

    $ci->db->where('original_id', $id);
    $translations = $ci->db->get($table);
    if ($translations->num_rows() > 0) {
        return $translations->result();
    }
    return FALSE;
}

function add_translation($translation_id, $original_id, $language_code) {
    $data['original_id'] = $original_id;
    $data['translation_id'] = $translation_id;
    $data['translation_language'] = $language_code;
    $ci =& get_instance();
    $ci->db->insert('translations', $data);
}

function translation_links($node) {
    print '<div class="translations-available">';
    if (is_translation($node->id) or has_translation($node->id)) {
        print lang('also_available').': ';
    }
    if (is_translation($node->id)) {
        $original = get_original($node->id);
        print anchor($original->language.'/node/'.$original->id, language_name($original->language));
    } elseif (has_translation($node->id)) {
        $translations = get_translations($node->id);
        foreach ($translations as $translation) {
            print anchor($translation->translation_language.'/node/'.$translation->translation_id, language_name($translation->translation_language));
        }
    }
    print '</div>';
}