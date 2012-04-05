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
        <?php foreach ($users as $user): ?>
            <tr>
                <td><?= $user->id; ?></td>
                <td><?= anchor('users/'.$user->id, $user->username); ?></td>
                <td><?= anchor('/users/manage/'.$user->user_type, $user->user_type) ?></td>
                <td>
                    <?php $promotion_text = is_admin($user) ? 'demote' : 'promote'; ?>
                    <?= anchor('sessions/promote/'.$user->id, lang($promotion_text));  ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>