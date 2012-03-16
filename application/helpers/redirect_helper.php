<?php
    function redirect_back_or_default($url=null) {
        $default = isset($url) ? $url : base_url();
        if ($_SERVER['HTTP_REFERER']) {
            header('location:'.$_SERVER['HTTP_REFERER']);
        } else {
            header('location:'.$default);
        }
    }
?>