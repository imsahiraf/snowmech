        <div class="reg-wrapper">
            <div class="container">
                <div class="col-sm-7 col-md-6">
                    <div class="">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true"><?php echo display('register'); ?></a>
                                <a class="nav-item nav-link active" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"><?php echo display('log_in'); ?></a>
                            </div>
                        </nav>
                        <div class="row">
                            <div class="col-sm-12">
                                <!-- alert message -->
                                <?php
                                $this->session = session();
                                 if ($this->session->get('message') != null) {  
                                ?>
                                <div class="alert alert-info alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $this->session->get('message'); ?>
                                </div> 
                                <?php } ?>
                                    
                                <?php if ($this->session->get('exception') != null) {  ?>
                                <div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <?php echo $this->session->get('exception'); ?>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <?php echo form_open('register','id="registerForm" name="registerForm"'); ?>
                                    <div class="row">    
                                    <div class="col-sm-6">
                                        <div class="input">
                                            <input class="input__field" type="text"  name="rf_name" id="f_name" value="<?php //echo $this->session->userData['f_name']; ?>" autocomplete="off" required>
                                            <label class="input__label" for="f_name">
                                                <span class="input__label-content" data-content="<?php echo display('firstname'); ?>"><?php echo display('firstname'); ?></span>
                                            </label>
                                        </div>
                                    </div>    
                                    <div class="col-sm-6">
                                        <div class="input">
                                            <input class="input__field" type="text"  name="rl_name" id="l_name" value="<?php //echo $this->session->userData['l_name']; ?>" autocomplete="off" required>
                                            <label class="input__label" for="l_name">
                                                <span class="input__label-content" data-content="<?php echo display('lastname'); ?>"><?php echo display('lastname'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="input">
                                            <input class="input__field" type="text" name="rusername" id="username" required>
                                            <label class="input__label" for="username">
                                                <span class="input__label-content" data-content="<?php echo display('username'); ?>"><?php echo display('username'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>                                
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="input">
                                            <input class="input__field" type="email" id="email" name="remail" id="email" value="<?php //echo $this->session->userData['email']; ?>" autocomplete="off" required>
                                            <label class="input__label" for="email">
                                                <span class="input__label-content" data-content="<?php echo display('email'); ?>"><?php echo display('email'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="input">
                                            <input class="input__field" type="password" name="rpass" id="pass" required>
                                            <label class="input__label" for="pass">
                                                <span class="input__label-content" data-content="<?php echo display('password'); ?>"><?php echo display('password'); ?></span>
                                            </label>
                                            <div id="password_msg">
                                              <p id="letter" class="invalid"><?php echo display('a_lowercase_letter') ?></p>
                                              <p id="capital" class="invalid"><?php echo display('a_capital_uppercase_letter') ?></p>
                                              <p id="special" class="invalid"><?php echo display('a_special') ?></p>
                                              <p id="number" class="invalid"><?php echo display('a_number') ?></p>
                                              <p id="length" class="invalid"><?php echo display('minimum_8_characters') ?></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="input">
                                            <input class="input__field" type="password" name="rr_pass" id="r_pass" required>
                                            <label class="input__label" for="r_pass">
                                                <span class="input__label-content" data-content="<?php echo display('conf_password'); ?>"><?php echo display('conf_password'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="checkbox" name="raccept_terms" value="ptConfirm"> 
                                            
                                                <?php echo display('your_password_at_global_crypto_are_encrypted_and_secured'); ?> <a target="_blank" href="<?php echo base_url(@$article_image[0]); ?>" class="checkbox-link"><?php echo display('privacy_policy'); ?></a> and 
                                                <a target="_blank" href="<?php echo base_url(@$article_image[0]); ?>" class="checkbox-link"><?php echo display('terms_of_use'); ?></a>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-reg"><?php echo display('sign_up'); ?></button>
                                <?php echo form_close() ?>
                            </div>
                            <div class="tab-pane fade show active" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <?php echo form_open('login','id="loginForm" '); ?>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input">
                                            <input class="input__field" type="text" name="luseremail" id="useremail" autocomplete="off" required>
                                            <label class="input__label" for="input">
                                                <span class="input__label-content" data-content="<?php echo display('email'); ?>"><?php echo display('email'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="input">
                                            <input class="input__field" type="password" name="lpassword" id="password" required>
                                            <label class="input__label" for="password">
                                                <span class="input__label-content" data-content="<?php echo display('password'); ?>"><?php echo display('password'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">    
                                    <div class="col-sm-12">
                                        <div class="checkbox">
                                            <label>
                                                <a href="#" data-toggle="modal" data-target="#forgotModal" class="forgot"><?php echo display('forgot_password'); ?>?</a> <?php echo display('dont_have_an_account'); ?>?&nbsp;<span id="sign_up_now"><?php echo display('sign_up_now'); ?></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-reg"><?php echo display('login'); ?></button>
                                <?php echo form_close() ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>


        <!-- Modal -->
<div id="forgotModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close m-0 p-0" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?php echo display('forgot_password'); ?></h4>
      </div>
      <div class="modal-body">
        <?php echo form_open('forgotPassword','id="forgotPassword"'); ?>
            <label class="color-black">E-mail</label>
            <div class="form-group">
                <input class="form-control" name="luseremail" id="email" placeholder="example@mail.com" type="text" autocomplete="off">
            </div>
            <button  type="submit" class="btn btn-success float-right"><?php echo display('send_code'); ?></button>
        <?php echo form_close();?>
      </div>
    </div>

  </div>
</div>