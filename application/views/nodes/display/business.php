<?php
    if (is_translation($node->id)) {
        $original = get_original($node->id);
        $node_id = $original->id;
    } else {
        $node_id = $node->id;
    }
?>
<?php if ($op == 'full'): ?>
    <div class="full business">
        <div class="cover">
            <?= thumbnail(get_cover('business-cover', $node_id), 780, 250) ?>
            <?php translation_links($node); ?>

        </div>
        <header>
            <h1 class="page-title"><?= $node->title ?></h1>
        </header>
        <div class="info">

            <div class="description"><?= $node->description; ?></div>

            <dl>
                <dt><?= lang('address') ?></dt>
                <dd><?= nl2br($node->address) ?>, <?php $location = node_load($node->location); if ($location) print $location->title; ?></dd>
                <dt><?= lang('phone') ?></dt>
                <dd><?= $node->phone ?><br />
                <?= $node->secondary_phone ?></dd>
                <?php if ($node->fax): ?>
                    <dt>Fax</dt>
                    <dd><?= $node->fax ?></dd>
                <?php endif; ?>
                <?php if ($node->email): ?>
                    <dt>Email</dt>
                    <dd><?= $node->email ?></dd>
                <?php endif; ?>
            </dl>


            <?php $photos = get_pictures('business-gallery', $node_id);
                  if (sizeof($photos) > 0): ?>
                <section class="business-pictures">
                    <h3><?= lang('photos') ?></h3>
                    <?php foreach ($photos as $photo): ?>
                        <a href="<?= site_url(picture_path($photo)) ?>"><?= thumbnail($photo, 100, 100) ?></a>
                    <?php endforeach; ?>
                </section>
            <?php endif; ?>

            <div class="related">
                <?php $other_events = search(
                    array(
                        'type' => 'event',
                        'num' => 3,
                        'conditions' => array(
                            'f.business='.$node->id,
                            'f.startdate > NOW()',
                        ),
                        'order' => array(
                            'f.startdate' => 'ASC',
                        ),
                    ));
                    if (sizeof($other_events) > 0){
                        print '<h3>'.lang('other_events').' '.$node->title.'</h3>';
                        print partial_collection($other_events, 'events/_item', array('object_name' => 'event'));
                    }
                ?>
            </div>
        </div>



    </div>
<?php endif; ?>