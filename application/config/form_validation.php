<?php
$config = array(
    'event' => array(
        array(
            'field' => 'node[title]',
            'label' => lang('title'),
            'rules' => 'required|min_length[6]',
        ),
        array(
            'field' => 'node[description]',
            'label' => lang('description'),
            'rules' => 'required',
        ),
        array(
            'field' => 'node[startdate]',
            'label' => lang('startdate'),
            'rules' => 'required',
        ),
        array(
            'field' => 'category[event-type]',
            'label' => lang('event_type'),
            'rules' => 'required|is_natural_no_zero'
        ),
        array(
            'field' => 'node[business]',
            'label' => lang('business'),
            'rules' => 'required|is_natural_no_zero',
        ),
        array(
            'field' => 'node[location]',
            'label' => lang('location'),
            'rules' => 'required|is_natural_no_zero',
            
        ),
    ),

    'business' => array(
        array(
            'field' => 'node[title]',
            'label' => lang('title'),
            'rules' => 'required|min_length[6]',
        ),
        array(
            'field' => 'node[description]',
            'label' => lang('description'),
            'rules' => 'required',
        ),
        array(
            'field' => 'node[location]',
            'label' => lang('location'),
            'rules' => 'required|is_natural_no_zero',
        ),
        array(
            'field' => 'category[business-type]',
            'label' => lang('business_type'),
            'rules' => 'required|is_natural_no_zero',
        ),
        array(
            'field' => 'node[phone]',
            'label' => lang('phone'),
            'rules' => 'required',
        ),
        array(
            'field' => 'node[email]',
            'label' => lang('email'),
            'rules' => 'required|valid_email',
        ),
        array(
            'field' => 'node[address]',
            'label' => lang('address'),
            'rules' => 'required',
        ),
    ),

    'location' => array(
        array(
            'field' => 'node[title]',
            'label' => lang('title'),
            'rules' => 'required|min_length[6]',
        ),
    ),

    'special' => array(
        array(
            'field' => 'node[title]',
            'label' => lang('title'),
            'rules' => 'required|min_length[6]',
        ),
    ),

    'register' => array(
        array(
            'field' => 'user[username]',
            'label' => lang('username'),
            'rules' => 'required|min_length[4]|is_unique[users.username]',
        ),
        array(
            'field' => 'user[email]',
            'label' => lang('email'),
            'rules' => 'required|valid_email|is_unique[users.email]',
        ),
        array(
            'field' => 'user[passw]',
            'label' => lang('password'),
            'rules' => 'min_length[6]|required',
        ),
    ),
);
