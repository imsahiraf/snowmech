<link href="<?php echo base_url('app/Modules/Help_line/Assets/Customer/css/custom.css?v=1.5')?>" rel="stylesheet">
<div class="mailbox mb-4">
  <div class="mailbox-body">
    <div class="row m-0">
      <div class="col-sm-12 col-md-12 col-lg-12 p-0 inbox-mail">
        <div class="mailbox-content">
            <?php 
                $this->session = session();
                $image = $this->session->get('image'); 
            ?>
            <div class="mailbox-header">
                <div class="row">
                    <div class="col-xs-4 ">
                      <?php $image = $session->userdata('image'); ?>
            
                        <div class="inbox-avatar"><img src="<?php echo base_url(!empty($image)?$image:"public/assets/images/icons/user.png") ?>" class="img-circle border-green" alt="">
                            <div class="inbox-avatar-text hidden-xs hidden-sm">
                                <div class="avatar-name"><?php echo $session->userdata('fullname'); ?></div>
                                <div><small class="small-mailbox">Mailbox</small></div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="inbox-mail-details mt-4">
                                <?php echo form_open(base_url('customer/help-line/send-message'),'id="textform" name="textform"');?>
                                    <div class="form-group row">
                                        <label for="subject" class="col-sm-2 col-form-label"><?php echo display('subject'); ?> <i class="text-danger">*</i></label>
                                        <div class="col-sm-7">
                                            <input name="subject" class="form-control <?php if(isset($errorsList['subject'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('subject'); ?>" type="text" id="subject">
                                            <span class="text-danger"><?php if(isset($errorsList['subject'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['subject']; } ?></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="message" class="col-sm-2 col-form-label"><?php echo display('message'); ?> <i class="text-danger">*</i></label>
                                        <div class="col-sm-7">
                                            <textarea rows="7" class="form-control <?php if(isset($errorsList['message'])){echo "common_error_border"; } ?>" name="message" id="message" placeholder="<?php echo display('message'); ?>"></textarea>
                                            <span class="text-danger"><?php if(isset($errorsList['message'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['message']; } ?></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="" class="col-sm-2 col-form-label">&nbsp;</label>
                                        <div class="col-sm-7">
                                            <button type="submit" class="btn btn-primary"><?php echo display('send')?></button>
                                        </div>
                                    </div>
                                <?php form_close();?>
                            </div>
                           
                        </div>
                            <?php 

                                foreach(@$message as $val){ 
                            ?>

                                <?php
                                    $read_unread = "";
                                    $unread_text = "";
                                    if($val->admin_status == 1){
                                        $read_unread = "new-message";
                                        $unread_text = "unread-text";
                                    }
                                ?>
                            <div data-href="<?php echo base_url("customer/help-line/details/$val->id")?>" class="inbox_item d-flex align-items-center unread <?php echo $read_unread;?>">
                                <a href="<?php echo base_url("customer/help-line/details/$val->id")?>">
                                    <img src="<?php echo base_url(!empty($settings->logo)?esc($settings->logo):"public/assets/images/icons/sms_user.png"); ?>" class="inbox-avatar d-none d-xl-block" alt="">
                                </a>

                                <div class="inbox-avatar-text">
                                  <h6 class="avatar-name fs-15 font-weight-600 mb-0 <?php echo $unread_text; ?>">
                                    <a href="<?php echo base_url("customer/help-line/details/$val->id")?>">
                                        <?php echo esc($val->subject);?>
                                    </a>
                                  </h6>
                                  <div>
                                    <span class="<?php echo $unread_text; ?>"><?php echo esc(@$val->first_name)." ".esc(@$val->last_name);?></span>
                                  </div>
                                </div>
                                <div class="inbox-date d-none d-xl-block">
                                  <div class="date <?php echo $unread_text; ?>">
                                    <?php echo esc($val->date_time);?>
                                  </div>
                                  <div>
                                    <small class="<?php echo $unread_text; ?>">
                                      <?php echo esc($val->date_time);?>
                                    </small>
                                  </div>
                                </div>
                             </div>
                            <?php } ?>

                            
                    </div>
                </div>
            </div>
        </div>

<?php echo htmlspecialchars_decode($pager); ?>