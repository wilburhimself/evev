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
        
        <?php if (is_logged_in() and user_going($node, get_logged_user())): ?>
            I'm Going <?= anchor('events/going/'.$node->id, 'not going?'); ?>
        <?php else: ?>
            are you going to this event? <?= anchor('events/going/'.$node->id, 'going'); ?>
        <?php endif; ?>
        <br />
        <?php if (is_logged_in() and user_likes($node)): ?>
            <?= anchor('likes/status/'.$node->id, 'Unlike', 'class="icon love loving"'); ?>
        <?php else: ?>
            <?= anchor('likes/status/'.$node->id, 'Like', 'class="icon love"'); ?>
        <?php endif; ?>

        <div class="summary">
            <?= $node->description; ?>
        </div>

        <div class="comments">
            <div class="comments-list">
                <?= partial_collection(get_comments($node), 'comments/_item'); ?>
            </div>

            <?= form_for_comments($node); ?>
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
            <?= count_users_going($node); ?> Going
        </p>
        
    </a>
<?php endif; ?>