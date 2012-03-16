<?php
class Language {
    public function get_language() {
        $ci =& get_instance();
        $ci->logged_user = get_logged_user();
    }
}