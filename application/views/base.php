<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title><?= !empty($page_title) ? $page_title.' | ' : null; ?>TODO Events</title>
        <link rel="stylesheet" type="text/css" href="<?= site_url('assets/css/reset.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?= site_url('assets/css/todo.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?= site_url('bootstrap-ui/jquery-ui-1.8.16.custom.css'); ?>" />
        <link rel="profile" href="http://microformats.org/profile/hcalendar">
    </head>
    <body>
        <nav class="main-nav">
            <div class="container">
                <?= anchor('welcome', 'TODO', 'class="brand"'); ?>
                <div class="user-control">
                    <?php if (is_logged_in()): ?>
                        <?= $this->logged_user->username; ?> | <?= anchor('sessions/destroy', 'Salir'); ?>
                    <?php else: ?>
                        <p><?= anchor('sessions', 'Iniciar sesión') ?> o <?= anchor('register', 'Registrarse') ?></p>
                    <?php endif; ?>
                </div>
            </div>
        </nav>

        <div class="container">
            <?php show_messages(); ?>
            <div class="colwrap">
                <div class="main-content">
                    <?php $this->load->view($yield); ?>
                </div>
                <div class="sidebar">
                    <nav class="side-block">
                        <ul>
                            <li><?= anchor('', 'Calendario') ?></li>
                            <li><?= anchor('negocios', 'Negocios') ?></li>
                            <li><?= anchor('feedback', 'Sugiere')  ?></li>
                        </ul>
                    </nav>
                    <?php !empty($sidebar) ? $this->load->view($sidebar) : $this->load->view('sidebar'); ?>
                </div>
            </div>
        </div>

        <script src="<?= site_url('assets/js/jquery-1.7.1.min.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery-ui-1.8.16.custom.min.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery-ui-timepicker-addon.js'); ?>"></script>
        <script src="<?= site_url('ckeditor/ckeditor.js'); ?>"></script>
        <script src="<?= site_url('ckeditor/adapters/jquery.js'); ?>"></script>
        <script src="<?= site_url('assets/js/events.js'); ?>"></script>
    </body>
</html>