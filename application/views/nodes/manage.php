<h1 class="page-title"><?= $page_title; ?></h1>
<nav class="admin-submenu">
    <ul>
        <li><?= !empty($node_type) ? anchor('nodes/add/'.$node_type, 'Agregar '.$node_type) : null; ?></li>
    </ul>
</nav>
<table class="table table-striped">
    <thead>
        <tr>
            <th>id</th>
            <th>Título</th>
            <th>Tipo de nodo</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($nodes as $node): ?>
            <tr>
                <td><?= $node->id; ?></td>
                <td><?= anchor('node/'.$node->id, $node->title); ?></td>
                <td><?= $node->type ?></td>
                <td>
                    <?= anchor('nodes/edit/'.$node->id, '<i class="icon-pencil"></i> Editar');  ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>