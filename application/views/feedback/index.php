<h1 class="page-title"><?= lang('submit') ?></h1>

<?= lang('feedback_intro') ?>

<ul class="tabs">
    <li><a href="#comment"><?= lang('comment') ?></a></li>
    <li><a href="#event"><?= lang('submit_event') ?></a></li>
    <li><a href="#business"><?= lang('submit_business') ?></a></li>
</ul>

<div class="tab" id="comment">
    <h1><?= lang('submit_your_comment') ?></h1>
    <?= form_open('feedback/send_comment') ?>

    <div class="control-group">
        <div class="control-label"><?= form_label(lang('full_name')) ?></div>
        <div class="controls"><?= form_input('comment[fullname]') ?></div>
    </div>

    <div class="control-group">
        <div class="control-label"><?= form_label(lang('email')) ?></div>
        <div class="controls"><?= form_input('comment[email]') ?></div>
    </div>

    <div class="control-group">
        <div class="control-label"><?= form_label(lang('comment')) ?></div>
        <div class="controls"><?= form_textarea('comment[comment]') ?></div>
    </div>

    <?= form_submit('', lang('submit_comment')) ?>
    <?= form_close() ?>
</div>

<div class="tab" id="event">
    <h1><?= lang('submit_event') ?></h1>
    <?php submit_node_form('event') ?>
</div>

<div class="tab" id="business">
    <h1><?= lang('submit_business') ?></h1>
    <?php submit_node_form('business') ?>
</div>