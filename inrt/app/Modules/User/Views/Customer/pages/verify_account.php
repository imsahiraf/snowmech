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
                            <?php if($verify_status->verified==1){?>
                                <a href="#" class="btn btn-primary">Not Submitted</a>
                            <?php }else if($verify_status->verified==1) {?>
                                <a href="#" class="btn btn-success">Accepted</a>
                            <?php }else if($verify_status->verified==2) {?>
                                <a href="#" class="btn btn-danger">Rejected</a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="border_preview">
                    <div class="profile-verify">
                        <?php
                            if($verify_status->verified==0 || $verify_status->verified==2){
                        ?>
                            <?php echo form_open_multipart("customer/account/verify-account") ?>
                            <div class="form-group row">
                                <label for="verify_type" class="col-sm-4 font-weight-600"><?php echo display('verify_type'); ?></label>
                                <div class="col-sm-8">
                                    <select class="form-control basic-single" name="verify_type" required id="verify_type">
                                        <option selected><?php echo display('select_option'); ?></option>
                                        <option value="passport"><?php echo display('passport'); ?></option>
                                        <option value="driving_license"><?php echo display('drivers_license'); ?></option>
                                        <option value="nid"><?php echo display('government_issued_id_card'); ?></option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="first_name" class="col-md-4 font-weight-600"><?php echo display('given_name'); ?> <i class="text-danger">*</i></label>
                                <div class="col-md-8">
                                    <input name="first_name" type="text" class="form-control <?php if(isset($errorsList['first_name'])){echo "common_error_border"; } ?>" id="first_name" placeholder="" value="" >
                                    <span class="text-danger"><?php if(isset($errorsList['first_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['first_name']; } ?></span>
                                </div>
                            </div>                        
                            <div class="form-group row">
                                <label for="last_name" class="col-md-4 font-weight-600"><?php echo display('surname'); ?> <i class="text-danger">*</i></label>
                                <div class="col-md-8">
                                    <input name="last_name" type="text" class="form-control <?php if(isset($errorsList['last_name'])){echo "common_error_border"; } ?>" id="last_name" placeholder="" value="" >
                                    <span class="text-danger"><?php if(isset($errorsList['last_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['last_name']; } ?></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="id_number" class="col-md-4 font-weight-600"><?php echo display('passport_nid_license_number'); ?> <i class="text-danger">*</i></label>
                                <div class="col-md-8">
                                    <input name="id_number" type="text" class="form-control <?php if(isset($errorsList['id_number'])){echo "common_error_border"; } ?>" id="id_number" placeholder="<?php echo display('passport_nid_license_number'); ?>" value="" >
                                    <span class="text-danger"><?php if(isset($errorsList['id_number'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['id_number']; } ?></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-600 col-sm-4 pt-0"><?php echo display('gender'); ?> <span><i class="text-danger">*</i></span></label>
                                <div class="col-sm-8">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadioInline1" name="gender" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadioInline1"><?php echo display('male'); ?></label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadioInline2" name="gender" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadioInline2"><?php echo display('female'); ?></label>
                                    </div>
                                    <span class="text-danger"><?php if(isset($errorsList['gender'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['gender']; } ?></span>
                                </div>
                            </div>
                            <span id="verify_field"></span>
                            <div class="form-group row">
                                 <label class="font-weight-600 col-sm-4 pt-0">&nbsp;</label>
                                <div class="col-sm-8">
                                    <button type="submit" class="btn btn-success"><?php echo display('submit'); ?></button>
                                </div>
                            </div>
                            <?php echo form_close();?>
                        <?php
                            }else{
                        ?>
                                <div class="form-group row">
                                    <div class="col-sm-12">
                                        <?php if($verify_status->verified==1){ ?>
                                            <center>
                                                <font color="green" size="+2"><?php echo display('profile_is_verified'); ?></font>
                                            </center>
                                        <?php }  else{ ?>
                                            <center><font color="brown" size="+2"><?php echo display('verification_is_processing'); ?></font></center>
                                        <?php } ?>
                                    </div>
                                </div>

                            <?php } ?>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo base_url('app/Modules/User/Assets/Customer/js/custom.js?v=1.6') ?>"></script>