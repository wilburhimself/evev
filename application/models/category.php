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
        ->where('vocabulary', $vocabulary)->order_by('name', 'ASC');
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
        $ids = $this->db->query("SELECT n.title, c.node_id, c.category_id FROM node n, node_category c WHERE
        c.node_id = n.id
        AND c.category_id = {$category_id}
        AND n.status = 1
        group by n.id
        order by n.title")->result();

        print $this->db->last_query();

        $output = array();
        foreach ($ids as $id) {
            $output[] = node_load($id->node_id);
        }
        return $output;
    }
}
