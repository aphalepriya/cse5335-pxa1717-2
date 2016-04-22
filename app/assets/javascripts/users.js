var myFuncCalls = 1;

$(document).ready(function(){
    
	$('a.button').click(function(e){
        setInterval(function(){
		e.preventDefault();
        $('.button').hide();
        var last_id = $('.record').last().attr('data-id');

        $.ajax({
            type: "GET",
            url: $(this).attr('href'),
            data: { id: last_id },
            dataType: "script",
        });
    },500);
	});
     
});
