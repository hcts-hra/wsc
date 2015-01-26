$(function() {
    $("#nav .hlist li").on("click", function(event){
        event.stopPropagation();
        var $this = $(this);
        $this.siblings().removeClass('active');
        $this.addClass('active');        
        $('#content-placeholder').load($this.attr('id') + '.html #content-placeholder > *');  
    });
});
