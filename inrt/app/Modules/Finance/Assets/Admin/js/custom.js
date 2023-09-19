(function ($) {
"use strict";
var base_url = $('#base_url').val();
$(".AjaxModal").on('click',function(){

      var url  = $(this).attr("href");
      var href = url.split("#");
      jquery_ajax(href[1]);

    });
    
    function jquery_ajax(id) {
       $.ajax({
            url : base_url+"/backend/finance/user-info-load/"+id,
            type: "GET",
            data: {'id':id},
            dataType: "JSON",
            success: function(data)
            {

                $('#name').text(data.first_name+' '+data.last_name);
                $('#email').text(data.email);
                $('#phone').text(data.phone);
                $('#user_id').text(data.user_id);
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error get data from ajax');
            }
        });
    }

}(jQuery));