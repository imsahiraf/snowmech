<div class="row">
    <div class="col-sm-12">
        <div class="mailbox">
            <div class="mailbox-body">
                    <div class="row m-0">
                        <div class="col-xs-12 col-sm-12 col-md-12 p-0 inbox-mail">
                            <div class="mailbox-content">
                                <div data-href="#" class="inbox_item d-flex align-items-center unread">
                                   
                                    <img src="<?php echo base_url(!empty($settings->logo)?$settings->logo:"assets/images/icons/sms_user.png"); ?>" class="inbox-avatar d-none d-xl-block" alt="">
                                    <div class="inbox-avatar-text">
                                        <h6 class="avatar-name fs-15 font-weight-600 mb-0"><strong>From: </strong><span> <?php echo esc($usermessege->email); ?></span></h6>
                                        <div><span><strong>Subject: </strong><span>  <?php echo esc($usermessege->subject);?></span></span></div>
                                    </div>
                                    <div class="inbox-date d-none d-xl-block">
                                        <div><small><?php echo esc($usermessege->date_time);?></small></div>
                                    </div>
                                </div>
                           

                            <div class="inbox-mail-details p-20 border-btm m-4">
                                <p><strong><?php echo esc($usermessege->first_name)." ".esc($usermessege->last_name); ?></strong></p>
                                <p><span><?php echo esc($usermessege->messege);?></span></p>
                               
                            </div>
                            <?php foreach ($adminmessege as $key => $value) { ?>
                                <div class="inbox-mail-details p-20 border-btm m-4">
                                    <p><strong>Admin</strong></p>
                                    <p><span><?php echo esc($value->messege);?></span></p>
                                </div>        
                            <?php } ?>
                            <div class="inbox-mail-details p-20 mt-4 mb-4">
                                <?php echo form_open(base_url('backend/helpline/send-message/'.$usermessege->id),'id="textform" name="textform"');?>
                                    <div class="form-group row">
                                        <label for="subject" class="col-sm-2 col-form-label"><?php echo display('subject'); ?> <i class="text-danger">*</i></label>
                                        <div class="col-sm-7">
                                            <input name="subject" class="form-control <?php if(isset($errorsList['subject'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('subject'); ?>" type="text" id="subject">
                                            <span class="text-danger"><?php if(isset($errorsList['subject'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['subject']; } ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="message" class="col-sm-2 col-form-label"><?php echo display('message'); ?> <i class="text-danger">*</i></label>
                                        <div class="col-sm-7">
                                            <textarea rows="7" class="form-control <?php if(isset($errorsList['message'])){echo "common_error_border"; } ?>" name="message" id="message" placeholder="<?php echo display('message'); ?>"></textarea>
                                            <span class="text-danger"><?php if(isset($errorsList['message'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['message']; } ?>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label for="" class="col-sm-2 col-form-label">&nbsp;</label>
                                        <div class="col-sm-7">
                                            <button type="submit" class="btn btn-primary"><?php echo display('send')?></button>
                                        </div>
                                    </div>
                                <?php form_close();?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>