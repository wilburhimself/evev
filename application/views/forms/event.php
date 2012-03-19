<div class="control-group">
    <div class="control-label"><?= form_label('Descripción', 'event-description'); ?></div>
    <div class="controls"> <?= form_textarea('node[description]', !empty($node) ? $node->description : null, 'class="input-xlarge ck"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Negocio', 'event-business');  ?></div>
    <div class="controls"><?= form_dropdown('node[business]', node_dropdown('business'), !empty($node) ? $node->business : null, 'id="event-business"');  ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Fecha de Inicio', 'event-startdate'); ?></div>
    <div class="controls"><?= form_input('node[startdate]', !empty($node) ? $node->startdate : null, 'class="input-xlarge" id="event-startdate"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Fecha Final', 'event-enddate'); ?></div>
    <div class="controls"><?= form_input('node[enddate]', !empty($node) ? $node->enddate : null, 'class="input-xlarge" id="event-enddate"'); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('location', 'event-location') ?></div>
    <div class="controls"><?= form_dropdown('node[location]', node_dropdown('location')); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Dirección', 'event-address'); ?></div>
    <div class="controls"><?= form_textarea('node[address]', !empty($node) ? $node->address : null, 'class-"input-xlarge" id="event-address"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Tipo de evento', 'event-type'); ?></div>
    <div class="controls"><?php category_dropdown('event-type', TRUE); ?></div>
</div>

    
<?= form_hidden('node[type]', 'event'); ?>
<?= !empty($node) ? form_hidden('id', $node->id) : null; ?>
<?= form_submit('', 'Guardar Evento', 'class="btn btn-primary"'); ?>
 
