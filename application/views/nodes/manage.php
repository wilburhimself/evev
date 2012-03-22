<h1 class="page-title"><?= $page_title; ?></h1>
<nav class="admin-submenu">
    <ul>
        <li><?= !empty($node_type) ? anchor('nodes/add/'.$node_type, 'Agregar '.$node_type) : null; ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage', 'All node types') ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage/event', 'Eventos') ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage/business', 'Negocios') ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage/location', 'Locations') ?></li>
    </ul>
</nav>
<table class="table table-striped manage-nodes">
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
                <td><?= anchor($this->lang->lang().'/nodes/manage/'.$node->type, $node->type) ?></td>
                <td>
                    <?= anchor('nodes/edit/'.$node->id, '<i class="icon-pencil"></i> Editar');  ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>