<div class="control-group">
    <div class="control-label"><?= form_label('Tipo de evento', 'event-type'); ?></div>
    <div class="controls"><?php category_dropdown('event-type', !empty($node) ? $node : null); ?></div>
</div>
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
    <div class="controls"><?= form_dropdown('node[location]', node_dropdown('location'), !empty($node) ? $node->location : null); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Dirección', 'event-address'); ?></div>
    <div class="controls"><?= form_textarea('node[address]', !empty($node) ? $node->address : null, 'class-"no-ck" id="event-address"'); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Costo / Precio', 'event-price') ?></div>
    <div class="controls"><?= form_textarea('node[cost]', !empty($node) ? $node->cost : null, 'class="no-ck input-xlarge" id="event-cost"') ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Código de vestimenta', 'event-dress_code') ?></div>
    <div class="controls"><?= form_input('node[dress_code]', !empty($node) ? $node->dress_code : null, 'id="event-dress_code"') ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('Contacto', 'event-contact') ?></div>
    <div class="controls"><?= form_input('node[contact]', !empty($node) ? $node->contact : null, 'id="event-contact"') ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label('RSVP', 'event-rsvp') ?></div>
    <div class="controls"><?= form_input('node[rsvp]', !empty($node) ? $node->rsvp : null, 'id="event-rsvp') ?></div>
</div>

<<div style="clear:both;"></div>
<?= form_hidden('node[type]', 'event'); ?>
<?= form_submit('', 'Guardar Evento', 'class="btn btn-primary"'); ?>
 
