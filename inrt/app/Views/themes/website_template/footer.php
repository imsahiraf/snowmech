<?php
    $this->db = db_connect();
    $settings = $this->db->table('setting')->select("*")->get()->getRow();
?>
        <footer>
            <div class="main_footer">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                            <div class="widget-contact">
                                <ul class="list-icon">
                                    <li><?php echo htmlspecialchars_decode($settings->description) ?></li>
                                    <li><?php echo htmlspecialchars_decode($settings->phone) ?></li>
                                    <li><a href="mailto:<?php echo htmlspecialchars_decode($settings->email) ?>"><?php echo htmlspecialchars_decode($settings->email) ?></a></li>
                                    <li> <br>
                                        <?php echo htmlspecialchars_decode($settings->office_time) ?></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-3 col-lg-4">
                            <div class="row">                            
                                <div class="col-6 col-sm-12 col-md-12 col-lg-6">
                                    <div class="footer-box">
                                        <h3 class="footer-title"><?php echo display('our_company'); ?></h3>
                                        <ul class="footer-list">
                                        <?php
                                            foreach ($category as $cat_key => $cat_value) {                                
                                                if ($cat_value->menu==2 || $cat_value->menu==4) {
                                                    $cat_name = isset($lang) && $lang =="french"?esc($cat_value->cat_name_fr):esc($cat_value->cat_name_en);
                                                
                                        ?>
                                            <li><a href="<?php echo base_url()?>#<?php echo esc($cat_value->slug) ?>" class="js-scroll-trigger"><?php echo esc($cat_name) ?></a></li>

                                        <?php
                                                }

                                            }
                                        ?>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-6 col-sm-6 d-sm-none d-md-none d-lg-block">
                                    <div class="footer-box">
                                        <h3 class="footer-title"><?php echo display('services'); ?></h3>
                                        <ul class="footer-list">
                                            <?php
                                                foreach ($category as $cat_key => $cat_value) {                                
                                                if ($cat_value->menu==3 || $cat_value->menu==5) {
                                                    $cat_name = isset($lang) && $lang =="french"?$cat_value->cat_name_fr:$cat_value->cat_name_en;
                                                
                                            ?>
                                                <li><a href="#<?php echo esc($cat_value->slug) ?>" class="js-scroll-trigger"><?php echo esc($cat_name) ?></a></li>

                                            <?php
                                                    }

                                                }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-5 col-lg-3 offset-lg-1">
                            <div class="newsletter-box">
                                <h3 class="footer-title"><?php echo display('email_newslatter'); ?></h3>
                                <p><?php echo display('subscribe_to_our_newsletter'); ?></p>
                                <?php echo form_open('#','class="newsletter-form" id="subscribeForm" name="subscribeForm"'); ?>
                                    <input name="subscribe_email" placeholder="<?php echo display('email'); ?>" type="text">
                                    <button type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                                    <div class="envelope"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
                                <?php echo form_close() ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.End of main footer -->
            <div class="sub-footer">
                <div class="container">
                    <p class="footer-copyright"><?php echo htmlspecialchars_decode($settings->footer_text); ?></p>
                </div>
            </div>
        </footer>

        <!-- /.End of footer -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS --> 
        <script src="<?php echo BASEPATH.'assets/website/js/jquery-3.3.1.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/popper.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/bootstrap.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/jquery.dd.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/metisMenu.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/jquery.easing.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/jquery.mCustomScrollbar.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/jquery.magnific-popup.min.js'?>"></script>
        <script src="<?php echo BASEPATH.'assets/website/js/flipclock.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/slick/slick.min.js'?>"></script> 
        <script src="<?php echo BASEPATH.'assets/website/js/echarts-en.min.js'?>"></script>
        <script src="<?php echo BASEPATH.'assets/website/js/echarts-liquidfill.min.js'?>"></script>
        <script src="<?php echo BASEPATH.'assets/website/js/classie.min.js'?>"></script>
        <script src="<?php echo BASEPATH.'assets/website/js/script.js'?>"></script>
        <script src="<?php echo BASEPATH.'assets/website/js/script-new.js?v=1.1'?>"></script>
    </body>
</html>