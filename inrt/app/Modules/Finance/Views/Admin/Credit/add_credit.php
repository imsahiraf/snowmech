<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                            <a href="#" class="action-item"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body"> 
                <?php echo form_open('backend/credit/add_credit','class="form-inner"') ?>
                    <div class="form-group row">
                        <label for="user_id" class="col-sm-3 col-form-label font-weight-600"><?php echo display('user_id') ?> <i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <input name="user_id"  type="text" class="form-control <?php if(isset($errorsList['user_id'])){echo "common_error_border"; } ?>" id="user_id" placeholder="<?php echo display('user_id') ?>" >
                            <span class="text-danger"><?php if(isset($errorsList['user_id'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['user_id']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="amount" class="col-sm-3 col-form-label font-weight-600"><?php echo display('amount') ?> <i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <input name="amount" type="text" class="form-control <?php if(isset($errorsList['amount'])){echo "common_error_border"; } ?>" id="amount" placeholder="<?php echo display('amount') ?>">
                            <span class="text-danger"><?php if(isset($errorsList['amount'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['amount']; } ?></span>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="notes" class="col-sm-3 col-form-label font-weight-600"><?php echo display('notes') ?> <i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <textarea name="note" class="form-control <?php if(isset($errorsList['note'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('note') ?>"  rows="4"></textarea>
                            <span class="text-danger"><?php if(isset($errorsList['note'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['note']; } ?></span>
                        </div>
                    </div>  
                    
                    <div class="form-group  row">
                        <label for="notes" class="col-sm-3 col-form-label"></label>
                        <div class="col-sm-7">
                            <a href="<?php echo base_url('backend/credit/credit_list'); ?>" class="btn btn-primary w-md m-b-5"><?php echo display("cancel") ?></a>
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('send') ?></button>
                        </div>
                    </div>

                <?php echo form_close() ?>
            </div> 
        </div>
    </div>
</div>

<!-- Third Party Scripts(used by this page)-->
<script src="<?php echo BASEPATH.'/assets/plugins/select2/dist/js/select2.min.js' ?>"></script>
<script src="<?php echo BASEPATH.'/assets/dist/js/pages/demo.select2.js' ?>"></script>
<!-- Third Party Scripts(used by this page)-->







 