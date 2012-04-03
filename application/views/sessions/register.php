<h1><?= lang('register') ?></h1>

<?= form_open('sessions/create_account') ?>

    <div class="control-group">
        <div class="control-label"><?= form_label(lang('username')) ?></div>
        <div class="controls"><?= form_input('user[username]') ?></div>
        <?= form_error('user[username]') ?>
    </div>

    <div class="control-group">
        <div class="control-label"><?= form_label(lang('email')) ?></div>
        <div class="controls"><?= form_input('user[email]') ?></div>
        <?= form_error('user[email]') ?>
    </div>

    <div class="control-group">
        <div class="control-label"><?= form_label(lang('password')) ?></div>
        <div class="controls"><?= form_password('user[passw]') ?></div>
        <?= form_error('user[passw]') ?>
    </div>

    <?= form_submit('', lang('create_account')) ?>
<?= form_close() ?>