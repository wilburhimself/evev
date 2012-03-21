<tr class="business item-long">
    <td width="40%"><h1><?= anchor('node/'.$object->id, $object->title) ?></h1></td>
    <td width="20%"><?= $object->phone; ?></td>
    <td width="20%"><?= !$object->location == 0 ? node_load($object->location)->title : null ?></td>
    <td width="20%"><?= link_to($object, lang('more_info')) ?></td>
</tr>