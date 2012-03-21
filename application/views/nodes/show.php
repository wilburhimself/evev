<nav class="node-menu">
    <?= is_logged_in() ? anchor($node->language.'/nodes/edit/'.$node->id, 'Editar') : null ?>
</nav>
<?php node_display($node); ?>