<div class="metabox">
    <h3>Pictures</h3>
    <?php foreach (get_pictures('business-gallery', $node->id) as $picture) print thumbnail($picture, 80, 80); ?>
    <?= form_for_counted_pictures('business-gallery', $node->id, 5) ?>
</div>