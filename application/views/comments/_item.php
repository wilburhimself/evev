<?php
    $user = get_user($object->user_id);
?>
<div class="comment">
    <?= $user->display_name.' dice:' ?> <br />
    <?= $object->content; ?>
    <br /><br />
</div>
