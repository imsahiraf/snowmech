(function ($) {
"use strict";

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
	$('#deposit_amount').on('keyup',function(){
        Fee();
    });

    function Fee(){

        var amount = document.forms['deposit_form'].elements['deposit_amount'].value;
        var method = document.forms['deposit_form'].elements['method'].value;
        var level = document.forms['deposit_form'].elements['level'].value;
        var csrf_test_name = document.forms['deposit_form'].elements['csrf_test_name'].value;

        if (amount!="" || amount==0) {
            $("#method" ).prop("disabled", false);
        }
        if (amount=="" || amount==0) {
            $('#fee').text("Fees is "+0);
        }
        if (amount!="" && method!=""){
            $.ajax({
                'url': base_url+'/customer/finance/fees-load',
                'type': 'POST', //the way you want to send data to your URL
                'data': {'method': method,'level':level,'amount':amount,'csrf_test_name':csrf_test_name },
                'dataType': "JSON",
                'success': function(data) { 
                    if(data){
                        $('[name="amount"]').val(data.amount);
                        $('[name="fees"]').val(data.fees);
                        $('#fee').text("Fees is "+data.fees);                    
                    } else {
                        alert('Error!');
                    }  
                }
            });
        } 
    }

    $.getJSON(base_url+'/customer/finance/getdepositgatewaydata', function(apidata){
    
        $("#method").on("change", function(event) {
            event.preventDefault();
            var method = $("#method").val()|| 0;

            if(method==""){
                $('#deposit_button').prop('disabled',true);
            }
            else{
                if (method=='phone') {
                    $( ".payment_info").html("<div class='form-group row'><label for='send_money' class='col-sm-5 font-weight-600'>Send Money</label><div class='col-sm-7'><h2><a href='tel:"+apidata.public_key+"'>"+apidata.public_key+"</a></h2></div></div><div class='form-group row'><label for='om_name' class='col-sm-5 font-weight-600'>"+display['om_name'][language]+"</label><div class='col-sm-7'><input name='om_name' class='form-control om_name' type='text' id='om_name' autocomplete='off'></div></div><div class='form-group row'><label for='om_mobile' class='col-sm-5 font-weight-600'>"+display['om_mobile_no'][language]+"</label><div class='col-sm-7'><input name='om_mobile' class='form-control om_mobile' type='text' id='om_mobile' autocomplete='off'></div></div><div class='form-group row'><label for='transaction_no' class='col-sm-5 font-weight-600'>"+display['transaction_no'][language]+"</label><div class='col-sm-7'><input name='transaction_no' class='form-control transaction_no' type='text' id='transaction_no' autocomplete='off'></div></div><div class='form-group row'><label for='idcard_no' class='col-sm-5 font-weight-600'>"+display['idcard_no'][language]+"</label><div class='col-sm-7'><input name='idcard_no' class='form-control idcard_no' type='text' id='idcard_no' autocomplete='off'></div></div>");
                }
                else{
                    $( ".payment_info").html("<div class='form-group row'><label for='comments' class='col-sm-5 font-weight-600'>"+display['comments'][language]+"</label><div class='col-sm-7'><textarea name='comments' class='form-control editor' placeholder='' type='text' id='comments'></textarea></div></div>");
                    $('#deposit_button').prop('disabled',false);
                }
            }
        });
    });

    function ReciverChack(receiver_id){

        var csrf_test_name = document.forms['transfer_form'].elements['csrf_test_name'].value;

        $.ajax({
            url: base_url+'/customer/finance/checke-reciver-id',
            type: 'POST', //the way you want to send data to your URL
            data: {'receiver_id': receiver_id,'csrf_test_name':csrf_test_name },
            success: function(data) { 
                
                if(data!=0){
                    $('#receiver_id').css("border","1px green solid");
                    $('.suc').css("border","1px green solid");
                } else {
                     $('#receiver_id').css("border","1px red solid");
                     $('.suc').css("border","1px red solid");
                }  
            },
        });
    }

    $('#receiver_id').on('keyup click keypress', function(){

        var receiverid = $(this).val();

        $.ajax({
            url: base_url+'/customer/finance/checke-reciver-id',
            type: 'POST', //the way you want to send data to your URL
            data: {'receiver_id': receiverid,'csrf_test_name':csrf_hash},
            success: function(data) { 

                if(data != 0){

                    $('#receiver_id').css("border","1px green solid");
                    $('.suc').addClass("fa-check-circle");
                    $('.suc').addClass("text-success");
                    $('.suc').removeClass("text-danger");
                    $('.suc').removeClass("fa-times-circle");
                    $("button").removeAttr("disabled","disabled");

                } else {

                    $('#receiver_id').css("border","1px red solid");
                    $('.suc').removeClass("fa-check-circle");
                    $('.suc').removeClass("text-success");
                    $('.suc').addClass("text-danger");
                    $('.suc').addClass("fa-times-circle");
                    $("button").attr("disabled","disabled");
                }  
            },
        });
    });

     $('#confirm_transfer_button').on('click',function(){
        transfer();
    });

    function transfer(){

        var code = document.forms['verify'].elements['code'].value;
        var csrf_test_name = document.forms['verify'].elements['csrf_test_name'].value;
        var id   = document.forms['verify'].elements['verify_id'].value;

        swal({
            title: 'Please Wait......',
            type: 'warning',
            showConfirmButton: false,
            onOpen: function () {
                swal.showLoading()
              }
        });

        $.ajax({
            url: base_url+'/customer/finance/transfer-verify',
            type: 'POST', //the way you want to send data to your URL
            data: {'id': id,'code':code,'csrf_test_name':csrf_test_name },
            success: function(data) { 

                if(data != ''){

                    var url      = $(location).attr('href');
                    var segments = url.split( '/' );
                    var tx_id    = segments[7];

                    swal({
                        title: "Good job!",
                        text: "Your Custom Email Send Successfully",
                        type: "success",
                        showConfirmButton: false,
                        timer: 1500,

                    });
                    window.location.href = base_url+"/customer/finance/transfer-details/"+tx_id;

                    
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

    function transferFee(){
        
        var amount = document.forms['transfer_form'].elements['amount'].value;
        var level = document.forms['transfer_form'].elements['level'].value;
        var csrf_test_name = document.forms['transfer_form'].elements['csrf_test_name'].value;

        if (amount=="" || amount==0) {
            $('#fee').text("Fees is "+0);
        }
        if (amount!=""){
            $.ajax({
                'url': base_url+'customer/ajaxload/fees_load',
                'type': 'POST', //the way you want to send data to your URL
                'data': {'level':level,'amount':amount,'csrf_test_name':csrf_test_name },
                'dataType': "JSON",
                'success': function(data) { 
                    if(data){
                        $('#fee').text("Fees is "+data.fees);                    
                    } else {
                        alert('Error!');
                    }  
                }
            });
        } 
    }
$('#withdrawamount').on('keyup',function(){

        withdrawFee();

    });

    function withdrawFee(){
        
        var amount = document.forms['withdraw'].elements['amount'].value;
        var level = document.forms['withdraw'].elements['level'].value;
        var csrf_test_name = document.forms['withdraw'].elements['csrf_test_name'].value;

        if (amount=="" || amount==0) {
            $('#fee').text("Fees is "+0);
        }
        if (amount!=""){
            $.ajax({
                'url': base_url+'/customer/finance/fees-load',
                'type': 'POST', //the way you want to send data to your URL
                'data': {'level':level,'amount':amount,'csrf_test_name':csrf_test_name },
                'dataType': "JSON",
                'success': function(data) { 
                    if(data){
                        $('#fee').text("Fees is "+data.fees);                    
                    } else {
                        alert('Error!');
                    }  
                }
            });
        } 
    }

    $('#payment_method').on('change',function(){

        WalletId($(this).val());

    });

    function WalletId(method){
        
        var csrf_test_name = document.forms['withdraw'].elements['csrf_test_name'].value;

        if (method=='phone') { method = 'phone'; }

        $.ajax({
            url: base_url+'/customer/finance/walletid',
            type: 'POST', //the way you want to send data to your URL
            data: {'method': method,'csrf_test_name':csrf_test_name },
            dataType:'JSON',
            success: function(data) { 
               
                if(data){

                    $('[name="walletid"]').val(data.wallet_id);
                    $('button[type=submit]').prop('disabled', false);
                    $('#walletidis').text('Your Wallet Id Is '+data.wallet_id);
                    $('#coinwallet').html("");
                
                } else {

                    if(method=='coinpayment'){
                        $('button[type=submit]').prop('disabled', false);
                        $('#coinwallet').html("<label class='col-sm-4 font-weight-600' for='amount'>Your Address<i class='text-danger'>*</i></label><div class='col-sm-8'><input class='form-control' name='walet_address' type='text' id='walet_address' required></div>");
                        $('#walletidis').text('');

                    }else{
                        $('#coinwallet').html("");
                        $('button[type=submit]').prop('disabled', true);
                        $('#walletidis').text('Your have no withdrawal account');
                    }
                }  
            }
        });
    }
$('#confirm_withdraw_button').on('click',function(){
        withdraw();
    });

    function withdraw(){
        var id   = document.forms['verify'].elements['verify_id'].value;
        var code = document.forms['verify'].elements['code'].value;
        var csrf_test_name = document.forms['verify'].elements['csrf_test_name'].value;

        swal({
            title: 'Please Wait......',
            type: 'warning',
            showConfirmButton: false,
            onOpen: function () {
                swal.showLoading()
              }
        });

        $.ajax({
            url: base_url+'/customer/finance/withdraw-verify',
            type: 'POST', //the way you want to send data to your URL
            data: {'id': id,'code':code,'csrf_test_name':csrf_test_name },
            success: function(data) {

                if(data!=''){
                    
                    swal({
                        title: "Good job!",
                        text: "Your Custom Email Send Successfully",
                        type: "success",
                        showConfirmButton: false,
                        timer: 1500,

                    });

                   window.location.href = base_url+"/customer/finance/withdraw-details/"+data;
                    
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