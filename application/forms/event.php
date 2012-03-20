<div class="control-group">
    <div class="control-label"><?= form_label('Descripción', 'event-description'); ?></div>
    <div class="controls"> <?= form_textarea('node[description]', !empty($node) ? $node->description : null, 'class="input-xlarge"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Negocio', 'event-business');  ?></div>
    <div class="controls"><?= form_dropdown('node[business]', node_dropdown('business'), !empty($node) ? $node->business : null, 'id="event-business"');  ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Inicio', 'event-startdate'); ?></div>
    <div class="controls"><?= form_input('node[startdate]', !empty($node) ? $node->startdate : null, 'class="input-xlarge" id="event-startdate"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Final', 'event-enddate'); ?></div>
    <div class="controls"><?= form_input('node[enddate]', !empty($node) ? $node->enddate : null, 'class="input-xlarge" id="event-enddate"'); ?></div>
</div>
    
<?= form_hidden('node[type]', 'event'); ?>
<?= form_submit('', 'Guardar Evento', 'class="btn btn-primary"'); ?>
 
