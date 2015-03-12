function loadContent(contentName) {
    var menu = $("#nav .hlist");
    var menuItems = $("li", menu);
    menuItems.removeClass('active');
    var menuItem = $("#" + contentName, menu);
    menuItem.addClass('active');
	$('#content-placeholder').load('../../themes/wsc/pages/' + contentName + '.html #content-placeholder > *');
}

$(function() {
    $("#nav .hlist li").on("click", function(event){
        event.stopPropagation();
        loadContent($(this).attr('id'))
    });
});
