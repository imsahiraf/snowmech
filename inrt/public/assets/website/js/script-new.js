  (function ($) {
    "use strict";

    var alllanguage='';
      $.ajax({url: base_url+'/public/assets/js/language.json',
        async: false,
        method:'post',
        dataType: 'json',
        global: false,
        contentType: 'application/json',
        success: function (data) {
            var lngdata = JSON.stringify(data);
            alllanguage = lngdata;
        }
    });
    var display = $.parseJSON(alllanguage);

    // valid password check
    $('#pass').on('keyup',function() {
      var pswd = $(this).val();
      //validate letter
    if (pswd.match(/[a-z]/) ) {
      $('#letter').removeClass('invalid').addClass('valid');
    } else {
      $('#letter').removeClass('valid').addClass('invalid');
    }
    //validate capital letter
    if (pswd.match(/[A-Z]/) ) {
      $('#capital').removeClass('invalid').addClass('valid');
    } else {
      $('#capital').removeClass('valid').addClass('invalid');
    }
    //validate number
    if ( pswd.match(/\d/) ) {
      $('#number').removeClass('invalid').addClass('valid');
    } else {
      $('#number').removeClass('valid').addClass('invalid');
    }
    //validate special
    if ( pswd.match(/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/g) ) {
      $('#special').removeClass('invalid').addClass('valid');
    } else {
      $('#special').removeClass('valid').addClass('invalid');
    }
    //validate the length
    if ( pswd.length < 8 ) {
        $('#length').removeClass('valid').addClass('invalid');
    } else {
        $('#length').removeClass('invalid').addClass('valid');
    }

    }).focus(function() {
        $('#password_msg').show();
    }).blur(function() {
        $('#password_msg').hide();
    });

    //Password confirm check
    $('#r_pass,#pass').on('keyup',function() {
      //Passwod confirm match
      if($('#pass').val() != $('#r_pass').val()) {
            document.getElementById("r_pass").style.borderColor = '#ff0000';
            document.getElementById("r_pass").style.boxShadow = 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(255, 0, 0, .6)';
            // Prevent form submission
            event.preventDefault();
        }else{      
            document.getElementById("r_pass").style.borderColor = '#1cbbb4';
            document.getElementById("r_pass").style.boxShadow = 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(28, 187, 180, .6)';
            // Prevent form submission
            event.preventDefault();
        }
      });

    //Password confirm check
    $('#email').on('keyup',function() {
      var email = $(this).val();
        if(IsEmail(email)==false){
          document.getElementById("email").style.borderColor = '#f00';
        }else{
          document.getElementById("email").style.borderColor = 'unset';
        }
    });

    // mail partern check function
    function IsEmail(email) {
      var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
      if(!regex.test(email)) {
        return false;
      }else{
        return true;
      }
    }

    $('#sign_up_now').on('click',function(){
      $('#nav-home-tab').click();
    });

    $('#registerForm').on('submit',function(event){

      var f_name    = event.currentTarget['f_name'].value;
      var l_name    = event.currentTarget['l_name'].value;
      var username  = event.currentTarget['username'].value;
      var email     = event.currentTarget['email'].value;
      var pass      = event.currentTarget['pass'].value;
      var r_pass    = event.currentTarget['r_pass'].value;

      if (f_name == "") {
          alert(display['first_name_required'][language]);
          return false;
      }
      else if (l_name == "") {
          alert(display['last_name_required'][language]);
          return false;
      }
      else if (username == "") {
          alert(display['user_name_required'][language]);
          return false;
      }
      else if (email == "") {
          alert(display['email_required'][language]);
          return false;
      }
      else if (pass == "") {
          alert(display['password_required'][language]);
          return false;
      }
      else if (pass.length < 8) {
          alert(display['please_enter_at_least'][language]);
          return false;
      }
      else if (r_pass == "") {
          alert(display['confirm_password_must_be_filled_out'][language]);
          return false;
      }
      else if(pass!=r_pass){
        alert(display['password_miss_match'][language]);
        return false;
      }
      else if (!($('#checkbox').is(':checked'))) {
          alert(display['must_confirm_privacy_policy_and_terms_and_condition'][language]);
          return false;
      }
      else{
        return true;
      }

    });

    $(".lng_select").on("change", function(event) {

      event.preventDefault();
      var language_select = $("#language_select").serialize();

      $.ajax({
          url: base_url+"/langChange",
          type: "post",
          data: language_select,
          success: function(result,status,xhr) {
              location.reload();
          },
          error: function(xhr,status,error){
              location.reload();
          }
      });
    });

    $(".lng_select2").on("change", function(event) {

      event.preventDefault();
      var language_select2 = $("#language_select2").serialize();

      $.ajax({
          url: base_url+"/langChange",
          type: "post",
          data: language_select2,
          success: function(result,status,xhr) {
              location.reload();
          },
          error: function(xhr,status,error){
              location.reload();
          }
      });
    });

    if(segment=="home" || segment==""){
      
      $.getJSON(base_url+'/get-chart-data', function(apidata){  
        
        var color0  = apidata.color0;
        var data0   = apidata.data0;
        var color1  = apidata.color1;
        var data1   = apidata.data1;

        var echartsConfig = function () {
          
          if ($('#eChart_1').length > 0) {
              var eChart_1 = echarts.init(document.getElementById('eChart_1'));
              var option1 = {
                  tooltip: {
                      trigger: 'item',
                      formatter: "{a} <br/>{b} : {c} ({d}%)",
                      backgroundColor: 'rgba(33,33,33,1)',
                      borderRadius: 0,
                      padding: 10,
                      textStyle: {
                          color: '#fff',
                          fontStyle: 'normal',
                          fontWeight: 'normal',
                          fontFamily: "'Poppins', sans-serif",
                          fontSize: 12
                      }
                  },
                  calculable: true,
                  itemStyle: {
                      normal: {
                          shadowBlur: 5,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                      }
                  },
                  series: [
                      {
                          name: 'Advertising',
                          type: 'pie',
                          radius: ['10%', '80%'],
                          center: ['50%', '50%'],
                          roseType: 'area',
                          color: color0,
                          data: data0
                          
                      }
                  ]
              };
              eChart_1.setOption(option1);
              eChart_1.resize();
          }
          if ($('#eChart_2').length > 0) {
              var eChart_2 = echarts.init(document.getElementById('eChart_2'));
              var option2 = {
                  tooltip: {
                      trigger: 'item',
                      formatter: "{a} <br/>{b} : {c} ({d}%)",
                      backgroundColor: 'rgba(33,33,33,1)',
                      borderRadius: 0,
                      padding: 10,
                      textStyle: {
                          color: '#fff',
                          fontStyle: 'normal',
                          fontWeight: 'normal',
                          fontFamily: "'Poppins', sans-serif",
                          fontSize: 12
                      }
                  },
                  calculable: true,
                  itemStyle: {
                      normal: {
                          shadowBlur: 5,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                      }
                  },
                  series: [
                      {
                          name: 'Advertising',
                          type: 'pie',
                          radius: ['10%', '80%'],
                          center: ['50%', '50%'],
                          roseType: 'radius',
                          color: color1,
                          label: {
                              normal: {
                                  fontFamily: "'Poppins', sans-serif",
                                  fontSize: 12
                              }
                          },
                          data: data1.sort(function (a, b) {
                              return a.value - b.value;
                          })
                      }
                  ]
              };
              eChart_2.setOption(option2);
              eChart_2.resize();
          }
        };
        //Resize function start
        var echartResize;
        $(window).on("resize", function () {
            /*E-Chart Resize*/
            clearTimeout(echartResize);
            echartResize = setTimeout(echartsConfig, 200);
        }).resize();
        //Function Call
        echartsConfig();

      });
    }

    $("#subscribeForm").on("submit", function(event) {
        event.preventDefault();
        var inputdata = $("#subscribeForm").serialize();
        var email = $('input[name=subscribe_email]').val();

        if (email == "") {
            alert(display['please_input_your_email'][language]);
            return false;
        }
        if(IsEmail(email)==false){
            alert(display['please_enter_valid_email'][language]);
            return false;
        }

        $.ajax({

            url: base_url+"/subscribe",
            type: "post",
            dataType: 'json',
            data: inputdata,
            success: function(data) {
                alert(data.message);
                location.reload();
            }
        });
    });

    $("#contactForm").on("submit", function(event) {
        event.preventDefault();
        var inputdata = $("#contactForm").serialize();
        //alert("It is disabled for demo mode");
        $.ajax({
          url: base_url+"/contact-msg",
          type: "post",
          dataType: 'json',
          headers: {'Access-Control-Allow-Origin':'*'},
          data: inputdata,
          success: function(data) {
            
              alert(data.message);
              console.log(data.message);
          }
        });
      });

    $("#country").on("change", function(event) {
        event.preventDefault();
        $( "#phone").val(this.value);
    });

    if(segment=="register"){

      var url = window.location.href;
      var tab = url.substring(url.lastIndexOf('#') + 1);
      var logintab = url.substring(url.lastIndexOf('login'));

      if (tab == 'tab2') {
        $("#btntab2").addClass("active");
        $("#tab2").addClass("in active");
        $("#btntab1").removeClass("active");
        $("#tab1").removeClass("in active");
      }
      if (logintab == 'login') {
        $("#btntab2").addClass("active");
        $("#tab2").addClass("in active");
        $("#btntab1").removeClass("active");
        $("#tab1").removeClass("in active");
      }

      if (!String.prototype.trim) {
          (function () {
              // Make sure we trim BOM and NBSP
              var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
              String.prototype.trim = function () {
                  return this.replace(rtrim, '');
              };
          })();
      }

      [].slice.call(document.querySelectorAll('input.input__field')).forEach(function (inputEl) {
          // in case the input is already filled..
          if (inputEl.value.trim() !== '') {
              classie.add(inputEl.parentNode, 'input--filled');
          }

          // events:
          inputEl.addEventListener('focus', onInputFocus);
          inputEl.addEventListener('blur', onInputBlur);
      });

      function onInputFocus(ev) {
          classie.add(ev.target.parentNode, 'input--filled');
      }

      function onInputBlur(ev) {
          if (ev.target.value.trim() === '') {
              classie.remove(ev.target.parentNode, 'input--filled');
          }
      }
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