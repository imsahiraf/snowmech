<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('transfer');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                          <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("customer/finance/transfer-list") ?>"><i class="fa fa-list" aria-hidden="true"></i><?php echo display('transfer_list'); ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <?php echo form_open('customer/finance/transfer-store',array('name'=>'transfer_form', 'id'=>'transfer_form'));?>
                        <div class="border_preview">
                            <div class="form-group row">
                                <label for="receiver_id" class="col-sm-4 col-form-label"><?php echo display('reciver_account')?><i class="text-danger">*</i></label>
                                <div class="col-sm-8 d-flex">
                                    <input class="form-control" name="receiver_id" type="text" id="receiver_id" placeholder="<?php echo display('user_id')?>">
                                    <span class="pl-2"><i title="Success" class="fas fa-check-circle mr-2 fs-20 text-success suc"></i></span>
                                </div>
                                <div class="col-sm-4"></div>
                                <div class="col-sm-8">
                                    <span class="text-danger"><?php if(isset($errorsList['receiver_id'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['receiver_id']; } ?></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="amount" class="col-sm-4 col-form-label"><?php echo display('amount')?>(<?php echo esc($coininfo->pair_with);?>)<i class="text-danger">*</i></label>
                                <div class="col-sm-8">
                                    <input class="form-control" step="any" min="0" name="amount" type="number" id="amount">
                                    <span class="text-danger"><?php if(isset($errorsList['amount'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['amount']; } ?></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="changed" class="col-sm-4 col-form-label"></label>
                                <div class="col-sm-8">
                                    <span id="fee" class="text-success"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="comments" class="col-sm-4 col-form-label"><?php echo display('comment')?></label>
                                <div class="col-sm-8">
                                    <textarea class="form-control" name="comments" id="comments" rows="3"></textarea>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label"><?php echo display('otp_send_to')?></label>
                                <div class="col-sm-8 d-flex mt-10">
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
                            
                            <div class="row m-b-15">
                                <label class="col-sm-4 col-form-label">&nbsp;</label>
                                <div class="col-sm-8">
                                    <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('transfer')?></button>
                                    <a href="<?php echo base_url('customer/home');?>" class="btn btn-danger w-md m-b-5"><?php echo display('cancel')?></a>
                                </div>
                            </div>
                        </div>
                            <input type="hidden" name="level" value="transfer">
                        <?php echo form_close();?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo base_url('app/Modules/Finance/Assets/Customer/js/custom.js?v=1.8') ?>"></script>