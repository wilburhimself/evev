<div class="slideshow">
    <?php
        $slides = get_slides(5);
        foreach ($slides as $node) {
            if (is_translation($node->id)) {
                $original = get_original($node->id);
                $node_id = $original->id;
            } else {
                $node_id = $node->id;
            } ?>
            <a href="<?= site_url($node->language.'/node/'.$node->id) ?>" class="slide">
                <?= thumbnail(get_cover('event-logo', $node_id), 800, 350) ?>
                <h3><?= $node->title ?></h3>
            </a>

    <?php
        }
    ?>
</div>
<div class="list">
<?php
    $month = date('m');
    $counter = 3;

    for($i=0; $i<12; $i++) {
        $events = search(array(
                           'type' => 'event',
                           'conditions' => array(
                              'MONTH(f.startdate)='.date("m", time() + ($i * 30 * 24 * 60 * 60)),
                              'f.startdate >"'.date('Y-m-d').'"'
                           ),
                           'order' => array(
                               'f.startdate' => 'ASC'
                           )
                      ));

        if (!empty($events)) {
            print '<div class="month-bar"><h1>'.ucwords(strftime('%B', time() + ($i * 30 * 24 * 60 * 60))).'</h1></div>';
            print partial_collection($events, 'events/_item', array('object_name' => 'event'));
        }
    }
?>
</div>