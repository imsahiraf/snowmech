(function ($) {
"use strict";
		$.getJSON(base_url+'/customer/ico-wallet/gettokenbuydata', function(apidata){

        $("#coin_qty").on("keyup", function(event) {
            event.preventDefault();
            var price    = apidata.coin_price.rate;
            var symbol   = apidata.coininfo.pair_with;
            var coin_qty = parseFloat($('#coin_qty').val());
            var total    = coin_qty*price;

            if(total>0){
                $("#total").html("<span>" + symbol+" "+ total + "</span>");
            }
            else{
                $("#total").html("<span>" + symbol+" 0.00"+ "</span>");
            }
        });

    });
}(jQuery));