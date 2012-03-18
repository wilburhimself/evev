<div class="side-block">
    <h3>Logo</h3>
    <?php $logo = get_cover('business-logo', $node->id); print !empty($logo) ? thumbnail($logo, 80, 80) : null; ?>
    <?= form_for_picture('business-logo', $node->id); ?>
</div>

<div class="side-block">
    <h3>Cover</h3>
    <?php $logo = get_cover('business-cover', $node->id); print !empty($logo) ? thumbnail($logo, 80, 80) : null; ?>
    <?= form_for_picture('business-cover', $node->id); ?>
</div>