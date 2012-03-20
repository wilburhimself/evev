<div class="control-group">
    <div class="control-label"><?= form_label('Dirección', 'business-address'); ?></div>
    <div class="controls"><?= form_input('node[address]', !empty($node) ? $node->address : null, 'id="business-address"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Teléfono', 'business-phone'); ?></div>
    <div class="controls"><?= form_input('node[phone]', !empty($node) ? $node->phone : null, 'id="business-phone"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Teléfono secundario', 'business-secondary-phone'); ?></div>
    <div class="controls"><?= form_input('node[secondary_phone]', !empty($node) ? $node->secondary_phone : null, 'id="business-secondary-phone"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Número de Fax', 'business-fax'); ?></div>
    <div class="controls"><?= form_input('node[fax]', !empty($node) ? $node->fax : null, 'id="business-fax"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Email', 'business-email'); ?></div>
    <div class="controls"><?= form_input('node[email]', !empty($node) ? $node->email : null, 'id="business-email"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Descripción', 'business-description'); ?></div>
    <div class="controls"><?= form_textarea('node[description]', !empty($node) ? $node->description : null, 'id="business-description"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Twitter Username', 'business-twitter'); ?></div>
    <div class="controls"><?= form_input('node[twitter]', !empty($node) ? $node->twitter : null, 'id="business-twitter"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Facebook Address', 'business-facebook'); ?></div>
    <div class="controls"><?= form_input('node[facebook]', !empty($node) ? $node->facebook : null, 'id="business-facebook"'); ?></div>
</div>
<?= form_hidden('node[type]', 'business'); ?>
<?= form_submit('', 'Guardar Negocio', 'class="btn btn-primary"');  ?>