<div class="side-block">
    <?php $logo = get_cover('business-logo', $node->id); print !empty($logo) ? thumbnail($logo, 80, 80) : null; ?>
    <?= form_for_picture('business-logo', $node->id); ?>
</div>