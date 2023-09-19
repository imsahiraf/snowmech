<div class="mailbox mb-4">
  <div class="mailbox-body">
    <div class="row m-0">
      <div class="col-sm-12 col-md-12 col-lg-12 p-0 inbox-mail">
        <div class="mailbox-content">
        <?php 
            foreach($message as $val){
              $datetime = new DateTime($val->date_time);
              $date = $datetime->format('Y-M-D');
              $time = $datetime->format('H:i:sa');
        ?>
        <?php 
          $read_unread = $val->status==1?"new-message":"";
          $unread_text = $val->status==1?"unread-text":"";
        ?>
          <div data-href="<?php echo base_url("backend/helpline/details/$val->id")?>" class="inbox_item d-flex align-items-center <?php echo $read_unread;?>">
            <a href="<?php echo base_url("backend/helpline/details/$val->id")?>">
                <img src="<?php echo base_url(!empty($settings->logo)?esc($settings->logo):"assets/images/icons/sms_user.png"); ?>" class="inbox-avatar d-none d-xl-block" alt="">
            </a>

            <div class="inbox-avatar-text">
              <h6 class="avatar-name fs-15 font-weight-600 mb-0 <?php echo $unread_text;?>">
                <a href="<?php echo base_url("backend/helpline/details/$val->id")?>">
                    <?php echo esc($val->subject);?>
                </a>
              </h6>
              <div>
                <span>
                  <strong class="<?php echo $unread_text;?>">
                    <?php echo esc($val->first_name)." ".esc($val->last_name);?>: 
                  </strong>
                </span>
              </div>
            </div>
            <div class="inbox-date d-none d-xl-block">
              <div class="date <?php echo $unread_text;?>">
                <?php echo esc($time);?>
              </div>
              <div>
                <small class="<?php echo $unread_text;?>">
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
