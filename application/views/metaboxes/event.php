<div class="metabox">
    <h3>Pictures</h3>
    <div class="uploads-placeholder">
        <?php foreach (get_pictures('business-gallery', $node->id) as $picture) print '<div class="thumbnail">'.thumbnail($picture, 80, 80).'</div>'; ?>
    </div>

    <?= form_for_counted_pictures('business-gallery', $node->id, 5) ?>
</div>
