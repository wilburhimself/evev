<h1 class="page-title"><?= $page_title; ?></h1>
<nav class="admin-submenu">
    <ul>
        <li><?= anchor('nodes/manage/'.$node_type, 'Volver a todos los '.$node_type); ?></li>
    </ul>
</nav>
<?php node_form($node_type); ?>
 
