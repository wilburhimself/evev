<?php
class Category extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->tablename = 'categories';
    }

    public function add($category) {
        $this->db->insert($this->tablename, $category);
    }

    public function get_categories($vocabulary) {
        $this->db->where('language', $this->lang->lang())
        ->where('vocabulary', $vocabulary);
        return $this->db->get($this->tablename)->result();
    }

    public function get_category($id) {
        $this->db->where('id', $id);
        return $this->db->get($this->tablename)->row();
    }

    public function add_to_node($category_id, $node_id, $vocabulary) {
        $data['node_id'] = $node_id;
        $data['category_id'] = $category_id;
        $data['vocabulary'] = $vocabulary;
        $this->db->insert('node_category', $data);
    }

    public function remove_from_vocabulary($vocabulary, $node_id) {
        $this->db->where('vocabulary', $vocabulary)
            ->where('node_id', $node_id);
        $this->db->delete('node_category');
    }

    public function has_category($node, $category_id) {
        $this->db->where('node_id', $node->id)
            ->where('category_id', $category_id);
        $result = $this->db->get($this->tablename);
        return $result->num_rows() == 1;
    }

    public function node_categories($node, $vocabulary) {
        $this->db->select('category_id')->where('node_id', $node->id)
            ->where('vocabulary', $vocabulary);
        $categories = $this->db->get('node_category')->result();
        $output = array();
        foreach ($categories as $cat) {
            $output[$cat->category_id] = get_category($cat->category_id);
        }
        return $output;
    }

    public function category_nodes($category_id) {

        $this->db->select('node_id')->where('category_id', $category_id);
        $ids = $this->db->get('node_category')->result();
        $output = array();
        foreach ($ids as $id) {
            $output[] = node_load($id->node_id);
        }
        return $output;
    }
}
