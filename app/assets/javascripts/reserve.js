$(function(){
// $('.class')
// $('#id')
// $('<tag>') crear!
	$('.seats').on('click',function(){
		//resolver el peo
		//$(this).
	    $seat_clicked = $(this);
	    $seat = $seat_clicked.attr('id');

	    $input = $("<input>").attr('id','hidden-'+$seat).attr('type','text').val($seat);

	    if($seat_clicked.hasClass("check")) {
	    	$('#hidden-'+$seat).remove();
	    } else {
	    	$( "#form_submit" ).append($input);
	    }
	    $seat_clicked.toggleClass("check");
	    
	    
	});
});
