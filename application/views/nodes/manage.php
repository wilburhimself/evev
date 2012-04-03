<h1 class="page-title"><?= $page_title; ?></h1>
<nav class="admin-submenu">
    <ul>
        <li><?= !empty($node_type) ? anchor('nodes/add/'.$node_type, lang('add').' '.lang($node_type)) : null; ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage', lang('all_node_types')) ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage/event', lang('events')) ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage/business', lang('businesses')) ?></li>
        <li><?= anchor($this->lang->lang().'/nodes/manage/location', lang('locations')) ?></li>
    </ul>
</nav>
<table class="table table-striped manage-nodes">
    <thead>
        <tr>
            <th>id</th>
            <th><?= lang('title') ?></th>
            <th><?= lang('node_type') ?></th>
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
                    <?= anchor('nodes/edit/'.$node->id, lang('edit'));  ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>