<?= form_hidden('node[type]', 'location'); ?>
<?= !empty($node) ? form_hidden('id', $node->id) : null; ?>

<?= form_submit('', 'Guardar Location', 'btn btn-primary'); ?>
