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
        message('Los cambios fueron guardados');
        redirect_back_or_default();
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
}