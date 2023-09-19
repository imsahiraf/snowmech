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
        	

        <?php 
            foreach($notification as $val){

	            $datetime = new DateTime($val->date);
	            $date = $datetime->format('Y-M-D');
	            $time = $datetime->format('H:i:sa');
        ?>
        <?php $read_unread = $val->status==0?"new-message":"";?>
        <div data-href="<?php echo base_url("customer/notifications/details/$val->notification_id")?>" class="inbox_item d-flex align-items-center <?php echo $read_unread;?>">
            <a href="<?php echo base_url("customer/notifications/details/$val->notification_id")?>">
                <img src="<?php echo base_url(!empty($settings->logo)?esc($settings->logo):"public/assets/images/icons/sms_user.png"); ?>" class="inbox-avatar d-none d-xl-block" alt="">
            </a>

            <div class="inbox-avatar-text">
              <h6 class="avatar-name fs-15 font-weight-600 mb-0">
                <a href="<?php echo base_url("customer/notifications/details/$val->notification_id")?>">
                    <?php echo esc($val->subject);?>
                </a>
              </h6>
              <div>
                <span> <?php echo esc($val->details); ?> </span>
              </div>
            </div>
            <div class="inbox-date d-none d-xl-block">
              <div class="date">
                <?php echo esc($time);?>
              </div>
              <div>
                <small>
                  <?php echo esc($date);?>
                </small>
              </div>
            </div>
         </div>
        <?php } ?>
        </div>
      </div>
  </div>
</div>
</div>
<?php echo htmlspecialchars_decode($pager); ?>
