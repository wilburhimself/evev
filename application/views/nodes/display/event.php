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
            <?php $pic = get_cover('event-logo', $node->id); print !empty($pic) ? thumbnail($pic, 780, 350) : null; ?>
        </div>

        <?php if (user_going($node, get_logged_user())): ?>
            I'm Going
        <?php else: ?>
            are you going to this event?
        <?php endif; ?>

        <div class="summary">
            <?= $node->description; ?>
        </div>
    </div>

<?php else: ?>
    <a class="vevent item" href="<?= site_url('node/'.$node->id) ?>">
        <?php $pic = get_cover('event-logo', $node->id); print !empty($pic) ? thumbnail($pic, 200, 320) : null; ?>
        <h3><?= $node->title ?></h3>
        <p class="metadata">
            <span class="dtstart"><abbr class="value" title="<?= timeformat('date', $node->startdate); ?>"><?= timeformat('long', $node->startdate); ?></abbr></span>
        </p>
    </a>
<?php endif; ?>