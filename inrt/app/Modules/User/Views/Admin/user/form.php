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
        <?php echo form_open_multipart(base_url("backend/users/user_info/$user->id")) ?>
        <?php echo form_hidden('id', $user->id) ?>
        <?php echo form_hidden('user_id', $user->user_id) ?>
            <div class="row">
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("firstname") ?> <span class="text-danger">*</span></label>
                    <input type="text" value="<?php echo esc($user->first_name) ?>" class="form-control <?php if(isset($errorsList['first_name'])){echo "common_error_border"; } ?>" name="first_name" placeholder="<?php echo display("firstname") ?>">
                    <span class="text-danger"><?php if(isset($errorsList['first_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['first_name']; } ?></span>
                </div>
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("lastname") ?></label>
                    <input type="text" value="<?php echo esc($user->last_name) ?>" class="form-control" name="last_name" placeholder="<?php echo display("lastname") ?>">
                </div>
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("referral_id") ?></label>
                    <input type="text" value="<?php echo esc($user->referral_id) ?>" class="form-control" <?php echo $user->id?'disabled':'' ?> name="referral_id" placeholder="<?php echo display("sponsor_name") ?>">
                </div>                        
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("email") ?> <span class="text-danger">*</span></label>
                    <input type="text" value="<?php echo esc($user->email) ?>" class="form-control <?php if(isset($errorsList['email'])){echo "common_error_border"; } ?>" name="email" placeholder="<?php echo display("email") ?>">
                    <span class="text-danger"><?php if(isset($errorsList['email'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['email']; } ?></span>
                </div>
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("password") ?>
                    <?php if(empty($user->id)) { ?>
                        <span class="text-danger">*</span>
                    <?php } ?>

                 </label>
                    <input type="password" value="" class="form-control <?php if(isset($errorsList['password'])){echo "common_error_border"; } ?>" name="password" placeholder="<?php echo display("password") ?>">
                    <span class="text-danger"><?php if(isset($errorsList['password'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['password']; } ?></span>
                </div>
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("mobile") ?> <span class="text-danger">*</span></label>
                    <input type="number" value="<?php echo esc($user->phone) ?>" id="mobile" class="form-control <?php if(isset($errorsList['mobile'])){echo "common_error_border"; } ?>" name="mobile" placeholder="<?php echo display("mobile") ?>">
                    <span class="text-danger"><?php if(isset($errorsList['mobile'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['mobile']; } ?></span>
                </div>
                <div class="form-group col-lg-6">
                    <label class="font-weight-600"><?php echo display("conf_password") ?> 
                    <?php if(empty($user->id)) { ?>
                        <span class="text-danger">*</span>
                    <?php } ?>
                    </label>
                    <input type="password" value="" class="form-control <?php if(isset($errorsList['conf_password'])){echo "common_error_border"; } ?>" name="conf_password" placeholder="<?php echo display("conf_password") ?>">
                    <span class="text-danger"><?php if(isset($errorsList['conf_password'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['conf_password']; } ?></span>
                </div>

                <div class="form-group col-lg-6">
                    <label class="font-weight-600" for="status">Status <span class="text-danger">*</span></label>
                    <div class="col-sm-8">
                        <label class="radio-inline">
                            <?php echo form_radio('status', '1', (($user->status==1 || $user->status==null)?true:false)); ?><?php echo display('active') ?>
                        </label>
                        <label class="radio-inline">
                            <?php echo form_radio('status', '0', (($user->status=="0")?true:false) ); ?><?php echo display('inactive') ?>
                        </label> 
                    </div>
                </div>
            </div> 
            <div>
                <a href="<?php echo base_url('admin'); ?>" class="btn btn-primary"><?php echo display("cancel") ?></a>
                <button type="submit" class="btn btn-success">
                    <?php echo $user->id?display("update"):display("register") ?>
                </button>
            </div>
        <?php echo form_close() ?>
    </div>
</div>