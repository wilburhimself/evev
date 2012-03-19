<?php print form_open('nodes/save', 'class="form-vertical node-form"'); ?>
    <fieldset>
        <div class="control-group">
            <div class="control-label"><?= form_label('Título', 'node-title'); ?></div>
            <div class="controls"><?= form_input('node[title]', !empty($node) ? $node->title : null, 'id="node-title'); ?></div>
        </div>

        <div class="control-group">
            <div class="control-label"><?= form_label('Idioma', 'node-language'); ?></div>
            <div class="controls"><?= form_dropdown('node[language]', languages_dropdown(), !empty($node) ? $node->language : null); ?></div>
        </div>

         <?php
            $this->load->view('forms/'.$node_type);
        ?>
        <?= !empty($node) ? anchor('node/'.$node->id.'/delete', 'Borrar', 'class="btn btn-danger"') : null; ?>
    </fieldset>
<?php print form_close(); ?>

<?php
    if (file_exists(APPPATH.'/views/metaboxes/'.$node_type.'.php')) $this->load->view("metaboxes/{$node_type}", array('node' => $node));
?>