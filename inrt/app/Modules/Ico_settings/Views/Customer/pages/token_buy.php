<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('token_buy');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                            <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("customer/ico-wallet/token-list") ?>"><i class="fa fa-list" aria-hidden="true"></i><?php echo display('token_list');?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <div class="border_preview">
                            <?php echo form_open('customer/ico-wallet/token-buy', array('name'=>'token_buy'));?>
                            <div class="form-group row">
                                <label for="coin_qty" class="col-sm-4 font-weight-600"><?php echo display('buy_qty'); ?><i class="text-danger"> *</i></label>
                                <div class="col-sm-8">
                                    <input class="form-control <?php if(isset($errorsList['coin_qty'])){echo "common_error_border"; } ?>" name="coin_qty" type="text" id="coin_qty" autocomplete="off" required>
                                    <span class="text-danger"><?php if(isset($errorsList['coin_qty'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['coin_qty']; } ?></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="rate" class="col-sm-4 font-weight-600"><?php echo display('rate'); ?></label>
                                <div class="col-sm-8">
                                    <span id="rate"><?php echo @$coin_price->rate==''?(esc(@$coininfo->pair_with).' 0.00'):esc(@$coininfo->pair_with).'&nbsp;'.esc(@$coin_price->rate) ?></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="total" class="col-sm-4 font-weight-600"><?php echo display('total');?></label>
                                <div class="col-sm-8" id="total">
                                    <span id="total"><?php echo esc(@$coininfo->pair_with);?> 0.00</span>
                                </div>
                            </div>

                            <div class="row m-b-15">
                                <label for="" class="col-sm-4 font-weight-600">&nbsp;</label>
                                <div class="col-sm-8">
                                    <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('buy_token'); ?></button>
                                    <a href="<?php echo base_url('customer/dashboard');?>" class="btn btn-danger w-md m-b-5"><?php echo display('cancel')?></a>
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
<script src="<?php echo base_url('app/Modules/Ico_settings/Assets/Customer/js/custom.js?v=1.9') ?>"></script>