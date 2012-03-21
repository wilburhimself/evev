<?php
    $user = get_user($object->user_id);
?>
<div class="comment">
    <?= $user->display_name.' '.lang('says').':' ?> <br />
    <?= $object->content; ?>
    <br /><br />
</div>
