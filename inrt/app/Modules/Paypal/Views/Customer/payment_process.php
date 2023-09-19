<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">     
        <div class="card mb-4">      
            <div class="card-body">
                <h2><?php echo $title; ?></h2>
                   <?php if ($deposit->method=='paypal')  { ?>
                        <table class="table table-bordered">
                                <tr>
                                    <th><?php echo display("user_id") ?></th>
                                    <td class="text-right"><?php echo esc($deposit->user_id) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("payment_gateway") ?></th>
                                    <td class="text-right"><?php echo esc($deposit->method) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("amount") ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc($deposit->amount) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("fees") ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc(@$deposit->fees_amount) ?></td>
                                </tr>
                                <tr>
                                    <th>Total</th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)$deposit->amount)+esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                            </table>
                        <a class="btn btn-success w-md m-b-5 text-right" href="<?php echo $deposit_data['approval_url'] ?>">Payment Process</a>
                        <a href="<?php echo base_url('customer/finance/deposit'); ?>" class="btn btn-primary  w-md m-b-5"><?php echo display("cancel") ?></a>
                                
                        <?php } ?>
                </div>
        </div>
    </div>
</div>
