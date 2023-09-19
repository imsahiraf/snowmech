(function ($) {
"use strict";
	
    
    $("#verify_type").on("change", function(event) {
        event.preventDefault();
        var verify_type = $("#verify_type").val();

        if (verify_type == 'passport') {

            $("#verify_field").html("<div class='form-group row'><label for='document1' class='col-md-4 font-weight-600'>Passport Cover(MAX 2MB) <span><i class='text-danger'>*</i></span></label><div class='col-md-8'><input name='document1' type='file' class='form-control' id='document1' required><span class='text-danger'>JPG,JPEG and PNG only</span></div></div><div class='form-group row'><label for='document2' class='col-md-4 font-weight-600'>Passport Inner(MAX 2MB) <span><i class='text-danger'>*</i></span></label><div class='col-md-8'><input name='document2' type='file' class='form-control' id='document2' required><span class='text-danger'>JPG,JPEG and PNG only</span></div></div>");

        }else if (verify_type == 'driving_license') {
            $("#verify_field").html("<div class='form-group row'><label for='document1' class='col-md-4 font-weight-600'>Driving License(MAX 2MB) <span><i class='text-danger'>*</i></span></label><div class='col-md-8'><input name='document1' type='file' class='form-control' id='document1' required><span class='text-danger'>JPG,JPEG and PNG only</span></div></div>");
            
        }else if (verify_type == 'nid') {
            $("#verify_field").html("<div class='form-group row'><label for='document1' class='col-md-4 font-weight-600'>NID With selfie(MAX 2MB) <span><i class='text-danger'>*</i></span></label><div class='col-md-8'><input name='document1' type='file' class='form-control' id='document1' required><span class='text-danger'>JPG,JPEG and PNG only</span></div></div>");
            
        }else{
            $("#verify_field").html();

        }
    });
   
    $('#profile_update_confirm').on('click',function(){
        sendEmail();
    });

    function sendEmail(){

        var code            = document.forms['verify'].elements['code'].value;
        var id              = document.forms['verify'].elements['profile_id'].value;
        var csrf_test_name  = document.forms['verify'].elements['csrf_test_name'].value;
        
        swal({
            title: 'Please Wait......',
            type: 'warning',
            showConfirmButton: false,
            onOpen: function () {
                swal.showLoading()
              }
        });

        $.ajax({
            url: base_url+'/customer/account/profileupdate',
            type: 'POST', //the way you want to send data to your URL
            data: {'id': id,'code':code,'csrf_test_name':csrf_test_name },
            success: function(data) { 

                if(data==1){

                    swal({
                        title: "Good job!",
                        text: "Your Custom Email Send Successfully",
                        type: "success",
                        showConfirmButton: false,
                        timer: 1500,

                    });
                    window.location.href = base_url+"/customer/account/profile";

                    
                } else {

                    swal({
                        title: "Wops!",
                        text: "Error Message",
                        type: "error",
                        showConfirmButton: false,
                        timer: 1500
                    });
                }
                
            }
        });
    }
}(jQuery));