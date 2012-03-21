<h1 class="page-title"><?= lang('directory'); ?></h1>
<?php foreach ($categories as $category):
        if (empty_category($category->id)) continue;
    ?>
    <section>
        <h3 class="section-title"><?= $category->name ?></h3>
        <table width="100%">
            <?= partial_collection(category_nodes($category->id), 'businesses/_item'); ?>
        </table>

    </section>
<?php endforeach; ?>