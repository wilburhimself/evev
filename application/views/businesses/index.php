<h1 class="page-title"><?= lang('directory'); ?></h1>
<?php foreach ($categories as $category):
        if (empty_category($category->id)) continue;
    ?>
    <section>
        <h3 class="section-title"><?= $category->name ?></h3>
        <table width="100%">
            <?php $cat = category_nodes($category->id); ?>
            <?php if (!empty($cat)): ?>
            <?= partial_collection($cat, 'businesses/_item'); ?>
            <?php endif; ?>
        </table>

    </section>
<?php endforeach; ?>