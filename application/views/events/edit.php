<div class="container">
    <div class="span8">
        <h3>Editando <?= $event->title; ?> &rarr; <?= anchor('event/'.$event->id, 'Volver'); ?></h3>
        <?php node_form('event', $event); ?>
    </div>
</div>
