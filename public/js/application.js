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
  if( $('#stooge2').is(':visible') ) {
     event.preventDefault();
     $('#stooge2').hide();
      // $( this ).off( event );

     var ajaxRequest = $.ajax ({
      method: 'GET',
      url: 'albums',
      data: $(this).serialize()
     })


      ajaxRequest.done(function(data) {
        $('#aldis').html(data);
      })
  }
  else
  {
    event.preventDefault();
    $('#stooge2').show();
    $('#aldis').empty();

  } 
});

  $('#gen').on("click", function(event) {
    if( $('#stooge3').is(':visible') ) {
     event.preventDefault();
     $('#stooge3').hide();
      // $( this ).off( event );

     var ajaxRequest = $.ajax ({
      method: 'GET',
      url: 'genres',
      data: $(this).serialize()
     })


      ajaxRequest.done(function(data) {
        $('#gendis').html(data);
      })
  }
  else
  {
    event.preventDefault();
    $('#stooge3').show();
    $('#gendis').empty();

  } 
 }); 
});
