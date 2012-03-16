<div class="span8">
    <h3><?= $event->title; ?></h3>
    <aside class="business-info">
        <h4><?= anchor('business/'.$business->id, $business->title); ?></h4>
    </aside>
</div>
<div class="span4">
    <?= anchor('event/'.$event->id.'/edit', 'Edit this event'); ?>
</div>