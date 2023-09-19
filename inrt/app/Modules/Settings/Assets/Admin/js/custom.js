(function ($) {
"use strict";

var base_url = $("#base_url").val();
var language = $("#language").val();
var alllanguage='';    
    $.ajax({
        url: base_url+'/public/assets/js/language.json',
        async: false,
        method:'post',
        dataType: 'json',
        global: false,
        contentType: 'application/json',
        success: function (data) {
            var lngdata = JSON.stringify(data);
            alllanguage = lngdata;
        },
        error(xml, abc, errors){
        }
    });
    
    var display = $.parseJSON(alllanguage);
    $('.copy1').on('click',function(){
        myFunction1();
    });
     function myFunction1() {
      var copyText = document.getElementById("copyed1");
      copyText.select();
      document.execCommand("Copy");
    }
        if($('#ajaxcointableform').length){
            var table;

            var ajaxcointableform = JSON.stringify($('#ajaxcointableform').serializeArray());
            var formdata          = $.parseJSON(ajaxcointableform);
            var inputname         = formdata[0]['csrf_test_name'];
            var inputval          = formdata[0]['value'];

            //datatables
            table = $('#ajaxcointable').DataTable({ 

                "processing": true, //Feature control the processing indicator.
                "serverSide": true, //Feature control DataTables' server-side processing mode.
                "order": [],        //Initial no order.
                "pageLength": 10,   // Set Page Length
                "lengthMenu":[[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],

                // Load data for the table's content from an Ajax source
                "ajax": {
                    "url": base_url+"/backend/ico-settings/currency-list",
                    "type": "POST",
                    "data": {csrf_test_name:inputval}
                },

                //Set column definition initialisation properties.
                "columnDefs": [
                { 
                    "targets": [ 0 ], //first column / numbering column
                    "orderable": false, //set not orderable
                },
                ],
               "fnInitComplete": function (oSettings, response) {
              }

            });
            $.fn.dataTable.ext.errMode = 'none';
        }
    
    var sum = 0;
    $('.coin').each(function(){
        sum += Number($(this).val());
    });
    $('#total_coin').val(sum);

    $(document).on('change','.coin',function(){
        var sum = 0;
        $('.coin').each(function(){
            sum += Number($(this).val());
        });
        $('#total_coin').val(sum);
    });

     $("#gatewayname").on("change", function(event) {
        event.preventDefault();
        var gatewayname = $("#gatewayname").val();

        $.getJSON(base_url+'/backend/setting/getemailsmsgateway', function(sms){

            var host     = "";
            var user     = "";
            var userid   = "";
            var api      = "";
            var password = "";

            if(sms.gatewayname=="budgetsms"){
                host    = sms.host;
                user    = sms.user;
                userid  = sms.userid;
                api     = sms.api;
            }
            if(sms.gatewayname=="infobip"){
                host    = sms.host;
                user    = sms.user;
                password= sms.password;
            }
            if(sms.gatewayname=="smsrank"){
                host    = sms.host;
                user    = sms.user;
                password= sms.password;
            }
            if(sms.gatewayname=="nexmo"){
                api     = sms.api;
                password= sms.password;
            }

            if (gatewayname==='budgetsms') {
                $( "#sms_field").html("<div class='form-group row'><label for='host' class='col-sm-3 font-weight-600'>"+display['host'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='host' type='text' class='form-control' id='host' placeholder='"+display['host'][language]+"' value='"+host+"' required></div></div><div class='form-group row'><label for='user' class='col-sm-3 font-weight-600'>"+display['username'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='user' type='text' class='form-control' id='user' placeholder='"+display['username'][language]+"' value='"+user+"' required></div></div><div class='form-group row'><label for='userid' class='col-sm-3 font-weight-600'>"+display['user_id'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='userid' type='text' class='form-control' id='userid' placeholder='"+display['user_id'][language]+"' value='"+userid+"' required></div></div><div class='form-group row'><label for='api' class='col-sm-3 font-weight-600'>"+display['apikey'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='api' type='text' class='form-control' id='api' placeholder='"+display['apikey'][language]+"' value='"+api+"' required></div></div>");

            }else if(gatewayname==='infobip'){
               $( "#sms_field").html("<div class='form-group row'><label for='host' class='col-sm-3 font-weight-600'>"+display['host'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='host' type='text' class='form-control' id='host' placeholder='"+display['host'][language]+"' value='"+host+"' required></div></div><div class='form-group row'><label for='user' class='col-sm-3 font-weight-600'>"+display['username'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='user' type='text' class='form-control' id='user' placeholder='"+display['username'][language]+"' value='"+user+"' required></div></div><div class='form-group row'><label for='password' class='col-sm-3 font-weight-600'>"+display['password'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='password' type='password' class='form-control' id='password' placeholder='"+display['password'][language]+"' value='"+password+"' required></div></div>");

            }else if(gatewayname==='smsrank'){
               $( "#sms_field").html("<div class='form-group row'><label for='host' class='col-sm-3 font-weight-600'>"+display['host'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='host' type='text' class='form-control' id='host' placeholder='"+display['host'][language]+"' value='"+host+"' required></div></div><div class='form-group row'><label for='user' class='col-sm-3 font-weight-600'>"+display['username'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='user' type='text' class='form-control' id='user' placeholder='"+display['username'][language]+"' value='"+user+"' required></div></div><div class='form-group row'><label for='password' class='col-sm-3 font-weight-600'>"+display['password'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='password' type='password' class='form-control' id='password' placeholder='"+display['password'][language]+"' value='"+password+"' required></div></div>");

            }else if(gatewayname==='nexmo'){
               $( "#sms_field").html("<div class='form-group row'><label for='api' class='col-sm-3 font-weight-600'>"+display['apikey'][language]+"<i class='text-danger'>*</i></label><div class='col-sm-9'><input name='api' type='text' class='form-control' id='api' placeholder='"+display['apikey'][language]+"' value='"+api+"' required></div></div><div class='form-group row'><label for='password' class='col-sm-3 font-weight-600'>"+display['app_secret'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='password' type='password' class='form-control' id='password' placeholder='"+display['password'][language]+"' value='"+password+"' required></div></div>");

            }else if(gatewayname==='twilio'){
                $( "#sms_field").html("<h3><a href='https://www.twilio.com'>Twilio</a> Is On Development</h3>"); 

            }
            else{
                $( "#sms_field").html("<h3>Nothing Found</h3>");

            }

        });
    });

    var gatewayname = $("#gatewayname").val();
    if(gatewayname){
        $.getJSON(base_url+'/backend/setting/getemailsmsgateway', function(sms){

            var host     = "";
            var user     = "";
            var userid   = "";
            var api      = "";
            var password = "";

            if(sms.gatewayname=="budgetsms"){
                host    = sms.host;
                user    = sms.user;
                userid  = sms.userid;
                api     = sms.api;
            }
            if(sms.gatewayname=="infobip"){
                host    = sms.host;
                user    = sms.user;
                password= sms.password;
            }
            if(sms.gatewayname=="smsrank"){
                host    = sms.host;
                user    = sms.user;
                password= sms.password;
            }
            if(sms.gatewayname=="nexmo"){
                api     = sms.api;
                password= sms.password;
            }

            if (gatewayname==='budgetsms') {
                $( "#sms_field").html("<div class='form-group row'><label for='host' class='col-sm-3 font-weight-600'>"+display['host'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='host' type='text' class='form-control' id='host' placeholder='"+display['host'][language]+"' value='"+host+"' required></div></div><div class='form-group row'><label for='user' class='col-sm-3 font-weight-600'>"+display['username'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='user' type='text' class='form-control' id='user' placeholder='"+display['username'][language]+"' value='"+user+"' required></div></div><div class='form-group row'><label for='userid' class='col-sm-3 font-weight-600'>"+display['user_id'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='userid' type='text' class='form-control' id='userid' placeholder='"+display['user_id'][language]+"' value='"+userid+"' required></div></div><div class='form-group row'><label for='api' class='col-sm-3 font-weight-600'>"+display['apikey'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='api' type='text' class='form-control' id='api' placeholder='"+display['apikey'][language]+"' value='"+api+"' required></div></div>");

            }else if(gatewayname==='infobip'){
               $( "#sms_field").html("<div class='form-group row'><label for='host' class='col-sm-3 font-weight-600'>"+display['host'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='host' type='text' class='form-control' id='host' placeholder='"+display['host'][language]+"' value='"+host+"' required></div></div><div class='form-group row'><label for='user' class='col-sm-3 font-weight-600'>"+display['username'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='user' type='text' class='form-control' id='user' placeholder='"+display['username'][language]+"' value='"+user+"' required></div></div><div class='form-group row'><label for='password' class='col-sm-3 font-weight-600'>"+display['password'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='password' type='password' class='form-control' id='password' placeholder='"+display['password'][language]+"' value='"+password+"' required></div></div>");

            }else if(gatewayname==='smsrank'){
               $( "#sms_field").html("<div class='form-group row'><label for='host' class='col-sm-3 font-weight-600'>"+display['host'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='host' type='text' class='form-control' id='host' placeholder='"+display['host'][language]+"' value='"+host+"' required></div></div><div class='form-group row'><label for='user' class='col-sm-3 font-weight-600'>"+display['username'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='user' type='text' class='form-control' id='user' placeholder='"+display['username'][language]+"' value='"+user+"' required></div></div><div class='form-group row'><label for='password' class='col-sm-3 font-weight-600'>"+display['password'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='password' type='password' class='form-control' id='password' placeholder='"+display['password'][language]+"' value='"+password+"' required></div></div>");

            }else if(gatewayname==='nexmo'){
               $( "#sms_field").html("<div class='form-group row'><label for='api' class='col-sm-3 font-weight-600'>"+display['apikey'][language]+"<i class='text-danger'>*</i></label><div class='col-sm-9'><input name='api' type='text' class='form-control' id='api' placeholder='"+display['apikey'][language]+"' value='"+api+"' required></div></div><div class='form-group row'><label for='password' class='col-sm-3 font-weight-600'>"+display['app_secret'][language]+" <i class='text-danger'>*</i></label><div class='col-sm-9'><input name='password' type='password' class='form-control' id='password' placeholder='"+display['password'][language]+"' value='"+password+"' required></div></div>");

            }else if(gatewayname==='twilio'){
                $( "#sms_field").html("<h3><a href='https://www.twilio.com'>Twilio</a> Is On Development</h3>"); 

            }
            else{
                $( "#sms_field").html("<h3>Nothing Found</h3>");

            }

        });
    }

}(jQuery));