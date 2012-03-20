<?php $business = node_load($node->business); ?>
<?php if ($op == 'full'): ?>
        
    <div class="vevent full">
        <?php $pic = get_cover('event-logo', $node->id); print thumbnail($pic, 780, 350); ?>
        <aside>
            <?php
                if (is_logged_in()) {
                    if (user_going($node, get_logged_user())) {
                        print anchor('events/going/'.$node->id, "Voy");
                    } else {
                        print anchor('events/going/'.$node->id, "Voy");
                    }
                }
            ?>
        </aside>
        <div class="info">
            <h1><?= $node->title ?></h1>
            <dl>
                <dt>Fecha</dt>
                <dd><?= htmlentities(strftime('%A %d de %B', strtotime($node->startdate))) ?></dd>
                <dt>Hora</dt>
                <dd><?= htmlentities(strftime('%l', strtotime($node->startdate))) ?> <?= date('A', strtotime($node->startdate)) ?></dd>
                <?php if (!empty($node->location)): ?>
                    <dt>Lugar</dt>
                    <dd><?= node_load($node->location)->title; ?></dd>
                <?php endif; ?>
                <?php if (!empty($node->cost)): ?>
                    <dt>Costo</dt>
                    <dd><?= $node->cost ?></dd>
                <?php endif; ?>
                <?php if (!empty($node->contact)): ?>
                    <dt>Contacto</dt>
                    <dd><?= $node->contact ?></dd>
                <?php endif; ?>
                <dt>Organizado por</dt>
                <dd><?= anchor('node/'.$business->id, $business->title) ?></dd>
            </dl>

            <div class="description">
                <?= $node->description; ?>
            </div>

            <section class="comments">
                <h3 class="section-title">Comentarios</h3>
                <div class="comments-list">
                    <?= partial_collection(get_comments($node), 'comments/_item'); ?>
                </div>
                <?= form_for_comments($node); ?>
            </section>
            <section class="related">
                <h3>Otros eventos de <?= $business->title; ?></h3>
                <?php $other_events = search(
                    array(
                        'type' => 'event',
                        'num' => 4,
                        'conditions' => array(
                            'f.business='.$node->business,
                        ),
                        'order' => array(
                            'f.startdate' => 'ASC',
                        ),
                    ));
                    print partial_collection($other_events, 'events/_item', array('object_name' => 'event'));
                ?>
            </section>
        </div>


    </div>

<?php else: ?>
    <a class="vevent item" href="<?= site_url('node/'.$node->id) ?>">
        <?php $pic = get_cover('event-logo', $node->id); print thumbnail($pic, 200, 200); ?>

        <p class="date startdate">
            <span class="day-number"><?= date('d', strtotime($node->startdate)) ?></span>
            <span class="weekday"><?= htmlentities(strftime('%A, %l', strtotime($node->startdate))) ?> <?= date('A', strtotime($node->startdate)) ?><br />
                <?= htmlentities(strftime('%B', strtotime($node->startdate))) ?></span>
        </p>
        <h3><?= $node->title ?></h3>
        <p class="metadata">
            <span class="tab"><?= count_users_going($node); ?> Going</span>
            <span class="tab"><?= sizeof(get_comments($node)); ?> Comentarios</span>
        </p>
        
    </a>
<?php endif; ?>