<div class="control-group">
    <div class="control-label"><?= form_label('Descripción', 'special-description'); ?></div>
    <div class="controls"> <?= form_textarea('node[description]', !empty($node) ? $node->description : null, 'class="input-xlarge"'); ?></div>
</div>
    
<div class="control-group">
    <div class="control-label"><?= form_label('Negocio', 'special-business');  ?></div>
    <div class="controls"><?= form_dropdown('node[business]', node_dropdown('business'), !empty($node) ? $node->business : null, 'id="special-business"');  ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Inicio', 'special-startdate'); ?></div>
    <div class="controls"><?= form_input('node[startdate]', !empty($node) ? $node->startdate : null, 'class="input-xlarge" id="special-startdate"'); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Final', 'special-enddate'); ?></div>
    <div class="controls"><?= form_input('node[enddate]', !empty($node) ? $node->enddate : null, 'class="input-xlarge" id="special-enddate"'); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Precio Original', 'special-original-price'); ?></div>
    <div class="controls"><?= form_input('node[original_price]', !empty($node) ? $node->original_price : null, 'class="input-xlarge" id="special-original-price"'); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Precio de especial', 'special-special-price'); ?></div>
    <div class="controls"><?= form_input('node[special_price]', !empty($node) ? $node->special_price : null, 'class="input-xlarge" id="special-special-price"'); ?></div>
</div>

<?= form_hidden('node[type]', 'special'); ?>
<?= !empty($node) ? form_hidden('id', $node->id) : null; ?>
<?= form_submit('', 'Guardar Evento', 'class="btn btn-primary"'); ?>
 
