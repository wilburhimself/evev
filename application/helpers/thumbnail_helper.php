<?php
function thumb_path($picture, $width, $height) {
    $path = picture_path($picture);
    $i = pathinfo($path);
	$image_thumb = dirname($path) . '/' . $i['filename'] . '_' . $height . '_' . $width . '.jpg';
    return $image_thumb;
}
function image_thumb($image_path, $height, $width) {
	// Get the CodeIgniter super object
	$CI =& get_instance();

	// Path to image thumbnail
	$i = pathinfo($image_path);
	$image_thumb = dirname($image_path) . '/' . $i['filename'] . '_' . $height . '_' . $width . '.jpg';
	
	if( ! file_exists($image_thumb))
	{
		list($image_width, $image_height, $type, $attr) = getimagesize($image_path);
		// LOAD LIBRARY
		$CI->load->library('image_lib');
		
		$scale = 1;
		
		$final_width = $width;
                $final_height = $height;
		
		$x = $final_width/$image_width;
                $y = $final_height/$image_height;
		
		if($x < $y) {
                    $new_width = round($image_width *($final_height/$image_height));
                    $new_height = $final_height;
                }
                else {
                    $new_height = round($image_height *($final_width/$image_width));
                    $new_width = $final_width;
                }
		
		$to_crop_left = ($new_width - ($final_width *$scale))/2;
                $to_crop_top = ($new_height - ($final_height *$scale))/2;
		

		// CONFIGURE IMAGE LIBRARY
		
		$config['image_library']        = 'GD2';
                $config['source_image']         = $image_path;
                $config['new_image']		= $image_thumb;
                $config['maintain_ratio']       = true;
                $config['master_dim']           = 'width';
                $config['width']                = $new_width;
                $config['height']               = $new_height;
                $config['quality']              = '100%';
		//$config['create_thumb']		= false;
		$CI->image_lib->initialize($config);
		$ii = $CI->image_lib->resize();
		
		unset($config);
		
		
		// now crop the image from the center
                
                $config['image_library']        = 'GD2';
                $config['source_image']         = $image_thumb;
		$config['new_image']		= $image_thumb;
		$config['width']                = $final_width;
                $config['height']               = $final_height;
                $config['x_axis']               = $to_crop_left;
                $config['y_axis']               = $to_crop_top;
                $config['maintain_ratio']       = false;

                $CI->image_lib->initialize($config);
                $CI->image_lib->crop();
		
		$CI->image_lib->clear();
	}

        return img(array(
            'src' => $image_thumb,
            'alt' => ''
        ));
    
}

function loose_image_thumb($image_path, $height, $width) {
	// Get the CodeIgniter super object
	$CI =& get_instance();

	// Path to image thumbnail
	$i = pathinfo($image_path);
	$image_thumb = dirname($image_path) . '/' . $i['filename'] . '_' . $height . '_' . $width . '.jpg';
    
	if( ! file_exists($image_thumb))
	{
		// LOAD LIBRARY
		$CI->load->library('image_lib');

		// CONFIGURE IMAGE LIBRARY
		$config['image_library']	= 'gd2';
		$config['source_image']		= $image_path;
		$config['new_image']		= $image_thumb;
		$config['maintain_ratio']	= TRUE;
		$config['height']			= $height;
		$config['width']			= $width;
		$CI->image_lib->initialize($config);
		$CI->image_lib->resize();
		$CI->image_lib->clear();
	}

        return img(array(
            'src' => $image_thumb,
            'alt' => ''
        ));
    

}

function thumbnail($picture, $width, $height, $type='strict', $default_picture="images/icon_house.png") {
    if (is_object($picture)) {
        $path = picture_path($picture);
        if (!file_exists($path)) {
            $path = './'.$default_picture;
        }
    } else {
        $path = './'.$default_picture;
    }
    switch($type) {
        case 'strict':
            return image_thumb($path, $height, $width);
        case 'loose':
            return loose_image_thumb($path, $height, $width);
    }
}

/* End of file image_helper.php */
/* Location: ./application/helpers/image_helper.php */
