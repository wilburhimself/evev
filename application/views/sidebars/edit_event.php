<div class="side-block">
    <h3>Event Cover</h3>
    <?php $pic = get_cover('event-logo', $node->id); print !empty($pic) ? thumbnail($pic, 80, 80) : null; ?>
    <?= form_for_picture('event-logo', $node->id); ?>
</div>
