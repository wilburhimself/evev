<tr class="business item-long">
    <td><h1><?= anchor('node/'.$object->id, $object->title) ?></h1></td>
    <td><?= $object->phone; ?></td>
    <td><?= node_load($object->location)->title ?></td>
</tr>