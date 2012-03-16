<div class="control-group">
    <div class="control-label"><?= form_label('Dirección', 'business-address'); ?></div>
    <div class="controls"><?= form_input('node[address]', !empty($node) ? $node->address : null, 'id="business-address"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Teléfono', 'business-phone'); ?></div>
    <div class="controls"><?= form_input('node[phone]', !empty($node) ? $node->phone : null, 'id="business-phone"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Email', 'business-email'); ?></div>
    <div class="controls"><?= form_input('node[email]', !empty($node) ? $node->email : null, 'id="business-email"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Descripción', 'business-description'); ?></div>
    <div class="controls"><?= form_textarea('node[description]', !empty($node) ? $node->description : null, 'id="business-description"'); ?></div>
</div>

<?= form_hidden('node[type]', 'business'); ?>
<?= !empty($node) ? form_hidden('id', $node->id) : null; ?>
<?= form_submit('', 'Guardar Negocio', 'class="btn btn-primary"');  ?>