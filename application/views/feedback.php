<?php
class Feedback extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $data['page_title'] = 'Feedback';
        $data['yield'] = 'feedback/index';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function type($type) {
        $data['type'] = $type;
        $data['page_title'] = 'Submitting type '.$type;
        $data['yield'] = 'feedback/submit';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function send_comment() {
        $comment = $this->input->post('comment');
        $subject = 'Someone has written a comment on TODO';
        $message = "Name: \t\t {$comment['fullname']} \n
        Email: \t\t {$comment['email']} \n
        message: \n {$comment['comment']}";

        mail('wsuero@silgon.net', $subject, $message);
        message('Your comment has been sent, thank you!');
        redirect_back_or_default();
    }
}
