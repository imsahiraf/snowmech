<div class="password_change-content">
    <div class="container">
        <div class="col-sm-6 col-md-6 col-sm-offset-2 col-md-offset-2">
            <div class="row">
                <div class="col-sm-12">
                    <!-- alert message -->
                    <?php $this->session = session(); if($this->session->get('message') != null) { ?>
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;
                        </button>
                        <?php echo $this->session->get('message'); ?>
                    </div>
                    <?php } ?>
                    <?php if ($this->session->get('exception') != null) { ?>
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;
                        </button>
                        <?php echo $this->session->get('exception'); ?>
                    </div>
                    <?php } ?>
                    <!-- /.alert message -->
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h3 class="mb-3">
                        <?php echo display('reset_your_password');?>
                    </h3>
                    <?php echo form_open( 'resetPassword', 'id="resetPassword" novalidate'); ?>
                    <div class="form-group">
                        <input class="form-control" name="verificationcode" id="verificationcode" placeholder="<?php echo display('verification_code'); ?>" type="password" autocomplete="off">
                    </div>
                    <div class="input">
                        <input class="form-control" name="newpassword" id="pass" placeholder="<?php echo display('new_password'); ?>" type="password" autocomplete="off">
                        <div id="password_msg">
                            <p id="letter" class="invalid">
                                <?php echo display( 'a_lowercase_letter') ?>
                            </p>
                            <p id="capital" class="invalid">
                                <?php echo display( 'a_capital_uppercase_letter') ?>
                            </p>
                            <p id="special" class="invalid">
                                <?php echo display( 'a_special') ?>
                            </p>
                            <p id="number" class="invalid">
                                <?php echo display( 'a_number') ?>
                            </p>
                            <p id="length" class="invalid">
                                <?php echo display( 'minimum_8_characters') ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="r_pass" id="r_pass" placeholder="<?php echo display('conf_password'); ?>" type="password">
                    </div>
                    <div class="m-b-15">
                        <button type="submit" class="btn btn-success btn-block">
                            <?php echo display( 'reset_your_password') ?>
                        </button>
                    </div>
                    <?php echo form_close();?>
                </div>
            </div>
        </div>
    </div>
</div>