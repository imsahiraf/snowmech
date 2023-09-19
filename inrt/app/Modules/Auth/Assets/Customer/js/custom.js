(function ($) {
"use strict";
     $(document).ready(function () {
        //tooltips
        $('[data-toggle="tooltip"]').tooltip();
    });

 	$('.copy').on('click',function(){
        myFunction();
    });
	function myFunction() {
	    var copyText = document.getElementById("copyed");
	    copyText.select();
	    document.execCommand("Copy");
	}
     $.getJSON(base_url+'/getflipdata', function(apidata){
      //Countdown
      var clock;
      clock = $('.clock').FlipClock({
          clockFace: 'DailyCounter',
          autoStart: false,
          callbacks: {
              stop: function () {
                  $('.message').html(display['the_clock_has_stopped'][language]);
              }
          }
      });

      clock.setTime(apidata.fliptime);
      clock.setCountdown(true);
      clock.start();
    });

}(jQuery));