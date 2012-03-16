<h1>Iniciar Sesion</h1>
<?php print form_open('sessions/create'); ?>
<p><?php print form_input('username'); ?></p>
<p><?php print form_password('password'); ?></p>
<?php print form_submit('', 'Login'); ?>
<?php print form_close(); ?>