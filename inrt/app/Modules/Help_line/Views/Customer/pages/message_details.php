<div class="body-content">
    <div class="mailbox">
        <div class="mailbox-body">
            <div class="row m-0">
                <div class="col-md-12 col-lg-12 p-0 inbox-mail">
                    <div class="inbox-avatar-wrap p-3 border-btm d-sm-flex">
                        <img src="<?php echo base_url(!empty($settings->logo)?esc($settings->logo):"public/assets/images/icons/logo.png"); ?>" class="inbox-avatar border-green mb-2 mb-sm-0" alt="">
                        <div class="inbox-avatar-text ml-sm-3 mb-2 mb-sm-0">
                            <div class="avatar-name"><strong>From: </strong>
                             <em><?php echo esc($settings->email); ?></em>
                            </div>
                            <div><strong>Subject: </strong><small><?php echo esc($message->subject);?></small></div>
                        </div>
                        <div class="inbox-date">
                            <div><span class="badge badge-info"><?php echo esc($message->subject);?></span></div>
                            <div><small><?php echo esc($message->datetime);?></small></div>
                        </div>
                    </div>
                    <div class="inbox-mail-details p-3">
                        <p><strong>Hi <?php $session = session(); echo $session->get('fullname'); ?>,</strong></p>
                        <p><span><?php echo esc($message->message); ?></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>