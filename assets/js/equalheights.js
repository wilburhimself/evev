jQuery.fn.equalHeight = function() {
    $ = jQuery;
    //console.log($(this));
    $(this).each(function() {
	var currentTallest = 0;
	$(this).children().each(function(i) {
	    if ($(this).height() > currentTallest) {currentTallest = $(this).height()}
	});
	if ($.browser.msie && $.browser.version == 6.0) { $(this).children().css({'height': currentTallest}); }
	    $(this).children().css({'min-height': currentTallest});
    });
}