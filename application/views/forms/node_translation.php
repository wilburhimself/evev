<?php print form_open('nodes/save', 'class="form-vertical node-form"'); ?>
    <fieldset>
        <div class="control-group">
            <div class="control-label"><?= form_label('Título', 'node-title'); ?></div>
            <div class="controls"><?= form_input('node[title]', !empty($node) ? $node->title : null, 'id="node-title"'); ?></div>
        </div>

        <div class="control-group">
            <div class="control-label"><?= form_label('Traduciendo a '.language_name($language_code), 'node-language'); ?></div>
            <div class="controls"><?= form_hidden('node[language]', $language_code); ?></div>
        </div>

         <?php
            $this->load->view('forms/'.$node_type);
        ?>
        <?= !empty($node) ? anchor('node/'.$node->id.'/delete', 'Borrar', 'class="btn btn-danger"') : null; ?>
        <?= form_hidden('is_translation', 1) ?>
        <?= form_hidden('translation[original_id]', $original_node->id) ?>
        <?= form_hidden('translation[language_code]', $language_code) ?>
    </fieldset>
<?php print form_close(); ?>

<?php
    if (isset($node)) {
        if (file_exists(APPPATH.'/views/metaboxes/'.$node_type.'.php')) {
            $this->load->view("metaboxes/{$node_type}", array('node' => $node));
        }

    }

?>