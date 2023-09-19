/*(function ($) {
"use strict";



}(jQuery));*/
var base_url = $("#base_url").val();

function cancel_upnotification(id) {
    var csrf_token = $('#csrf_token').val();
    var inputdata = {};
        inputdata[csrf_token] = $('#csrf_hash').val();
        inputdata['id'] = id;
    $.ajax({
        type: "POST",
        url: base_url+'/backend/autoupdate/cancel-update-notificaton',
        data: inputdata,
        success: function (t) {
            if(t == 1){

                alert("Successfully Canceled"); 
                location.reload();

            } else {

                alert("Please Try Again!");
                location.reload();
            }
        },
    });
}