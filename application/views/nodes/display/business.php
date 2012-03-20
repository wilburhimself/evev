<?php if ($op == 'full'): ?>
    <div class="full business">
        <div class="cover">
            <?= thumbnail(get_cover('business-cover', $node->id), 780, 250) ?>
        </div>
        <aside>
            <?= thumbnail(get_cover('business-logo', $node->id), 120, 120, 'loose') ?>
            <nav>
                <ul class="links">
                    <li><?= anchor('likes/status/'.$node->id, 'Agregar a mis favoritos'); ?></li>
                    <li><a href="http://twitter.com/<?= $node->twitter ?>">Seguir en Twitter</a></li>
                    <li><a href="<?= $node->facebook ?>">Seguir en Facebook</a></li>
                </ul>
            </nav>
        </aside>
        <div class="info">
            <h1><?= $node->title ?></h1>
            <dl>
                <dt>Dirección</dt>
                <dd><?= nl2br($node->address) ?></dd>
                <dt>Teléfono</dt>
                <dd><?= $node->phone ?></dd>
                <?= $node->secondary_phone ?>
                <?php if (!empty($node->fax)): ?>
                    <dt>Fax</dt>
                    <dd><?= $node->fax ?></dd>
                <?php endif; ?>
                <?php if (!empty($node->email)): ?>
                    <dt>Email</dt>
                    <dd><?= $node->email ?></dd>
                <?php endif; ?>
            </dl>

            <div class="description"><?= $node->description; ?></div>
            <?php $photos = get_pictures('business-gallery', $node->id);
                  if (sizeof($photos) > 0): ?>
                <section class="business-pictures">
                    <h3>Fotos</h3>
                    <?php foreach ($photos as $photo): ?>
                        <a href="<?= site_url(picture_path($photo)) ?>"><?= thumbnail($photo, 100, 100) ?></a>
                    <?php endforeach; ?>
                </section>
            <?php endif; ?>

            <div class="related">
                <h3>Eventos de <?= $node->title; ?></h3>
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
                    print partial_collection($other_events, 'events/_item', array('object_name' => 'event'));
                ?>
            </div>
            
            <section class="comments">
                <h3 class="section-title">Comentarios</h3>
                <div class="comments-list">
                    <?= partial_collection(get_comments($node), 'comments/_item'); ?>
                </div>
                <?= form_for_comments($node); ?>
            </section>
        </div>



    </div>
<?php endif; ?>