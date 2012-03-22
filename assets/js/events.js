(function($) {
    $(document).ready(function() {
        $("#event-startdate, #event-enddate, #special-startdate, #special-enddate").datetimepicker({
            dateFormat: "yy-mm-dd",
            timeFormat: "hh:mm:ss"
        });
    });

    var config = {
        linkShowAdvancedTab: false,
        scayt_autoStartup: true,
        enterMode: Number(2),
        toolbar_Full: [['Styles', 'Bold', 'Italic', 'Underline', 'SpellChecker', 'Scayt', '-', 'NumberedList', 'BulletedList'],
                        ['Link', 'Unlink'], ['Undo', 'Redo', '-', 'SelectAll']]
    }
    $(".node-form .ck").ckeditor(function() {}, config);

    $(".manage-nodes").dataTable();
    $(".slideshow").cycle();

})(jQuery);