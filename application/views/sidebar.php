<?php if (is_logged_in()): ?>
<div class="side-block">
    <h3 class="side-block-title">Navegación</h3>
    <div class="side-nav">
        <ul>
            <li><?= anchor('nodes/manage/event', 'Eventos'); ?></li>
            <li><?= anchor('nodes/manage/location', 'Locations');  ?></li>
            <li><?= anchor('nodes/manage/business', 'Negocios'); ?></li>
            <li><?= anchor('nodes/manage/special', 'Especiales') ?></li>
        </ul>
    </div>
</div>
<?php endif; ?>