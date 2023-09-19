<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('withdraw'); ?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                           <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("customer/finance/withdraw-list") ?>"><i class="fa fa-list" aria-hidden="true"></i> <?php echo display('withdraw_list') ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <?php echo form_open('customer/finance/withdraw',array('name'=>'withdraw','id'=>'withdraw'));?>

                            <div class="form-group row">
                                <label for="withdrawamount" class="col-sm-4 font-weight-600"><?php echo display('amount');?>(<?php echo esc($coininfo->pair_with); ?>)<i class="text-danger">*</i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" name="amount" step="any" min="0" type="number" id="withdrawamount">
                                    <span class="text-danger"><?php if(isset($errorsList['amount'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['amount']; } ?></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="changed" class="col-sm-4 font-weight-600"></label>
                                <div class="col-sm-8">
                                    <span id="fee" class="text-success"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="p_name" class="col-sm-4 font-weight-600"><?php echo display('payment_method');?><i class="text-danger">*</i></label>
                                <div class="col-sm-8">
                                    <select class="form-control basic-single" name="method" id="payment_method">
                                        <option><?php echo display('payment_method')?></option>
                                        <?php foreach ($payment_gateway as $key => $value) {  ?>
                                        <option value="<?php echo esc($value->identity); ?>"><?php echo esc($value->agent); ?></option>
                                        <?php } ?>
                                    </select>
                                    <span class="text-danger"><?php if(isset($errorsList['method'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['method']; } ?></span>
                                </div>
                            </div>
                            <div id="coinwallet" class="form-group row"></div>
                            <div class="form-group row">
                                <label for="changed" class="col-sm-4 font-weight-600"></label>
                                <div class="col-sm-8">
                                    <span id="walletidis" class="text-success"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 font-weight-600"><?php echo display('otp_send_to')?></label>
                                <div class="col-sm-8 d-flex  mt-10">
                                    <div class="radio radio-info radio-inline">
                                        <input type="radio" id="inlineRadio1" value="1" name="varify_media" checked="">
                                        <label for="inlineRadio1"> <?php echo display('sms')?> </label>
                                    </div>
                                    <div class="radio radio-inline">
                                        <input type="radio" id="inlineRadio2" value="2" name="varify_media">
                                        <label for="inlineRadio2"> <?php echo display('email')?> </label>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="walletid" value="">

                            <div class="row m-b-15">
                                <label class="col-sm-4 font-weight-600">&nbsp;</label>
                                <div class="col-sm-8">
                                    <button type="submit" disabled class="btn btn-success w-md m-b-5"><?php echo display('withdraw');?></button>
                                    <a href="<?php echo base_url('customer/home');?>" class="btn btn-danger w-md m-b-5"><?php echo display('cancel')?></a>
                                </div>
                            </div>
                            <input type="hidden" name="level" value="withdraw">
                        <?php echo form_close();?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo base_url('app/Modules/Finance/Assets/Customer/js/custom.js?v=2.2') ?>"></script>