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

                <?php echo form_open_multipart("customer/account/update-profile") ?>
                <?php echo form_hidden('uid', esc($profile->id)) ?>
  
                    <div class="row">

                        <div class="form-group col-lg-6">
                            <label><?php echo display("username") ?> <span class="text-danger">*</span></label>
                            <input type="text" value="<?php echo esc($profile->username) ?>" class="form-control" name="username" placeholder="<?php echo display("username") ?>" disabled>
                        </div>

                        <div class="form-group col-lg-6">
                            <label><?php echo display("referral_id") ?> <span class="text-danger">*</span></label>
                            <input type="text" value="<?php echo esc($profile->referral_id) ?>" class="form-control" name="referral_id" placeholder="<?php echo display("sponsor_name") ?>" disabled>
                        </div>

                        <div class="form-group col-lg-6">
                            <label><?php echo display("firstname") ?> <span class="text-danger">*</span></label>
                            <input type="text" value="<?php echo esc($profile->first_name); ?>" class="form-control <?php if(isset($errorsList['first_name'])){echo "common_error_border"; } ?>" name="first_name" placeholder="<?php echo display("firstname") ?>" >
                            <span class="text-danger"><?php if(isset($errorsList['first_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['first_name']; } ?></span>
                        </div>

                        <div class="form-group col-lg-6">
                            <label><?php echo display("lastname") ?> <span class="text-danger">*</span></label>
                            <input type="text" value="<?php echo esc($profile->last_name) ?>" class="form-control <?php if(isset($errorsList['last_name'])){echo "common_error_border"; } ?>" name="last_name" placeholder="<?php echo display("lastname") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['last_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['last_name']; } ?></span>
                        </div>

                        <div class="form-group col-lg-6">
                            <label><?php echo display("email") ?> <span class="text-danger">*</span></label>
                            <input type="text" value="<?php echo esc($profile->email) ?>" class="form-control <?php if(isset($errorsList['email'])){echo "common_error_border"; } ?>" name="email" placeholder="<?php echo display("email") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['email'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['email']; } ?></span>
                        </div>

                        <div class="form-group col-lg-6">
                            <label><?php echo display("mobile") ?> <span class="text-danger">*</span></label>
                            <input type="number" value="<?php echo esc($profile->phone) ?>" id="mobile" class="form-control <?php if(isset($errorsList['mobile'])){echo "common_error_border"; } ?>" name="mobile" placeholder="<?php echo display("mobile") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['mobile'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['mobile']; } ?></span>
                        </div>

                        <div class="form-group col-lg-6">
                            <label>Profile Image </label>
                            <input type="file" id="profile_image" class="form-control" name="profile_image">
                        </div>

                        <div class="form-group col-lg-6">
                                <label><?php echo display('language') ?></label>
                                
                                <select name="language" class="form-control">
                                    <?php 
                                        foreach($languageList as $key => $val){
                                            echo '<option '.($profile->language==$key?'selected':'').' value="'.esc($key).'">'.esc(
                                                $val)
                                            .'</option>';
                                        }
                                    ?>
                                </select>
                            </div>
                        
                    </div> 

                    <div>
                        <button type="submit" class="btn btn-success"><?php echo display("update") ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>
        </div>
    </div>
</div>

 