<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
           
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('deposit');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="border_preview">

                        <?php if ($deposit->method=='bitcoin') { ?>      

                           
     <!-- JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" crossorigin="anonymous"></script>
    <script src="<?php echo base_url("/gourl/js/support.min.js"); ?>" crossorigin="anonymous"></script> 

<?php
     
    // Display payment box  
    echo $deposit_data['box']->display_cryptobox_bootstrap(esc($deposit_data['coins']), esc($deposit_data['def_coin']), esc($deposit_data['def_language']), esc($deposit_data['custom_text']), esc($deposit_data['coinImageSize']), esc($deposit_data['qrcodeSize']), esc($deposit_data['show_languages']), esc($deposit_data['logoimg_path']), esc($deposit_data['resultimg_path']), esc($deposit_data['resultimgSize']), esc($deposit_data['redirect']), esc($deposit_data['method']), esc($deposit_data['debug']));

?>




                        <?php } elseif ($deposit->method=='payeer') { ?>
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
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                                <tr>
                                    <th>Total</th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->amount)+esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                            </table>
                            <form method="post" action="https://payeer.com/merchant/">
                            <input type="hidden" name="m_shop" value="<?php echo esc($deposit_data['m_shop']) ?>">
                            <input type="hidden" name="m_orderid" value="<?php echo esc($deposit_data['m_orderid']) ?>">
                            <input type="hidden" name="m_amount" value="<?php echo esc($deposit_data['m_amount']) ?>">
                            <input type="hidden" name="m_curr" value="<?php echo esc($deposit_data['m_curr']) ?>">
                            <input type="hidden" name="m_desc" value="<?php echo esc($deposit_data['m_desc']) ?>">
                            <input type="hidden" name="m_sign" value="<?php echo esc($deposit_data['sign']) ?>">
                           
                            <input type="submit" name="m_process" value="Payment Process" class="btn btn-success w-md m-b-5" />

                            <a href="<?php echo base_url('customer/finance/deposit'); ?>" class="btn btn-primary  w-md m-b-5"><?php echo display("cancel") ?></a>
                            
                            <br>
                            <br>
                            <br>
                            </form>

                        <?php } elseif ($deposit->method=='paypal')  { ?>

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
                        <?php } elseif ($deposit->method=='coinpayment')  { ?>
                            
                                    <strong>Important</strong></br>
                                    <ul>
                                        <li>
                                        Send Only <strong><?php echo esc($deposit->currency_symbol);?></strong>
                                        deposit address. Sending any other coin or token to this address may result in the loss of your deposit.</li>
                                    </ul>
                                    <br>
                                    <center>
                                    <div class="diposit-address margin-top-25">
                                        <div class="label">
                                            <?php echo esc($deposit->currency_symbol);?> Deposit Address.
                                        </div>
                                        <div class="dip_address">
                                            <strong><input type="text" id="copyed" value="<?php echo esc($deposit_data['result']['address']) ?>" readonly="readonly"/></strong>
                                        </div>
                                        <div class="copy_address margin-top-10">
                                            <button  class="btn btn-primary" onclick="copyFunction()">Copy Address</button>
                                        </div>
                                        <div class="diposit-qrcode margin-top-25">
                                            <div class="qrcode">
                                                <img src="<?php echo esc($deposit_data['result']['qrcode_url']) ?>" />
                                            </div>
                                        </div>
                                        <div class="deposit-balance margin-top-5">
                                            <h2 class="font-family-inherit"><?php echo number_format(esc($deposit->amount)+esc((float)@$deposit->fees_amount),8)." <span style='font-weight:normal'>".esc($deposit->currency_symbol); ?></span></h2>
                                        </div>
                                    </div>
                                    </center>

                                    <div class="please-note margin-top-10">
                                        <div class="label_note">
                                            Please Note
                                        </div>
                                        <div class="textnote">
                                            <ul>
                                                <li>Coins will be deposited immediately after <font color="#03a9f4"><?php echo esc($deposit_data['result']['confirms_needed']);?></font> network confirmations</li>
                                                <li>You can track its progress on the <a target="_blank" href="<?php echo $deposit_data['result']['status_url'];?>">history</a>  page</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="please-note margin-top-10">
                                        <div class="label_note">
                                            <a href="<?php echo base_url('customer/finance/deposit')?>"><button type="button" class="btn btn-success">Back</button></a>
                                        </div>
                                    </div>

                        <?php } elseif ($deposit->method=='stripe')  { ?>
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
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display('total'); ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->amount)+esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                            </table>

                            <?php echo form_open('customer/finance/payment_callback/stripe_confirm', 'method="post" '); ?>
                            <script src="https://checkout.stripe.com/checkout.js" class="stripe-button" data-key="<?php echo esc($deposit_data['stripe']['publishable_key']); ?>" data-description="<?php echo esc($deposit_data['description']) ?>" data-amount="<?php $total = $deposit->amount+$deposit->fees_amount; echo round(esc($total)*100) ?>" data-locale="auto">
                            </script>
                            <?php echo form_close();?>


                        <?php } elseif ($deposit->method=='phone')  { ?>
                            <table class="table table-bordered">
                                <tr>
                                    <th><?php echo display("user_id") ?></th>
                                    <td class="text-right"><?php echo esc(@$deposit->user_id) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("payment_gateway") ?></th>
                                    <td class="text-right"><?php echo esc(@$deposit->method) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("amount") ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc(@$deposit->amount) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("fees") ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc(@$deposit->fees_amount) ?></td>
                                </tr>
                                <tr>
                                    <th>Total</th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->amount)+esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                            </table>
                                <a class="btn btn-success w-md m-b-5 text-right" href="<?php echo esc($deposit_data['approval_url']) ?>"><?php echo display('payment_process'); ?></a>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 