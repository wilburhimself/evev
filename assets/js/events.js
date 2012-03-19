(function($) {
    $(document).ready(function() {
        $("#event-startdate, #event-enddate, #special-startdate, #special-enddate").datetimepicker({
            dateFormat: "yy-mm-dd",
            timeFormat: "hh:mm:ss"
        });

        $(".item").equalHeight();
    });

    $(".node-form textarea").ckeditor();

})(jQuery);