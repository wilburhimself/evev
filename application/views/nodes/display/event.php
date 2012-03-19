<?php $business = node_load($node->business); ?>
<?php if ($op == 'full'): ?>
        
    <div class="vevent full">
        <header>
            <?php $logo = get_cover('business-logo', $business->id); print !empty($logo) ? thumbnail($logo, 60, 60) : null; ?>
            <h1><?= anchor('node/'.$business->id, $business->title) ?></h1>
            <span class="dtstart"><abbr class="value" title="<?= timeformat('date', $node->startdate); ?>"><?= timeformat('long', $node->startdate); ?></abbr></span>
        </header>
        <div class="showcase">
            <h1><?= $node->title; ?></h1>
            <?php $pic = get_cover('event-logo', $node->id); print thumbnail($pic, 780, 350); ?>
        </div>
        <?php
            if (is_logged_in()) {
                if (user_going($node, get_logged_user())) {
                    print 'Estás planificando ir a este evento | ';
                    print anchor('events/going/'.$node->id, "Ya no pienso ir a este evento");
                } else {
                    print 'No tienes planificado ir a este evento | ';
                    print anchor('events/going/'.$node->id, "Estoy planificando ir a este evento");
                }
            }
        ?>
        <div class="summary">
            <?= $node->description; ?>
        </div>

        <div class="comments">
            <div class="comments-list">
                <?= partial_collection(get_comments($node), 'comments/_item'); ?>
            </div>
            <?= form_for_comments($node); ?>
        </div>
        <div class="related">
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
        </div>

    </div>

<?php else: ?>
    <a class="vevent item" href="<?= site_url('node/'.$node->id) ?>">
        <?php $pic = get_cover('event-logo', $node->id); print thumbnail($pic, 200, 200); ?>

        <p class="date startdate">
            <span class="day-number"><?= date('d', strtotime($node->startdate)) ?></span>
            <span class="weekday"><?= strftime('%A, %l%p', strtotime($node->startdate)) ?><br />
                <?= strftime('%B', strtotime($node->startdate)); ?></span>
        </p>
        <h3><?= $node->title ?></h3>
        <p class="metadata">
            <span class="tab"><?= count_users_going($node); ?> Going</span>
            <span class="tab"><?= sizeof(get_comments($node)); ?> Comentarios</span>
        </p>
        
    </a>
<?php endif; ?>