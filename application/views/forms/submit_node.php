<?php print form_open('nodes/save_submit', 'class="form-vertical node-form"'); ?>
    <fieldset>
        <legend><?= lang('your_personal_info') ?></legend>
        <div class="control-group">
            <div class="control-label"><?= form_label(lang('full_name'), 'full-name'); ?></div>
            <div class="controls"><?= form_input('sender[fullname]', '', 'id="full-name"'); ?></div>
        </div>
        <div class="control-group">
            <div class="control-label"><?= form_label(lang('email'), 'email-address') ?></div>
            <div class="controls"><?= form_input('sender[email]', '', 'id="email-address"') ?></div>
        </div>
    </fieldset>

    <fieldset>
        <legend>Datos</legend>
        <div class="control-group">
            <div class="control-label"><?= form_label(lang('title'), 'node-title'); ?></div>
            <div class="controls"><?= form_input('node[title]', !empty($node) ? $node->title : null, 'id="node-title"') ?></div>
        </div>

        <?php if (empty($node)): ?>
        <div class="control-group">
            <div class="control-label"><?= form_label(lang('language'), 'node-language'); ?></div>
            <div class="controls"><?= form_dropdown('node[language]', languages_dropdown(), !empty($node) ? $node->language : null); ?></div>
        </div>
        <?php endif; ?>
         <?php
            $this->load->view('forms/'.$node_type);
        ?>
        <?= !empty($node) ? anchor('node/'.$node->id.'/delete', lang('delete'), 'class="btn btn-danger"') : null; ?>
    </fieldset>

    <?php if (empty($translation)): ?>
        <?= !empty($node) ? form_hidden('id', $node->id) : null; ?>
    <?php else: ?>
        <?= form_hidden('translation[original_id]', $original_node->id) ?>
        <?= form_hidden('translation[language_code]', $language_code) ?>
    <?php endif; ?>

<?php print form_close(); ?>

<?php
    if (isset($node)) {
        if (file_exists(APPPATH.'/views/metaboxes/'.$node_type.'.php')) {
            $this->load->view("metaboxes/{$node_type}", array('node' => $node));
        }

    }

?>