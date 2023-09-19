(function ($) {
"use strict";
var base_url = $("#base_url").val();
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

}(jQuery));