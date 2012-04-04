<!DOCTYPE html>
<html lang="es" class="no-js">
    <head>
        <meta charset="utf-8" />
        <title><?= !empty($page_title) ? $page_title.' | ' : null; ?>TODO</title>
        <script src="<?= site_url('assets/js/modernizr.js'); ?>"></script>

        <link rel="stylesheet" type="text/css" href="<?= site_url('assets/css/reset.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?= site_url('assets/css/todo.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?= site_url('assets/css/demo_table.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?= site_url('assets/css/jquery.lightbox-0.5.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?= site_url('bootstrap-ui/jquery-ui-1.8.16.custom.css'); ?>" />

        <link rel="profile" href="http://microformats.org/profile/hcalendar">
        


        <script type="text/javascript">
          var _gaq = _gaq || [];
          _gaq.push(['_setAccount', 'UA-30124726-1']);
          _gaq.push(['_trackPageview']);

          (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();

        </script>
    </head>
    <body>

        <div class="container">

            <div class="colwrap">
                <div class="main-nav">
                        <div class="container">
                            <?= anchor('welcome', 'TODO', 'class="brand"'); ?> <strong>Casa de Campo</strong>
                            <?php language_switcher() ?>
                        </div>

                    </div>
                <div class="clearfix" style="clear: both;">
                    <div class="main-content">
                        <?php show_messages(); ?>
                        <?php $this->load->view($yield); ?>
                    </div>
                    <div class="sidebar">


                        <div class="user-control">
                            <?php if (is_logged_in()): ?>
                                <?= $this->logged_user->username; ?> | <?= anchor('logout', lang('logout')); ?>
                            <?php else: ?>
                                <p><?= anchor('sessions', lang('login')) ?> | <?= anchor('register', lang('register')) ?></p>
                            <?php endif; ?>
                        </div>


                        <div class="side-block">
                            <ul>
                                <li>
                                    <h3><?= anchor($this->lang->lang(), lang('calendar')) ?></h3>
                                </li>
                                <li><?= anchor($this->lang->lang().'/directory', lang('directory')) ?></li>
                                <li><a href="http://casadecampoliving.com/<?= $this->lang->lang() == 'es' ? 'es' : null ?>" target="_blank">Casa de Campo Living</a></li>
                                <li><?= anchor('feedback', lang('submit')); ?></li>
                            </ul>
                        </div>
                        <?php !empty($sidebar) ? $this->load->view($sidebar) : $this->load->view('sidebar'); ?>
                    </div>
                </div>
            </div>
        </div>

        <script src="<?= site_url('assets/js/jquery-1.7.1.min.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery-ui-1.8.16.custom.min.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery-ui-timepicker-addon.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery.dataTables.min.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery.cycle.all.js'); ?>"></script>
        <script src="<?= site_url('assets/js/jquery.lightbox-0.5.js'); ?>"></script>
        <script src="<?= site_url('ckeditor/ckeditor.js'); ?>"></script>
        <script src="<?= site_url('ckeditor/adapters/jquery.js'); ?>"></script>
        <script src="<?= site_url('assets/js/events.js'); ?>"></script>
    </body>
</html>