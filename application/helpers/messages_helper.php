<?php
    if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    global $ci;
    $ci = get_instance();
    $ci->load->library('session');
    
    function message($message) {
        global $ci;
        $ci->session->set_flashdata('message', $message);
    }
    
    function error($message) {
        global $ci;
        $ci->session->set_flashdata('error', $message);
    }

    function show_messages() {
        global $ci;
        $message = $ci->session->flashdata('message');
        if (!empty($message)) {
            print '<div class="alert alert-info"><a class="close" data-dismiss="alert">×</a>'.$message.'</div>';
        }

        $error = $ci->session->flashdata('error');
        if(!empty($error)) {
            print '<div class="alert alert-error"><a class="close" data-dismiss="alert">×</a>'.$error.'</div>';
        }
        
    }
?>