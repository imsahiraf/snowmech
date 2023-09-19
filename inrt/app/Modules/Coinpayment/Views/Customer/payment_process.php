<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">     
        <div class="card mb-4">      
            <div class="card-body">
                <h2><?php echo $title; ?></h2>
                   <?php  if ($deposit->method=='coinpayment')  { ?>
                            
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
                                            <strong><input type="text" id="copyed1" value="<?php echo esc($deposit_data['result']['address']) ?>" readonly="readonly"/></strong>
                                        </div>
                                        <div class="copy_address margin-top-25">
                                            <button  class="btn btn-primary copy1" >Copy Address</button>
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

                        <?php } ?>
                </div>
        </div>
    </div>
</div>
<script src="<?php echo base_url("app/Modules/Coinpayment/Assets/Admin/js/custom.js?v=1.5") ?>" type="text/javascript"></script>