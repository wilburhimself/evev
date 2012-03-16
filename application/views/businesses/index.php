<h3><?= $page_title; ?></h3>
<table class="table table-stripped">
    <thead>
        <tr>
            <th>id</th>
            <th>Nombre del Negocio</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($businesses as $business): ?>
            <tr>
                <td><?= $business->id ?></td>
                <td><?= anchor('business/'.$business->id, $business->title); ?></td>
                <td><?= anchor('business/'.$business->id.'/edit', '<i class="icon-pencil"></i> Editar'); ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
