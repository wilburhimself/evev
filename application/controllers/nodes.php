<?php
class Nodes extends CI_Controller {
	public function __construct() {
		parent::__construct();
	}
	
	public function save() {
        login_required();

		$params = $this->input->post('node');
		$post_id = $this->input->post('id');
        $id = !empty($post_id) ? $post_id : null;
		$node = $this->node->node_save($params, $id);

        $categories = $this->input->post('category');

        if (!empty($categories)) {
            foreach ($categories as $key => $vocabulary) {
                if (!empty($vocabulary)) {
                    $this->Category->remove_from_vocabulary($key, $node->id);
                    foreach ($vocabulary as $term) {
                        $this->Category->add_to_node($term, $node->id, $key);
                    }
                }
            }
        }

        $translation = $this->input->post('is_translation');
        if (!empty($translation) && $translation == 1) {
            $translation_data = $this->input->post('translation');
            add_translation($node->id, $translation_data['original_id'], $translation_data['language_code']);
        }

        message('Los cambios fueron guardados');
        redirect($node->language.'/nodes/edit/'.$node->id);
	}

    public function delete($id) {
        login_required();

        $this->node->delete($id);
        redirect();
    }

    public function add($type) {
        login_required();

        $data['page_title'] = 'Agregar nodo tipo: '.$type;
        $data['node_type'] = $type;
        $data['yield'] = 'nodes/add';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function edit($id) {
        login_required();
        $node = node_load($id);
        $data['node'] = $node;
        $data['node_type'] = $node->type;
        $data['node_id'] = $node->id;
        $data['page_title'] = 'Editando '.$node->type.': '.$node->title;
        $data['sidebar'] = file_exists(APPPATH.'views/sidebars/edit_'.$node->type.'.php') ? 'sidebars/edit_'.$node->type : 'sidebar';
        $data['yield'] = 'nodes/edit';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function manage($type=null) {
        login_required();
        $type_options = !empty($type) ? array($type) : null;
        $data['nodes'] = get_nodes(array('type' => $type_options));
        if (!empty($type)) $data['node_type'] = $type;
        $data['page_title'] = !empty($type) ? 'Nodos Tipo '.$type : 'Todos los Nodos';
        $data['yield'] = 'nodes/manage';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function show($id) {
        $node = node_load($id);
        $data['node'] = $node;
        $data['page_title'] = $node->title;
        $data['yield'] = 'nodes/show';
        $this->load->vars($data);
        $this->load->view('base');
    }

    public function translate($id, $language_code) {
        login_required();
        $node = node_load($id);
        $data['node'] = $node;
        $data['node_type'] = $node->type;
        $data['language_code'] = $language_code;
        $data['node_id'] = $node->id;
        $data['page_title'] = 'Traduciendo '.$node->type.': '.$node->title .' de '.language_name($node->language).' a '.language_name($language_code);
        $data['sidebar'] = file_exists(APPPATH.'views/sidebars/edit_'.$node->type.'.php') ? 'sidebars/edit_'.$node->type : 'sidebar';
        $data['translation'] = TRUE;
        $data['yield'] = 'nodes/translate';
        $this->load->vars($data);
        $this->load->view('base');
    }
}