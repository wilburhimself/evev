<nav class="node-menu">
    <?= is_logged_in() ? anchor($node->language.'/nodes/edit/'.$node->id, 'Editar') : null ?>
    Tambien disponible en: 
    <?php if (is_translation($node->id)): $original = get_original($node->id); ?>
        <?= anchor($original->language.'/node/'.$original->id, language_name($original->language)) ?></p>
    <?php elseif (has_translation($node->id)): $translations = get_translations($node->id); ?>
        <?php foreach ($translations as $translation): ?>
            <?= anchor($translation->translation_language.'/node/'.$translation->translation_id, language_name($translation->translation_language)); ?>
        <?php endforeach; ?>
    <?php endif; ?>
</nav>
<?php node_display($node); ?>