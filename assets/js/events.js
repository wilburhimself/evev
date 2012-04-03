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
    $(".business-pictures a").lightBox({fixedNavigation:true});

    $('.tab').hide();
    $('.tab:first').show();
    $('.tabs a:first').addClass('active');

    $('.tabs a').click(function(e) {
        e.preventDefault();
        var href = $(this).attr('href');
        $('.tabs a').removeClass('active');
        $(this).addClass('active');
        $('.tab').hide();
        $(href).show();

    });

})(jQuery);