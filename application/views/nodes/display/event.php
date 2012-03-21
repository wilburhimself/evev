<?php $business = node_load($node->business); ?>
<?php
    if (is_translation($node->id)) {
        $original = get_original($node->id);
        $node_id = $original->id;
    } else {
        $node_id = $node->id;
    }
?>
<?php if ($op == 'full'): ?>
        
    <div class="vevent full">
        <?php $pic = get_cover('event-logo', $node_id); print thumbnail($pic, 780, 350); ?>
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
                <dt><?= lang('date') ?></dt>
                <dd><?= ucwords(htmlentities(strftime('%A %d de %B', strtotime($node->startdate)))) ?></dd>
                <dt><?= lang('hour') ?></dt>
                <dd><?= ucwords(htmlentities(strftime('%l', strtotime($node->startdate)))) ?><?= date('A', strtotime($node->startdate)) ?></dd>
                <?php if ($node->location > 0): ?>
                <dt><?= lang('place') ?></dt>
                <dd><?php if ($node->address): ?><?= $node->address ?>, <?php endif; ?><?= node_load($node->location)->title; ?><?php endif; ?>
                </dd>
                <?php if ($node->cost): ?>
                    <dt><?= lang('price') ?></dt>
                    <dd><?= $node->cost ?></dd>
                <?php endif; ?>
                
                <?php if ($node->contact): ?>
                    <dt><?= lang('contact') ?></dt>
                    <dd><?= $node->contact ?></dd>
                <?php endif; ?>

                <dt><?= lang('organized') ?></dt>
                <dd><?= anchor($business->language.'/node/'.$business->id, $business->title) ?></dd>
            </dl>

            <div class="description">
                <?= $node->description; ?>
            </div>

            <?php if (!is_logged_in()): ?>
            <section class="comments">
                <h3 class="section-title"><?= lang('comments') ?></h3>
                <div class="comments-list">
                    <?= partial_collection(get_comments($node), 'comments/_item'); ?>
                </div>
                <?= form_for_comments($node); ?>
            </section>
            <?php endif; ?>

            <section class="related">
                <h3><?= lang('other_events') ?> <?= $business->title; ?></h3>
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
        <?php $pic = get_cover('event-logo', $node_id); print thumbnail($pic, 200, 200); ?>
        <div class="dates">
            <?php if(($node->enddate != "0000-00-00 00:00:00") and date('d-m', strtotime($node->startdate)) != date('d-m', strtotime($node->enddate))): ?>
                <p class="date double startdate">
                    <span class="day-number"><?= ucwords(date('d', strtotime($node->startdate))) ?></span>
                    <?php if (date('m', strtotime($node->startdate)) != date("m", strtotime($node->enddate))): ?>
                        <span class="weekday"><?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></span>
                    <?php endif; ?>
                </p>
                <p class="date double enddate last">
                    <span class="day-number"><?= date('d', strtotime($node->enddate)) ?></span>
                     <?php if (date('m', strtotime($node->startdate)) != date("m", strtotime($node->enddate))): ?>
                        <span class="weekday"><?= ucwords(htmlentities(strftime('%B', strtotime($node->enddate)))) ?></span>
                    <?php endif; ?>
                </p>
                 <?php if (date('m', strtotime($node->startdate)) == date("m", strtotime($node->enddate))): ?>
                    <div class="fullmonth"><?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></div>
                 <?php endif; ?>
            <?php else: ?>
                <p class="date single startdate">
                    <span class="day-number"><?= date('d', strtotime($node->startdate)) ?></span>
                    <span class="weekday"><?= ucwords(htmlentities(strftime('%A, %l', strtotime($node->startdate)))) ?><?= date('A', strtotime($node->startdate)) ?>
                        <?php if(date('d-m', strtotime($node->startdate)) == date('d-m', strtotime($node->enddate))): ?>
                            - <?= ucwords(htmlentities(strftime('%l', strtotime($node->enddate)))) ?><?= date('A', strtotime($node->enddate)) ?>
                        <?php endif; ?>
                        <br />

                        <?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></span>

                </p>
            <?php endif; ?>
        </div>
        <h3><?= substr($node->title, 0, 60) ?><?= (strlen($node->title) > 60) ? '...' : null ?></h3>
        <p class="metadata">
            <span class="tab"><?= count_users_going($node); ?> <?= lang('going') ?></span>
            <span class="tab"><?= sizeof(get_comments($node)); ?> <?= lang('comments') ?></span>
        </p>
    </a>
<?php endif; ?>