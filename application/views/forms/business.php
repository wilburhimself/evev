<div class="control-group">
    <div class="control-label"><?= form_label(lang('business_type'), 'business-type'); ?></div>
    <div class="controls"><?php category_dropdown('business-type', !empty($node) ? $node : null); ?></div>
    <?= form_error('category[business-type]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('location'), 'event-location'); ?></div>
    <div class="controls">
        <?= form_dropdown('node[location]', node_dropdown('location'), !empty($node) ? $node->location : null) ?>
    </div>
    <?= form_error('node[location]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('address'), 'business-address'); ?></div>
    <div class="controls"><?= form_input('node[address]', !empty($node) ? $node->address : null, 'id="business-address"'); ?></div>
    <?= form_error('node[address]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('phone'), 'business-phone'); ?></div>
    <div class="controls"><?= form_input('node[phone]', !empty($node) ? $node->phone : null, 'id="business-phone"'); ?></div>
    <?= form_error('node[phone]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('secondary_phone'), 'business-secondary-phone'); ?></div>
    <div class="controls"><?= form_input('node[secondary_phone]', !empty($node) ? $node->secondary_phone : null, 'id="business-secondary-phone"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Número de Fax', 'business-fax'); ?></div>
    <div class="controls"><?= form_input('node[fax]', !empty($node) ? $node->fax : null, 'id="business-fax"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label('Email', 'business-email'); ?></div>
    <div class="controls"><?= form_input('node[email]', !empty($node) ? $node->email : null, 'id="business-email"'); ?></div>
    <?= form_error('node[email]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('description'), 'business-description'); ?></div>
    <div class="controls"><?= form_textarea('node[description]', !empty($node) ? $node->description : null, 'id="business-description" class="ck"'); ?></div>
    <?= form_error('node[description]') ?>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('opening_times'), 'opening-times') ?></div>
    <div class="controls"><?= form_textarea('node[hours]', !empty($node) ? $node->hours : null, 'id="opening-times" class="ck"') ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('website'), 'business-website') ?></div>
    <div class="controls"><?= form_input('node[website]', !empty($node) ? $node->website : null, 'id="business-website"') ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('twitter_username'), 'business-twitter'); ?></div>
    <div class="controls"><?= form_input('node[twitter]', !empty($node) ? $node->twitter : null, 'id="business-twitter"'); ?></div>
</div>
<div class="control-group">
    <div class="control-label"><?= form_label(lang('facebook_address'), 'business-facebook'); ?></div>
    <div class="controls"><?= form_input('node[facebook]', !empty($node) ? $node->facebook : null, 'id="business-facebook"'); ?></div>
</div>

<?= form_hidden('node[type]', 'business'); ?>
<?= form_submit('', 'Guardar Negocio', 'class="btn btn-primary"');  ?>