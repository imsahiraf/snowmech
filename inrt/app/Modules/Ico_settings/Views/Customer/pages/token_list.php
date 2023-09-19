<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo (!empty($title)?esc($title):null) ?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions"></div>
                    </div>
                </div>
            </div>
            <div class="card-body">                
                <?php if (!empty($transaction)) { ?>
                <?php $data = json_decode($transaction->data);  ?>
                <?php if (!empty($data)) { ?>

                <?php foreach ($data as $key => $value) { ?> 
                    <h3 class="text-center">Address:- &nbsp; &nbsp; <?php echo esc($key); ?></h3>
                <table class="table table-bordered table-hover" id="example">
                    <thead>
                        <tr> 
                            <th><?php echo display('sl_no') ?></th>
                            <th><?php echo display('transaction_id'); ?></th>
                            <th><?php echo display('source_address'); ?></th>
                            <th><?php echo display('quantity'); ?></th>
                            <th><?php echo display('rate'); ?></th>
                            <th><?php echo display('price_in'); ?></th>
                            <th><?php echo display('total') ?></th>
                            <th><?php echo display('balance'); ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $sl = 1;
                            $total_balance = 0;
                            
                            foreach ($value as $keys => $values) { 
                                if (!empty($values)) {
                        ?>
                        <tr>
                            <td><?php echo esc($sl++); ?></td>                            
                            <td><?php echo esc($values->id); ?></td>
                            <td><?php echo esc(@$values->source_wallet); ?></td>
                            <td><?php echo esc(@$values->crypto_qty); ?></td>
                            <td><?php echo esc(@$values->crypto_rate); ?></td>
                            <td><?php echo esc(@$values->exchange_currency); ?></td>
                            <td><?php echo esc(@$values->total); ?></td>
                            <td><?php echo esc(@$values->crypto_balance); ?></td>
                        </tr>
                        <?php $total_balance =  @$values->crypto_balance; ?>                        
                        <?php } } ?>
                        <tr>
                            <td colspan="7" class="text-right"><b>Total <?php echo esc($coin_setup->symbol); ?></b></td>
                            <td><b><?php echo esc($total_balance); ?></b></td>
                        </tr>                     
                    </tbody>
                </table>
                <?php  } } } else { ?>
                    <center><h3 class="text-danger">No Data Available</h3></center>
                <?php } ?>

            </div> 
        </div>
    </div>
</div>

 