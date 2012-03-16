<div class="span8">
    <h3>Todos los eventos</h3>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>id</th>
                <th>Título</th>
                <th>Fecha de inicio</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($events as $event): ?>
                <tr>
                    <td><?= $event->id; ?></td>
                    <td><?= anchor('event/'.$event->id, $event->title); ?></td>
                    <td><?= timeformat('short', $event->startdate); ?></td>
                    <td>
                        <?= anchor('event/'.$event->id.'/edit', '<i class="icon-pencil"></i> Editar');  ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>