<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo (!empty($title)?esc($title):null) ?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                            <a href="#" class="action-item"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="border_preview">

                <?php echo form_open_multipart("customer/account/change-save") ?>
  
                    <div class="row">

                        <div class="form-group col-lg-12">
                            <label><?php echo display("enter_old_password") ?> <span class="text-danger">*</span></label>
                            <input type="password" class="form-control <?php if(isset($errorsList['old_pass'])){echo "common_error_border"; } ?>" value="<?php echo (isset($set_old->old_pass)?esc($set_old->old_pass):'');?>" name="old_pass" placeholder="<?php echo display("enter_old_password") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['old_pass'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['old_pass']; } ?></span>
                        </div>

                        <div class="form-group col-lg-12">
                            <label><?php echo display("enter_new_password") ?> <span class="text-danger">*</span></label>
                            <input type="password"  class="form-control <?php if(isset($errorsList['new_pass'])){echo "common_error_border"; } ?>" value="<?php echo (isset($set_old->new_pass)?esc($set_old->new_pass):'');?>" name="new_pass" placeholder="<?php echo display("enter_new_password") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['new_pass'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['new_pass']; } ?></span>
                        </div>

                        <div class="form-group col-lg-12">
                            <label><?php echo display("enter_confirm_password") ?> <span class="text-danger">*</span></label>
                            <input type="password"  class="form-control <?php if(isset($errorsList['confirm_pass'])){echo "common_error_border"; } ?>" name="confirm_pass" value="<?php echo (isset($set_old->confirm_pass)?esc($set_old->confirm_pass):'');?>" placeholder="<?php echo display("enter_confirm_password") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['confirm_pass'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['confirm_pass']; } ?></span>
                        </div>

                        
                    </div> 

                    <div>
                        <button type="submit" class="btn btn-success"><?php echo display("change") ?></button>
                    </div>
                <?php echo form_close() ?>
            </div>

            </div>
        </div>
    </div>
</div>

 