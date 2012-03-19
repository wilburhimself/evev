<?php if ($op == 'full'): ?>
    <div class="full">
        <div class="business-cover">
            <?= thumbnail(get_cover('business-cover', $node->id), 780, 250) ?>
        </div>
        <header>
            <?= thumbnail(get_cover('business-logo', $node->id), 120, 120, 'loose') ?>
            <h1><?= $node->title; ?></h1>
        </header>
    </div>
<?php endif; ?>