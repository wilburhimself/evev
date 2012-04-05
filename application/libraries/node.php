<?php
class node {
    public function __construct() {
        $this->ci =& get_instance();
        $this->db = $this->ci->db;
        $this->tablename = 'node';
    }

    protected function pre_query() {
        $this->db->where('language', $this->ci->lang->lang());
    }

    public function load_node($id) {
        $this->db->where('id', $id);
        $n = $this->db->get($this->tablename);
        if ($n->num_rows() == 0) {
            return false;
        }
        $n = $n->row();
        $n->fields = $this->_load_fields($n);
        return new NodeResult($n);
    }

    public function objects($params=array()) {
        $this->pre_query();
        $types = !empty($params['type']) ? $params['type'] : false;

        if (!empty($params['status'])) {
            $this->db->where('status', $params['status']);
        } else {
            $this->db->where('status', 1);
        }
        
        if (!empty($types)) {
            $this->db->where_in('type', $types);
        }
        
        $order = !empty($params['order']) ? $params['order'] : array('title' => 'ASC');
        foreach($order as $k => $v) {
            $this->db->order_by($k, $v);
        }

        $result = $this->db->get($this->tablename)->result();

        $output = array();
        foreach ($result as $item) $output[] = $this->load_node($item->id);
        return $output;
    }

    private function _load_fields($node) {
        $table = 'fields_'.$node->type;
        $this->db->where('node_id', $node->id);
        $fields = $this->db->get($table)->row();
        return $fields;
    }

    public function delete($id) {
        $node = node_load($id);
        $table = 'fields_'.$node->type;
        $this->db->where('id', $id);
        $this->db->delete($this->tablename);
        $this->db->where('node_id', $id);
        $this->db->delete($table);

        $relations_table = 'node_category';
        $this->db->where('node_id', $id);
        $this->db->delete($relations_table);
    }
    
    public function node_save($params, $id=null) {
    	$node_fields = $this->db->list_fields($this->tablename);
    	$fields_table = 'fields_'.$params['type'];
    	$fields_fields = $this->db->list_fields($fields_table);
    	
    	if (!empty($id)) {
    		$this->db->where('id', $id);
    		$node_params = array();
    		foreach (array_keys($params) as $k) {
    			if (in_array($k, $node_fields)) $node_params[$k] = $params[$k];
    		}
    		unset($node_params['id']);
            $node_params['updated'] = time();
    		$this->db->update($this->tablename, $node_params);
    		
    		$field_params = array();
    		foreach (array_keys($params) as $k) {
    			if (in_array($k, $fields_fields)) $field_params[$k] = $params[$k];
    		}
            if (!empty($field_params)) {
                $this->db->where('node_id', $id);
    		    $this->db->update($fields_table, $field_params);
            }
    	} else {
    		$node_params = array();
    		foreach (array_keys($params) as $k) {
    			if (in_array($k, $node_fields)) $node_params[$k] = $params[$k];
    		}
            $node_params['created'] = time();
            $node_params['updated'] = time();
            $node_params['status'] = empty($node_params['status']) ? 1 : $node_params['status'];
            $node_params['user_id'] = !empty(get_logged_user()->id) ? get_logged_user()->id : 1;
    		$this->db->insert($this->tablename, $node_params);
    		$node_id = $this->db->insert_id();
    		$field_params = array();
    		foreach (array_keys($params) as $k) {
    			if (in_array($k, $fields_fields)) $field_params[$k] = $params[$k];
    		}
    		$field_params['node_id'] = $node_id;
    		$this->db->insert($fields_table, $field_params);
            $id = $node_id;
        }
        $node = node_load($id);
        //print_r($node);
        return $node;
    }

    public function search($options) {
        $this->db->select('n.id, n.type', FALSE);
        $this->pre_query();
        $this->db->from('node n, fields_'.$options['type'].' f');
        if (!empty($options['conditions'])) {
            foreach ($options['conditions'] as $condition) {
                $this->db->where($condition, '', FALSE);
            }
        }
        $this->db->where('n.id', 'f.node_id', FALSE);
        $this->db->where('n.status', 1, FALSE);


        $order = !empty($options['order']) ? $options['order'] : array('n.id' => 'DESC');
        foreach($order as $k => $v) {
            $this->db->order_by($k, $k, FALSE);
        }
        if (!empty($options['num'])) {
            $num = $options['num'];
        } else {
            $num = 10000;
        }
        $this->db->limit($num);
        $r = $this->db->get()->result();
        $output = array();

        foreach ($r as $i) {
            $output[] = node_load($i->id);
        }
        return $output;
    }
}

class NodeResult {
    private $fields = array();
    public function __construct($node) {
        $this->fields['id'] = $node->id;
        $this->fields['title'] = $node->title;
        $this->fields['created'] = $node->created;
        $this->fields['updated'] = $node->updated;
        $this->fields['status'] = $node->status;
        $this->fields['language'] = $node->language;
        $this->fields['type'] = $node->type;
        $this->fields['user_id'] = $node->user_id;


        foreach ($node->fields as $k => $v) $this->$k = $v;
    }

    public function __get($key) {
        if (!empty($this->fields[$key])) return $this->fields[$key];
    }

    public function __set($key, $value) {
        $this->fields[$key] = $value;
    }
}
 
