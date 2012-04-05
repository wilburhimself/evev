<?php if ($object->type == 'business'):  ?>
<tr class="business item-long">
    <td width="30%"><h1><?= anchor('node/'.$object->id, $object->title) ?></h1></td>
    <td width="20%"><?= !empty($object->phone) ? $object->phone : null ?></td>
    <td width="20%"><?= !$object->location == 0 ? node_load($object->location)->title : null ?></td>
    <td><?= !empty($object->hours) ? $object->hours : null;?></td>
    <td><?= !empty($object->website) ? '<a href="'.$object->website.'" target="_blank">Website</a>' : null ?></td>
    <td width="20%"><?= link_to($object, lang('more_info')) ?></td>
</tr>
<?php endif; ?>