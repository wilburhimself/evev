(function($) {
    $(document).ready(function() {
        $("#event-startdate, #event-enddate").datetimepicker({
            dateFormat: "yy-mm-dd",
            timeFormat: "hh:mm:ss"
        });
    });
})(jQuery);