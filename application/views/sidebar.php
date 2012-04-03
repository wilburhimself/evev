<?php if (is_admin($this->logged_user)): ?>
<div class="side-block">
    <h3 class="side-block-title"><?= lang('navigation') ?></h3>
    <div class="side-nav">
        <ul>
            <li><?= anchor('nodes/manage/event', lang('events')); ?></li>
            <li><?= anchor('nodes/manage/location', lang('locations'));  ?></li>
            <li><?= anchor('nodes/manage/business', lang('businesses')); ?></li>
            <li><?= anchor('nodes/manage/special', lang('specials')) ?></li>
        </ul>
    </div>
</div>
<?php endif; ?>