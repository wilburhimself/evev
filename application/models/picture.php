<?php
class Picture extends CI_Model {
    function __construct() {
        parent::__construct();
        $this->table_name = 'pictures';
    }
    
    function get_picture($picture) {
        return $this->db->where('id', $picture)->get($this->table_name)->row();
    }
    
    function get_pictures($type, $id, $num=null, $offset=null) {
        return $this->db->where('entity_type', $type)
                        ->where('entity_id', $id)
                        ->order_by('created_at', 'desc')
                        ->order_by('cover', 'desc')
                        ->get($this->table_name, $num, $offset)->result();
    }
    
    function count_pictures_for($type, $id) {
        return $this->db->where('entity_type', $type)
                        ->where('entity_id', $id)->get($this->table_name)->num_rows();
    }
    
    function add_picture($data) {
        $picture = $this->db->insert($this->table_name, $data);
        return $this->db->insert_id();
    }
    
    function delete_picture($picture) {
        $this->db->where('id', $picture);
        $this->db->delete($this->table_name);
    }

    function get_cover($type, $id) {
        $picture = $this->db->where('entity_type', $type)
                            ->where('entity_id', $id)
                            ->where('cover', 1)
                            ->get($this->table_name);
        if ($picture->num_rows() == 1) {
            return $picture->row();
        } else {
            $pictures = $this->get_pictures($type, $id, 1);
            if (count($pictures) == 1) {
                return $this->get_picture($pictures[0]->id);
            }
        }
    }

    function set_cover($id) {
        $picture = $this->get_picture($id);
        $data['cover'] = 0;
        $this->db->where('entity_type', $picture->entity_type)
                ->where('entity_id', $picture->entity_id);
        $this->db->update($this->table_name, $data);

        $data['cover'] = 1;
        $this->db->where('id', $id);
        $this->db->update($this->table_name, $data);
    }
}

/**
 * Database table structure for pictures

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `entity_type` varchar(45) NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `filename` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `cover` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

 */

?>