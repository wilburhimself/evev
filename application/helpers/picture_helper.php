<?php
function upload_path($type, $id) {
   return './uploads/'.$type.'/'.$id.'/';
}

function prepare_path($type, $id) {
    $upload_path = upload_path($type, $id);
    if (!file_exists('./uploads/'.$type)) {
        mkdir('./uploads/'.$type);
    }
    if (!file_exists($upload_path)) {
        mkdir($upload_path);
    }
    return $upload_path;
}
function picture_url($picture){
   return upload_path($picture->entity_type, $picture->entity_id).$picture->filename;
}
function upload_to($type, $id, $field="picture") {
    $upload_path = prepare_path($type, $id);
    $config['upload_path'] = $upload_path;
    $config['allowed_types'] = '*';
    $config['max_size'] = '2000';
    $config['max_width'] = '2000';
    $config['max_height'] = '2000';
    
    $CI =& get_instance();
    $CI->load->library('upload');
    $CI->upload->initialize($config);
    if ($CI->upload->do_upload($field)) {
      return $CI->upload->data(); 
    } else {
      print $CI->upload->display_errors('<p>', '</p>');
      return false;
    }
}

function picture_path($picture) {
    $path = upload_path($picture->entity_type, $picture->entity_id).$picture->filename;
    if (!file_exists($path)) {
        return false;
    }
    return $path;
}

function get_picture($picture) {
    $CI =& get_instance();
    $CI->load->model('Picture');
    $picture = $CI->Picture->get_picture($picture);
    return upload_path($picture->entity_type, $picture->entity_id).$picture->filename;
}

function get_cover($type, $id) {
   $CI =& get_instance();
   return $CI->Picture->get_cover($type, $id);

}

function has_cover($type, $id) {
    $CI =& get_instance();
    $cover = $CI->db->where('entity_type', $type)
            ->where('entity_id', $id)
            ->where('cover', 1)->get('pictures');
    if ($cover->num_rows() > 0) {
        return true;
    }
    return false;
}
function get_pictures($type, $id, $num=null, $offset=null) {
    $CI =& get_instance();
    $CI->load->model('Picture');
    $pictures = $CI->Picture->get_pictures($type, $id, $num, $offset);
    return $pictures;
}
function pictures_for($type, $id, $template='picture', $num=null, $offset=null) {
    $CI =& get_instance();
    $CI->load->model('Picture');
    $pictures = $CI->Picture->get_pictures($type, $id, $num, $offset);
    echo '<div class="pictures-list">';
    if (count($pictures) > 0) {
        foreach ($pictures as $picture) {
            $data['picture'] = $picture;
            $CI->load->view($template, $data);
        }
    }
    echo '</div>';
}

function count_pictures($type, $id, $verbose=false) {
    $CI =& get_instance();
    $CI->load->model('picture');
    $count = $CI->picture->count_pictures_for($type, $id);
    if (!$verbose) {
        return $count;
    } else {
        if ($count == 0) {
            return 'No hay Fotos';
        } elseif ($count == 1) {
            return 'Una foto';
        } else {
            return $count.' fotos';
        }
    }
}

function form_for_picture($type, $id, $profile=null) {
   $CI =& get_instance();
   $CI->load->helper('form', 'component');
   $form = array('class' => 'picture-form clearfix');
   $data = create_hidden_fields($type, $id);
   if ($profile) {
      $data['profile'] = 1;
   }
   $output =  form_open_multipart('pictures/save', $form , $data);
   $output .= '<p><label for="">A&ntilde;adir Imagen</label> '.form_upload('picture', '').'</p>';
   $output .= form_submit('', 'Subir imagen', 'class="subir_imgs"');
   $output .= form_close();
   return $output;
}

function form_for_multiple_pictures($type, $id) {
   $CI =& get_instance();
   $CI->load->helper('form', 'component');
   $form = array('class' => 'picture-form clearfix');
   $data = create_hidden_fields($type, $id);
   $output =  form_open_multipart('pictures/multiple_save', $form , $data);
   //$output .= '<p><label for="">T&iacute;tulo</label> '.form_input('title', '').'</p>';
   $output .= '<p><label for="">Image</label> '.form_upload('picture', '').'</p>';
   $output .= '<h5><a href="#" id="more-pictures" class="add button">Más imágenes</a></h5>';
   $output .= form_submit('', '', 'class="subir_imgs"');
   $output .= form_close();
   $output .= '<script type="text/javascript">$(document).ready(function(){ $("a#more-pictures").click(function(){ $(this).prev("p").append("<br /><input type=\"file\" name=\"picture-" + $("input[type=file]").size()+1 + "\" />"); return false; }); }); </script>';
   return $output;
}

function form_for_counted_pictures($type, $id, $count) {
    $CI =& get_instance();
    $CI->load->helper('form', 'component');
    $form = array('class' => 'picture-form clearfix');
    $data = create_hidden_fields($type, $id);
    $output =  form_open_multipart('pictures/multiple_save', $form , $data);

    $existing = count_pictures($type, $id);
    $num_fields = $count - $existing;
    for ($i=1; $i<=$num_fields; $i++) {
        $output .= '<p>'.form_upload('picture-'.$i, '').'</p>';
    }
    $output .= form_submit('', '', 'class="subir_imgs"');
    $output .= form_close();
    return $output;
}

?>