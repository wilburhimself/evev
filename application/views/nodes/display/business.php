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
        <aside>
            <?= thumbnail(get_cover('business-logo', $node_id), 120, 120, 'loose') ?>
            <nav>
                <ul class="links">
                    <?php if (is_logged_in()): ?>
                        <li><?= anchor('likes/status/'.$node->id, 'Agregar a mis favoritos'); ?></li>
                    <?php endif; ?>
                    <?php if ($node->twitter): ?>
                        <li><a href="http://twitter.com/<?= $node->twitter ?>"><?= lang('follow_twitter') ?></a></li>
                    <?php endif; ?>
                    <?php if ($node->facebook): ?>
                        <li><a href="<?= $node->facebook ?>"><?= lang('follow_facebook') ?></a></li>
                    <?php endif; ?>
                </ul>
            </nav>
        </aside>
        <div class="info">
            <h1><?= $node->title ?></h1>
            <dl>
                <dt><?= lang('address') ?></dt>
                <dd><?= nl2br($node->address) ?></dd>
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

            <div class="description"><?= $node->description; ?></div>
            <?php $photos = get_pictures('business-gallery', $node->id);
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
            
            <section class="comments">
                <h3 class="section-title"><?= lang('comments') ?></h3>
                <div class="comments-list">
                    <?= partial_collection(get_comments($node), 'comments/_item'); ?>
                </div>
                <?= form_for_comments($node); ?>
            </section>
        </div>



    </div>
<?php endif; ?>