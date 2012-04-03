<?php
if (is_logged_in()):
    if (owns_node($this->logged_user, $node)): ?>
    <nav class="node-menu">
        <?= anchor($node->language.'/nodes/edit/'.$node->id, lang('edit')) ?>
    </nav>
<?php endif; endif; ?>
<?php node_display($node); ?>