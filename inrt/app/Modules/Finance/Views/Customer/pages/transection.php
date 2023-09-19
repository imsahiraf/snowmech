<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('transection');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                        <thead>
                            <tr>
                            <th><?php echo display('type');?></th>
                            <th><?php echo display('amount');?> (<?php echo esc($coin_setup->pair_with);?>)</th>
                            <th><?php echo display('fees');?> (<?php echo esc($coin_setup->pair_with);?>)</th>
                            <th><?php echo display('total');?></th>
                            </tr>
                        </thead>

                        <tbody>

                            <tr>

                                <th><?php echo $deposit_amount->transaction_type?esc($deposit_amount->transaction_type):'DEPOSIT' ?></th>
                                <td><?php echo esc(number_format(esc($deposit_amount->transaction_amount),5)) ?></td>
                                <td><?php echo esc(number_format(esc($deposit_amount_fees->transaction_fees),5)) ?></td>
                                <td><?php echo esc(number_format(esc($deposit_amount->transaction_amount),5)) ?></td>
                            </tr>

                            <tr>
                                <th><?php echo $credited_amount->transaction_type?esc($credited_amount->transaction_type):'CREDITED' ?></th>
                                <td><?php echo number_format(esc($credited_amount->transaction_amount),5) ?></td>
                                <td><?php echo number_format(esc($credited_amount_fees->transaction_fees),5) ?></td>
                                <td><?php echo number_format(esc($credited_amount->transaction_amount)+esc($credited_amount_fees->transaction_fees),5) ?></td>
                            </tr>
                            <tr>
                                <th><?php echo @$return_amount->transaction_type?esc(@$return_amount->transaction_type):'ADJUSTMENT' ?></th>
                                <td><?php echo number_format(esc(@$return_amount->transaction_amount)+esc($return_fees->transaction_fees),5); ?></td>
                                <td>0.00000</td>
                                <td><?php echo number_format(esc(@$return_amount->transaction_amount+$return_fees->transaction_fees),5); ?></td>
                            </tr>


                            <tr>
                                <th><?php echo display('referral')?></th>
                                <td><?php echo number_format(esc($referral_amount->amount),5) ?></td>
                                <td>0.00000</td>
                                <td><?php echo number_format(esc($referral_amount->amount),5) ?></td>
                            </tr>


                            <tr>
                                <td colspan="3" class="text-success text-center"><?php echo display('total');?> = </td>
                                <td><?php echo esc($coin_setup->pair_with);?> <?php echo (esc($deposit_amount->transaction_amount)+esc($exchange_cancel_amount->transaction_amount)+esc($exchange_cancel_amount_fees->transaction_fees)+esc($recevied_amount->transaction_amount)+esc($sell_amount->transaction_amount)+esc($roi_amount->amount)+esc($credited_amount->transaction_amount)+esc($return_amount->transaction_amount)+esc($return_fees->transaction_fees)+esc($referral_amount->amount))-(esc($sell_amount_fees->transaction_fees)+esc($credited_amount_fees->transaction_fees)); ?></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th><?php echo display('type');?></th>
                                <th><?php echo display('amount');?></th>
                                <th><?php echo display('fees');?></th>
                                <th><?php echo display('total');?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><?php echo $transfer_amount->transaction_type?esc($transfer_amount->transaction_type):'TRANSFER' ?></th>
                                <td><?php echo esc($transfer_amount->transaction_amount) ?></td>
                                <td><?php echo esc($transfer_amount_fees->transaction_fees) ?></td>
                                <td><?php echo esc($transfer_amount->transaction_amount)+esc($transfer_amount_fees->transaction_fees) ?></td>
                            </tr>

                            <tr>
                                <th><?php echo $withdraw_amount->transaction_type?esc($withdraw_amount->transaction_type):'WITHDRAW' ?></th>
                                <td><?php echo esc($withdraw_amount->transaction_amount) ?></td>
                                <td><?php echo esc($withdraw_amount_fees->transaction_fees) ?></td>
                                <td><?php echo esc($withdraw_amount->transaction_amount)+esc($withdraw_amount_fees->transaction_fees) ?></td>
                            </tr>

                         
                            <tr>
                                <td colspan="3" class="text-danger text-center"><?php echo display('total');?> = </td>
                                <td><?php echo esc($coin_setup->pair_with);?> <?php echo esc($transfer_amount->transaction_amount)+esc($transfer_amount_fees->transaction_fees)+esc($withdraw_amount->transaction_amount)+esc($withdraw_amount_fees->transaction_fees)+esc($buy_amount->transaction_amount)+esc($buy_amount_fees->transaction_fees)+esc($invest_amount->transaction_amount) ?></td>
                            </tr>
                            <tr >
                                <th colspan="4" class="text-success text-center"><?php echo display('your_total_balance_is');?> = <?php echo esc($coin_setup->pair_with);?> <?php echo (esc($deposit_amount->transaction_amount)+esc($exchange_cancel_amount->transaction_amount)+esc($exchange_cancel_amount_fees->transaction_fees)+esc($recevied_amount->transaction_amount)+esc($sell_amount->transaction_amount)+esc($roi_amount->amount)+esc($credited_amount->transaction_amount)+esc($return_amount->transaction_amount)+esc($return_fees->transaction_fees)+esc($referral_amount->amount))-(esc($transfer_amount->transaction_amount)+esc($transfer_amount_fees->transaction_fees)+esc($withdraw_amount->transaction_amount)+esc($withdraw_amount_fees->transaction_fees)+esc($buy_amount->transaction_amount)+esc($buy_amount_fees->transaction_fees)+esc($invest_amount->transaction_amount)+esc($sell_amount_fees->transaction_fees)+esc($credited_amount_fees->transaction_fees)) ?></th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row mt-4">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('transection');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="border_preview">

                    <div class="table-responsive">
                        <table class="table table-striped table-hover table-bordered datatable2">
                            <thead>
                                <tr>
                                    <th><?php echo display('date');?></th>
                                    <th><?php echo display('transection_category');?></th>
                                    <th><?php echo display('balance');?>(<?php echo esc($coin_setup->pair_with);?>)</th>
                                    <th><?php echo display('fees');?>(<?php echo esc($coin_setup->pair_with);?>)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if($transection!=NULL){ 
                                    foreach ($transection as $key => $value) {  
                                ?>
                                <tr>
                                    <td><?php echo esc($value->date);?></td>
                                    <td><?php echo esc($value->transaction_type);?></td>
                                    <td><?php echo esc($value->transaction_amount);?></td>
                                    <td><?php echo esc($value->transaction_fees);?></td>
                                </tr>
                                <?php } } ?>

                            </tbody>
                        </table>
                        <?php echo htmlspecialchars_decode($pager); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>