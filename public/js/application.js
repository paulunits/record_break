$(document).ready(function() {

  $('#ar').on("click", function(event) {
    if( $('#stooge1').is(':visible') ) {
	   event.preventDefault();
	   $('#stooge1').hide();
      // $( this ).off( event );

	   var ajaxRequest = $.ajax ({
      method: 'GET',
      url: 'artists',
      data: $(this).serialize()
     })


      ajaxRequest.done(function(data) {
        $('#ardis').html(data);
      })
  }
  else
  {
    event.preventDefault();
    $('#stooge1').show();
    $('#ardis').empty();

  } 
});
 $('#al').on("click", function(event) {
	event.preventDefault();
	$('#stooge2').hide();
  // $( this ).off( event );

	var ajaxRequest = $.ajax ({
      method: 'GET',
      url: 'albums',
      data: $(this).serialize()
    })

    console.log($(this).serialize());

    ajaxRequest.done(function(data) {
      $('#aldis').html(data);
    })
});
  $('#gen').on("click", function(event) {
	event.preventDefault();
	$('#stooge3').hide();
  // $( this ).off( event );

	var ajaxRequest = $.ajax ({
      method: 'GET',
      url: 'genres',
      data: $(this).serialize()
    })

    console.log($(this).serialize());

    ajaxRequest.done(function(data) {
      $('#gendis').html(data);
    })
});
});
