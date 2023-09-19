<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('deposit');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                           <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("customer/finance/deposit-list") ?>"><i class="fa fa-list" aria-hidden="true"></i> <?php echo display('deposit_list') ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">

                        <div class="border_preview">
                            <?php echo form_open('customer/finance/payment_gateway', array('name'=>'deposit_form', 'id'=>'deposit_form'));?>

                                <div class="form-group row">
                                    <label for="p_name" class="col-sm-5 font-weight-600"><?php echo display('deposit_amount');?>(<?php echo esc($coin_setup->pair_with); ?>)<i class="text-danger">*</i></label>
                                    <div class="col-sm-7">
                                        <input class="form-control" name="deposit_amount" step="any" min="0" type="number" id="deposit_amount" autocomplete="off" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="method" class="col-sm-5 font-weight-600"><?php echo display('deposit_method');?><i class="text-danger">*</i></label>
                                    <div class="col-sm-7">
                                        <select class="form-control basic-single" name="method" id="method" required disabled>
                                            <option><?php echo display('deposit_method');?></option>
                                            <?php foreach ($payment_gateway as $key => $value) { ?>
                                            <option value="<?php echo esc($value->identity); ?>"><?php echo esc($value->agent); ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="changed" class="col-sm-5 font-weight-600"></label>
                                    <div class="col-sm-7">
                                        <span id="fee" class="text-success"></span>
                                    </div>
                                </div>

                                <span class="payment_info">
                                <div class="form-group row">
                                    <label for="comments" class="col-sm-5 font-weight-600"><?php echo display('comments');?></label>
                                    <div class="col-sm-7">
                                        <textarea class="form-control" name="comments" id="comment" rows="3"></textarea>
                                    </div>
                                </div>
                                </span>

                                <div class="row m-b-15">
                                    <label for="" class="col-sm-5 font-weight-600">&nbsp;</label>
                                    <div class="col-sm-7">
                                        <button id="deposit_button" type="submit" class="btn btn-success w-md m-b-5"><?php echo display('deposit');?></button>
                                        <a href="<?php echo base_url('customer/dashboard');?>" class="btn btn-danger w-md m-b-5"><?php echo display('cancel')?></a>
                                    </div>
                                </div>

                                <input type="hidden" name="level" value="deposit">
                                <input type="hidden" name="fees" value="">

                                <?php echo form_close();?>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- /.row -->
<script src="<?php echo base_url('app/Modules/Finance/Assets/Customer/js/custom.js?v=1.10') ?>"></script>