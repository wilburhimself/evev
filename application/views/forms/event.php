<div class="control-group">
    <div class="control-label"><?= form_label(lang('event_type'), 'event-type'); ?></div>
    <div class="controls"><?php category_dropdown('event-type', !empty($node) ? $node : null); ?></div>
    <?= form_error('category[event-type]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('description'), 'event-description'); ?></div>
    <div class="controls"> <?= form_textarea('node[description]', set_value('node[description]', !empty($node) ? $node->description : null), 'class="input-xlarge ck"'); ?></div>
    <?= form_error('node[description]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('business'), 'event-business');  ?></div>
    <div class="controls"><?= form_dropdown('node[business]', node_dropdown('business'), set_value('node[business]', !empty($node) ? $node->business : null), 'id="event-business"');  ?></div>
    <?= form_error('node[business]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('startdate'), 'event-startdate'); ?></div>
    <div class="controls"><?= form_input('node[startdate]', !empty($node) ? $node->startdate : null, 'class="input-xlarge" id="event-startdate"'); ?></div>
    <?= form_error('node[startdate]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('enddate'), 'event-enddate'); ?></div>
    <div class="controls"><?= form_input('node[enddate]', !empty($node) ? $node->enddate : null, 'class="input-xlarge" id="event-enddate"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('location'), 'event-location') ?></div>
    <div class="controls"><?= form_dropdown('node[location]', node_dropdown('location'), !empty($node) ? $node->location : null); ?></div>
    <?= form_error('node[location]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('address'), 'event-address'); ?></div>
    <div class="controls"><?= form_textarea('node[address]', !empty($node) ? $node->address : null, 'class-"no-ck" id="event-address"'); ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label(lang('price'), 'event-price') ?></div>
    <div class="controls"><?= form_textarea('node[cost]', !empty($node) ? $node->cost : null, 'class="no-ck input-xlarge" id="event-cost"') ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('dress_code'), 'event-dress_code') ?></div>
    <div class="controls"><?= form_input('node[dress_code]', !empty($node) ? $node->dress_code : null, 'id="event-dress_code"') ?></div>
</div>

<div class="control-group">
    <div class="control-label"><?= form_label(lang('contact'), 'event-contact') ?></div>
    <div class="controls"><?= form_input('node[contact]', !empty($node) ? $node->contact : null, 'id="event-contact"') ?></div>
</div>

<div style="clear:both;"></div>
<?= form_hidden('node[type]', 'event'); ?>
<?= form_submit('', 'Guardar Evento', 'class="btn btn-primary"'); ?>
 
