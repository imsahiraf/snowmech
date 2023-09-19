<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('payment_method_setting');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="border_preview">
                            <?php echo form_open('customer/finance/payment-method-update/bitcoin');?>
                                <div class="form-group">
                                    <label class="font-weight-600"><?php echo display('bitcoin_wallet_id');?> <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <input name="wallet_id" type="text" class="form-control" placeholder="Recipient's username" value="<?php echo esc(@$bitcoin->wallet_id);?>">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-success"><?php echo display("update") ?></button>
                                        </div>
                                    </div>
                                </div>
                            <?php echo form_close();?>
                        </div>
                    </div>


                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="border_preview">
                            <?php echo form_open('customer/finance/payment-method-update/payeer');?>
                                <div class="form-group">
                                    <label class="font-weight-600"><?php echo display('payeer_wallet_id');?> <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <input name="wallet_id" type="text" class="form-control" placeholder="Recipient's username" value="<?php echo esc(@$payeer->wallet_id);?>">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-success"><?php echo display("update") ?></button>
                                        </div>
                                    </div>
                                </div>
                            <?php echo form_close();?>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="border_preview">
                            <?php echo form_open('customer/finance/payment-method-update/paypal');?>
                                <div class="form-group">
                                    <label class="font-weight-600"><?php echo display('paypal');?> <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <input name="wallet_id" type="text" class="form-control" placeholder="Recipient's username" value="<?php echo esc(@$paypal->wallet_id);?>">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-success"><?php echo display("update") ?></button>
                                        </div>
                                    </div>
                                </div>
                            <?php echo form_close();?>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="border_preview">
                            <?php echo form_open('customer/finance/payment-method-update/stripe');?>
                                <div class="form-group">
                                    <label class="font-weight-600"><?php echo display('stripe');?> <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <input name="wallet_id" type="text" class="form-control" placeholder="Recipient's username" value="<?php echo esc(@$stripe->wallet_id);?>">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-success"><?php echo display("update") ?></button>
                                        </div>
                                    </div>
                                </div>
                            <?php echo form_close();?>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="border_preview">
                            <?php echo form_open('customer/finance/payment-method-update/phone');?>
                                <div class="form-group">
                                    <label class="font-weight-600"><?php echo display('mobile');?> <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <input name="wallet_id" type="text" class="form-control" placeholder="Recipient's username" value="<?php echo esc(@$phone->wallet_id);?>">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-success"><?php echo display("update") ?></button>
                                        </div>
                                    </div>
                                </div>
                            <?php echo form_close();?>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div> <!-- /.row -->