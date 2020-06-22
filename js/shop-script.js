$(document).ready(function(){
	
	$("#select-sort").click(function(){
		$("#sorting-list").slideToggle(200);
	});


    $('#categories > li').click(function (event) {
        $(this).children("ul").slideToggle();
        event.stopPropagation();
    });
	
});