<?php
    $business = node_load($node->business);
    if (is_translation($business->id)) {
        $original = get_original($business->id);
        $original_id = $original->id;
    } else {
        $original_id = $business->id;
    }
?>
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
        
        <?php translation_links($node); ?>
        
        <div class="info">
            <div class="dates <?php if(($node->enddate != "0000-00-00 00:00:00") and date('d-m', strtotime($node->startdate)) != date('d-m', strtotime($node->enddate))): ?> multiple<?php endif; ?>">
            <?php if(($node->enddate != "0000-00-00 00:00:00") and date('d-m', strtotime($node->startdate)) != date('d-m', strtotime($node->enddate))): ?>
                <p class="date double startdate">
                    <span class="day-number">
                        <em class="in-name"><?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></em>
                        <?= ucwords(date('d', strtotime($node->startdate))) ?></span>

                </p>
                <p class="date double enddate last">
                    <span class="day-number">
                        <em class="in-name"><?= ucwords(htmlentities(strftime('%B', strtotime($node->enddate)))) ?></em>
                        <?= date('d', strtotime($node->enddate)) ?></span>

                </p>

            <?php else: ?>
                <p class="date single startdate">
                    <span class="day-number"><em class="in-name"><?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></em><?= date('d', strtotime($node->startdate)) ?></span>
                </p>
            <?php endif; ?>
        </div>
            <h1><?= $node->title ?></h1>
            <div class="description">
                <?= $node->description; ?>
            </div>
            <dl>
                <dt><?= lang('date') ?></dt>
                <dd><?= ucwords(htmlentities(strftime('%A, %B %d', strtotime($node->startdate)))) ?>
                <?php if(($node->enddate != "0000-00-00 00:00:00") and date('d-m', strtotime($node->startdate)) != date('d-m', strtotime($node->enddate))): ?> - <?= ucwords(htmlentities(strftime('%A, %B %d', strtotime($node->enddate)))) ?> <?php endif; ?></dd>
                <?php if (strftime('%l', strtotime($node->startdate)) != '12'): ?>
                    <dt><?= lang('hour') ?></dt>
                    <dd><?= ucwords(htmlentities(strftime('%l', strtotime($node->startdate)))) ?><?= date('A', strtotime($node->startdate)) ?></dd>
                <?php endif; ?>
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



            <?php if (is_logged_in()): ?>
            <div class="comments">
                <h3 class="section-title"><?= lang('comments') ?></h3>
                <div class="comments-list">
                    <?= partial_collection(get_comments($node), 'comments/_item'); ?>
                </div>
                <?= form_for_comments($node); ?>
            </div>
            <?php endif; ?>

            <div class="related">
                
                <?php $other_events = search(
                    array(
                        'type' => 'event',
                        'num' => 4,
                        'conditions' => array(
                            'f.business='.$node->business,
                            'n.id<>'.$node->id,
                        ),
                        'order' => array(
                            'f.startdate' => 'ASC',
                        ),
                    ));
                    if (sizeof($other_events) > 0){
                        print '<h3>'. lang('other_events') .' '. $business->title .'</h3>';
                        foreach ($other_events as $event){
                            $this->load->view('events/_item', array('event' => $event));
                        }
                    }

                ?>
            </div>
        </div>
    </div>

<?php else: ?>
    <a class="vevent item" href="<?= site_url('node/'.$node->id) ?>">
        <?php $pic = get_cover('event-logo', $node_id); print thumbnail($pic, 300, 300); ?>
        <div class="dates <?php if(($node->enddate != "0000-00-00 00:00:00") and date('d-m', strtotime($node->startdate)) != date('d-m', strtotime($node->enddate))): ?> multiple<?php endif; ?>">
            <?php if(($node->enddate != "0000-00-00 00:00:00") and date('d-m', strtotime($node->startdate)) != date('d-m', strtotime($node->enddate))): ?>
                <p class="date double startdate">
                    <span class="day-number">
                        <em class="in-name"><?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></em>
                        <?= ucwords(date('d', strtotime($node->startdate))) ?></span>
                   
                </p>
                <p class="date double enddate last">
                    <span class="day-number">
                        <em class="in-name"><?= ucwords(htmlentities(strftime('%B', strtotime($node->enddate)))) ?></em>
                        <?= date('d', strtotime($node->enddate)) ?></span>

                </p>
                 
            <?php else: ?>
                <p class="date single startdate">
                    <span class="day-number"><em class="in-name"><?= ucwords(htmlentities(strftime('%B', strtotime($node->startdate)))) ?></em><?= date('d', strtotime($node->startdate)) ?></span>
                    <span class="weekday">
                        <strong><?= ucwords(htmlentities(strftime('%A', strtotime($node->startdate)))) ?></strong>
                        <?php if (strftime('%l', strtotime($node->startdate)) != '12'): ?>
                        <br />
                        <?= ucwords(htmlentities(strftime('%l:%M', strtotime($node->startdate)))) ?><?= date('A', strtotime($node->startdate)) ?>
                        <?php if(date('d-m', strtotime($node->startdate)) == date('d-m', strtotime($node->enddate))): ?>
                            - <?= ucwords(htmlentities(strftime('%l:%M', strtotime($node->enddate)))) ?><?= date('A', strtotime($node->enddate)) ?>
                        <?php endif; ?>
                    <?php endif; ?>
                </p>
            <?php endif; ?>
        </div>
        <h3><?= substr($node->title, 0, 60) ?><?= (strlen($node->title) > 60) ? '...' : null ?></h3>
        <!-- <p class="metadata">
            <span class="tab"><?= count_users_going($node); ?> <?= lang('going') ?></span>
            <span class="tab"><?= sizeof(get_comments($node)); ?> <?= lang('comments') ?></span>
        </p> -->
    </a>
<?php endif; ?>