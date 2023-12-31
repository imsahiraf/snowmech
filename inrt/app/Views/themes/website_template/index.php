    <?php
        if($home){
            $i=1;
            foreach ($home as $home_key => $home_value) {
                $home_headline[]     =   isset($lang) && $lang =="french"?$home_value->headline_fr:$home_value->headline_en;
                $home_article1[]     =   isset($lang) && $lang =="french"?$home_value->article1_fr:$home_value->article1_en;
                $home_article2[]     =   isset($lang) && $lang =="french"?$home_value->article2_fr:$home_value->article2_en;
                $home_article_image[]=   $home_value->article_image;
                $home_article_video[]=   $home_value->video;

            $i++;

            }
         }
    ?>

    <header class="header-content" style="background-image: url(<?php echo base_url(esc(@$home_article_image[0])) ?>);">
        <div class="social d-none d-sm-none d-md-none d-lg-none d-xl-block"> <a class="text"><?php echo display('social_links'); ?></a>
            <div class="line-shape"></div>

            <?php if($social_link){ foreach ($social_link as $key => $value) { ?>
                <a target="_blank" href="<?php echo esc(@$value->link); ?>"><i class="fab fa-<?php echo esc($value->icon) ?>"></i></a>
            <?php } } ?>
            </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-6">
                    <div class="header-text">
                        <h1><?php echo esc(@$home_headline[0]) ?></h1>
                        <p><?php echo htmlspecialchars_decode(@$home_article1[0]) ?></p>
                        <div class="d-flex">
                            <div><a href="<?php echo htmlspecialchars_decode(@$home_article2[0]) ?>" class="btn btn-gradient"><?php echo display('live_demo'); ?></a></div>
                            <div class="ml-15"><a target="_blank" href="<?php echo esc(@$rcoin_info->white_paper) ?>" class="btn btn-gradient btn-gradient-o"><?php echo display('whitepaper'); ?></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-5 offset-lg-1"> 
                    <div class="token-wrap">
                        <div class="token-title">
                            <h3><?php echo display('ico_pre_sale_is_live'); ?></h3>
                            <div class="sub-title"><?php echo htmlspecialchars_decode(@$flipdata->round_name);?> ends in:</div>
                        </div>
                        <div class="clock"></div>
                        <div class="message"></div>
                        <div class="countdown-price">
                            <h4><?php echo esc(@$rcoin_info->rate)." ".esc(@$rcoin_info->symbol);?></h4>
                            <span><?php echo esc(@$rcoin_info->symbol);?> Raised</span>
                        </div>
                        <?php
                            if(@$flipdata->target != 0){
                                $percent  = (@$flipdata->fillup_target*100)/@$flipdata->target;
                            }
                            else{
                                $percent = 0;
                            }
                        ?>
                        <div class="loading-bar my-3 position-relative">
                            <div class="progres-area py-5">
                                <ul class="progress-bar-up">
                                    <li></li>
                                    <li class="pre-sale"><?php echo display('pre_sale'); ?></li>
                                    <li><?php echo display('soft_cap'); ?></li>
                                    <li class="bonus"><?php echo display('bonus'); ?></li>
                                    <li></li>
                                </ul>
                                <ul class="progress-bars">
                                    <li></li>
                                    <li>|</li>
                                    <li>|</li>
                                    <li>|</li>
                                    <li></li>
                                </ul>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-custom" role="progressbar" style="width: <?php echo esc(@$percent);?>%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress-bar-down">
                                    <div class="progress-info"><?php echo esc(@$percent);?>% target raised</div>
                                    <div class="progress-info">1 <?php echo esc(@$rcoin_info->symbol);?> = <?php echo esc(@$rcoin_info->rate)." ".esc(@$rcoin_info->pair_with); ?></div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <div><a href="<?php echo base_url('customer/ico-wallet/token-buy') ?>" class="btn btn-gradient"><?php echo display('buy_tokens'); ?></a></div>
                            <div class="play-button"> <a href="<?php echo @$home_article_video[0];?>" class="btn-play popup-youtube">
                                    <div class="bubble-btn"> <span class="bubble-ripple"> <span class="bubble-ripple-inner"></span> </span> <span><i class="fas fa-play"></i></span> </div>
                                    <div class="play-text">
                                        <div class="btn-title-inner">
                                            <div class="btn-title"><span><?php echo display('watch_video'); ?></span></div>
                                            <div class="btn-subtitle"><span><?php echo display('how_it_work'); ?></span></div>
                                        </div>
                                    </div>
                                </a> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- /.End of header content -->

            <?php 
                if($about){
                    $j=1; 
                    foreach ($about as $abo_key => $abo_value) {

                        $abo_headline[]     =   isset($lang) && $lang =="french"?$abo_value->headline_fr:$abo_value->headline_en;
                        $abo_article1[]     =   isset($lang) && $lang =="french"?$abo_value->article1_fr:$abo_value->article1_en;
                        $abo_article2[]     =   isset($lang) && $lang =="french"?$abo_value->article2_fr:$abo_value->article2_en;
                        $abo_article_image[]=   $abo_value->article_image;
                        $abo_article_video[]=   $abo_value->video;
                    $j++;

                    }
                }
            ?>
        <div id="about" class="section section-pad about-content">
            <div class="container">
                <div class="polygon-over-st1 polygon-st3"></div>
                <div class="row about-text align-items-center">
                    <div class="col-md-6 col-lg-5 offset-lg-1">
                        <div class="about-graph text-right"> <img src="<?php echo base_url(esc(@$abo_article_image[0])); ?>" class="img-fluid" alt="<?php echo strip_tags(esc(@$abo_headline[0])); ?>"> </div>
                    </div>
                    <div class="col-md-6 col-lg-6 order-md-first order-last">
                        <div class="about-info">
                            <h2><?php //echo esc(@$abo_headline[0]); ?></h2>
                            <div class="definition"><?php echo htmlspecialchars_decode(@$abo_article1[0]); ?></div>
                            <p><?php echo htmlspecialchars_decode(@$abo_article2[0]); ?></p>
                            <div class="d-flex">
                                <div><a target="_blank" href="<?php echo base_url('customer/ico-wallet/token-buy'); ?>" class="btn btn-gradient"><?php echo display('buy_tokens'); ?></a></div>
                                <div class="play-button"> <a href="<?php echo esc(@$abo_article_video[0]); ?>" class="btn-play popup-youtube">
                                        <div class="bubble-btn"> <span class="bubble-ripple"> <span class="bubble-ripple-inner"></span> </span> <span><i class="fas fa-play"></i></span> </div>
                                        <div class="play-text">
                                            <div class="btn-title-inner">
                                                <div class="btn-title"><span><?php echo display('watch_video'); ?></span></div>
                                                <div class="btn-subtitle"><span><?php echo display('about_bitcoin'); ?></span></div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.End of about section -->
        <div class="section section-pad run-content">
            <div class="container">
                <div class="polygon-over-st1 polygon-over-right"></div>
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title text-center">
                            <?php if ($aboutcoin_cat) { ?>
                                <h2><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($aboutcoin_cat->cat_title1_fr):htmlspecialchars_decode($aboutcoin_cat->cat_title1_en); ?></h2>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($aboutcoin_cat->cat_title2_fr):htmlspecialchars_decode($aboutcoin_cat->cat_title2_en); ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php if($aboutcoin){  foreach ($aboutcoin as $coina_key => $coina_value) { ?>

                        <div class="col-sm-6 col-md-6 col-lg-3">
                            <div class="run-card">
                                <h4><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($coina_value->headline_fr):htmlspecialchars_decode($coina_value->headline_en); ?></h4>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($coina_value->article1_fr):htmlspecialchars_decode($coina_value->article1_en); ?></p>
                            </div>
                        </div>

                    <?php } } ?>
                </div>
            </div>
        </div>
        <!-- End of ICO run content -->
        <div id="roadmap" class="section section-pad timeline">
            <div class="container">
                <div class="polygon-over-st2"></div>
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title2">
                            <h2 data-title="RoadMap" class="section-title-dash">
                                <?php echo display('roadmap'); ?> 
                                <span class="dashborder">&nbsp;</span>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="timeline_chart">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                        <?php if($roadmap){
                            $i = 1;
                            foreach ($roadmap as $key => $value) {
                                $headline   = isset($lang) && $lang =="french"?$value->headline_fr:$value->headline_en;
                                $details    = isset($lang) && $lang =="french"?$value->article1_fr:$value->article1_en;
                                $capvalue   = $value->article2_en;
                                $cap        = $value->article2_fr;
                                $date       = $value->publish_date;

                                $classtb = 'line-left';
                                if ($i%2==0) {
                                    $classtb = 'line-top';
                                }
                        ?>
                            <div class="timeline_event">
                                <div class="timeline_event_content">
                                    <div class="line <?php echo esc($classtb) ?>"></div>
                                    <div class="timeline_event_date"><?php echo date("jS F, Y", strtotime(esc($date))); ?></div>
                                    <div class="timeline_event_title"> <span><?php echo esc(@$headline) ?></span> </div>
                                    <div class="timeline_event_info">
                                        <div class="timeline_event_text"> <span><?php echo htmlspecialchars_decode(@$details) ?></span> </div>
                                        <div class="timeline_event_CapValue"><?php echo esc(@$capvalue) ?></div>
                                        <div class="timeline_event_Cap"> <span><?php echo esc(@$cap) ?></span> </div>
                                    </div>
                                </div>
                            </div>
                            <?php esc($i++); } } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.End of RoadMap content -->
        <div class="section section-pad token-distribution" id="token">
            <div class="container">
                <div class="polygon-over-st1 polygon-over-right"></div>
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title text-center">
                            <?php if ($token) { ?>

                                <h2><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($token->cat_title1_fr):htmlspecialchars_decode($token->cat_title1_en); ?></h2>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($token->cat_title2_fr):htmlspecialchars_decode($token->cat_title2_en); ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="token-chart">
                            <h4><?php echo display('initial_token_distribution'); ?></h4>
                            <div id="eChart_1"></div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="token-chart">
                            <h4><?php echo display('initial_token_distribution'); ?></h4>
                            <div id="eChart_2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.End of token distribution --> 
        <div id="team" class="section team-section section-pad">
            <div class="container">
                <div class="polygon-over-st2"></div>
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title text-center">
                            <?php if ($team_cat) { ?>
                               
                                <h2><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($team_cat->cat_title1_fr):htmlspecialchars_decode($team_cat->cat_title1_en); ?></h2>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($team_cat->cat_title2_fr):htmlspecialchars_decode($team_cat->cat_title2_en); ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="row flex-center sm-no-flex">
                    <div class="pull-right sm-no-float col-md-12 col-lg-8">
                        <ul class="team-members">
                            <!-- single member row starts -->
                            <li class="clearfix">

                            <?php
                                $image = array('','','','','','','','','');
                                if($team){
                                    $i=0;
                                    foreach ($team as $key => $value) {  
                                        $name[$i] = $value->headline_en;
                                        $image[$i] = $value->article_image;
                                        $designation[$i] = $value->article1_en;

                                        $i++;
                                    } 
                                }
                             ?>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[0]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[0]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[0]) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[1]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[1]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[1]) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[2]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[2]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[2]) ?></p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- /single member row ends --> 
                            <!-- single member row starts -->
                            <li class="clearfix">
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[3]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[3]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[3]) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[4]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[4]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[4]) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[5]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[5]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[5]) ?></p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- /single member row ends --> 
                            <!-- single member row starts -->
                            <li class="clearfix">
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[6]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[6]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[6]) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[7]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[7]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[7]) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-details">
                                    <div> <img src="<?php echo base_url("$image[8]")?>" alt="UI Designer">
                                        <div class="member-info">
                                            <h3><?php echo htmlspecialchars_decode(@$name[8]) ?></h3>
                                            <p><?php echo htmlspecialchars_decode(@$designation[8]) ?></p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- /single member row ends -->
                        </ul>
                        <!-- /end team-photos --> 
                    </div>
                    <?php
                        $teamoverviewheader      = "";
                        $teamoverviewsubheader   = "";
                        $teamoverviewdiscription = "";

                        if($teamoverview){
                            $teamoverviewheader = $lang =="french"?$teamoverview->headline_fr:$teamoverview->headline_en;
                            $teamoverviewsubheader   = $lang =="french"?$teamoverview->article1_fr:$teamoverview->article1_en;
                            $teamoverviewdiscription = $lang =="french"?$teamoverview->article2_fr:$teamoverview->article2_en;
                        }
                    ?>
                    <div class="pull-left col-md-12 col-lg-4 sm-text-center">
                        <div class="team-overview">
                            <h2><?php echo esc($teamoverviewheader) ?></h2>
                            <a href="#"><?php echo esc($teamoverviewsubheader) ?></a>
                            <p><?php echo htmlspecialchars_decode($teamoverviewdiscription) ?></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="advisors-title"><?php echo display('advisors'); ?></h3>
                    </div>
                </div>
                <div class="row justify-content-md-center">

                <?php if($advisors){ foreach ($advisors as $key => $value) { ?>
                    <div class="col-6 col-md-4 col-lg-3">
                        <div class="team"> 
                            <div class="img-container">
                                <ul class="social-icons">
                                    <li><a target="_blank" href="<?php echo $value->article1_fr ?>"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a target="_blank" href="<?php echo $value->article2_en ?>"><i class="fab fa-twitter"></i></a></li>
                                    <li><a target="_blank" href="<?php echo $value->article2_fr ?>"><i class="fab fa-facebook-f"></i></a></li>
                                </ul>
                                <img src="<?php echo base_url("$value->article_image")?>" class="img-fluid" alt="">
                            </div>
                            <div class="avatar-info">
                                <h5 class="avatar-name"><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($value->headline_fr):htmlspecialchars_decode($value->headline_en); ?></h5>
                                <div class="avatar-des"><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($value->article1_fr):htmlspecialchars_decode($value->article1_en); ?></div>                        
                            </div>
                        </div>
                        <!--/.End of team--> 
                    </div>
                <?php } } ?>

                </div>
            </div>
        </div>
        <!-- /.End of team section -->
        <div id="faq" class="section section-pad faq-content">
            <div class="container">
                <div class="polygon-over-st1 polygon-over-right"></div>
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title text-center">
                            <?php if ($faq_cat_details) { ?>
                                
                                <h2><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($faq_cat_details->cat_title1_fr):htmlspecialchars_decode($faq_cat_details->cat_title1_en); ?></h2>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($faq_cat_details->cat_title2_fr):htmlspecialchars_decode($faq_cat_details->cat_title2_en); ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="faq-tab">
                            <nav>
                                <div class="nav nav-tabs justify-content-center" id="nav-tab" role="tablist">

                                <?php if($faq_cat){ foreach ($faq_cat as $key => $value) { ?>
                                    <a class="nav-item nav-link" id="<?php echo esc($value->slug) ?>-tab" data-toggle="tab" href="#<?php echo esc($value->slug) ?>" role="tab" aria-controls="<?php echo esc($value->slug) ?>" aria-selected="true"><?php echo esc($value->cat_name_en) ?></a>
                                <?php } } ?>


                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">


                                <?php if($faq_cat){ $count = 0; foreach ($faq_cat as $ckey => $cvalue) {  ?>
                                <div class="tab-pane fade <?php echo $count==0?'show active':''; ?>" id="<?php echo esc($cvalue->slug) ?>" role="tabpanel" aria-labelledby="<?php echo esc($cvalue->slug) ?>-tab">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="accordion">
                                                <?php if($faq){ foreach ($faq as $key => $value) {
                                                   if ($cvalue->cat_id==$value->cat_id) {

                                                    $headline = isset($lang) && $lang =="french"?@$value->headline_fr:@$value->headline_en;
                                                    $article  = isset($lang) && $lang =="french"?@$value->article1_fr:@$value->article1_en;
                                            
                                                ?>
                                                <li> 
                                                    <a><?php echo esc($headline); ?></a>
                                                    <p><?php echo htmlspecialchars_decode($article); ?></p>
                                                </li>

                                                <?php } } } ?>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <?php esc($count++); } } ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.End of faq content -->
        <div id="blog" class="section section-pad blog-section">
            <div class="polygon-over-st2 polygon-st4"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title text-center">
                            <?php if ($blog_cat) { ?>

                                <h2><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($blog_cat->cat_title1_fr):htmlspecialchars_decode($blog_cat->cat_title1_en); ?></h2>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($blog_cat->cat_title2_fr):htmlspecialchars_decode($blog_cat->cat_title2_en); ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="row">


<?php  
$this->db = db_connect();
if($blog){
    foreach ($blog as $news_key => $news_value) {
        $article_id         =   $news_value->article_id;
        $cat_id             =   $news_value->cat_id;
        $slug               =   $news_value->slug;
        $news_headline      =   isset($lang) && $lang =="french"?$news_value->headline_fr:$news_value->headline_en;
        $news_article1      =   isset($lang) && $lang =="french"?$news_value->article1_fr:$news_value->article1_en;
        $news_article_image =   $news_value->article_image;
        $publish_date       =   $news_value->publish_date;

        $cat_slug = $this->db->table('web_category')->select("slug, cat_name_en, cat_name_fr")->where('cat_id', $cat_id)->get()->getRow();
?>
                    <div class="col-md-4">
                        <article class="post-grid">
                            <figure> <a href="<?php echo base_url('blog/'.esc($cat_slug->slug)."/$slug"); ?>"> <img src="<?php echo base_url(esc($news_article_image)); ?>" class="img-fluid" alt="<?php echo strip_tags(htmlspecialchars_decode($news_headline)); ?>"> </a> </figure>
                            <span><a href="<?php echo base_url('blog/'.esc($cat_slug->slug)); ?>"><?php echo htmlspecialchars_decode($cat_slug->cat_name_en); ?></a></span>
                            <h4 class="post-title"><a href="<?php echo base_url('blog/'.esc($cat_slug->slug)."/$slug"); ?>"><?php echo htmlspecialchars_decode($news_headline); ?></a></h4>
                            <p class="post-des"><?php echo substr(strip_tags(htmlspecialchars_decode($news_article1)), 0, 110); ?></p>
                            <div class="information">
                                <span>
                                <?php
                                    $date=date_create(esc($publish_date));
                                    echo date_format(esc($date),"jS, F Y");
                                ?>
                                </span>
                            </div>
                        </article>
                        <!-- /.End of post grid --> 
                    </div>
                        <?php

                            }
                        }

                        ?>

                </div>
            </div>
        </div>
        <!-- /.End of blog section -->
        <div id="contact" class="section section-pad contact-info">
            <div class="polygon-over-st1 polygon-over-right polygon-st4"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="section-title text-center"> 
                            <?php if ($contact) { ?>
                                <h2><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($contact->cat_title1_fr):htmlspecialchars_decode($contact->cat_title1_en); ?></h2>
                                <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($contact->cat_title2_fr):htmlspecialchars_decode($contact->cat_title2_en); ?></p>

                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="row"> 
                    <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
                        <div class="feedback">

                           <?php echo form_open('home/contactMsg','id="contactForm"  class="contact_form" name="contactForm"'); ?>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" name="name"  placeholder="<?php echo display('your_name'); ?>" class="form-control font_color">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="email" name="email"  placeholder="<?php echo display('email'); ?>" class="form-control font_color">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject"  placeholder="Subject" class="form-control font_color">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control font_color" name="comment" placeholder="Your Comment..." rows="5"></textarea>
                                </div>
                                <div class="form-btn">
                                    <button type="submit" id="contact_send_message" class="btn btn-round btn-block"><?php echo display('send_message'); ?></button>
                                </div>
                            <?php echo form_close() ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.End of contact section -->
        <footer>
            <div class="main_footer">
                <div class="container">
                    <div class="testimonial-content">
                        <div class="row">
                            <div class="col-md-8 col-lg-6 ">
                                <div class="testimonials">

                                    <?php if ($testimonial) { ?>
                                    <?php foreach ($testimonial as $key => $value) { ?>

                                    <div class="testimonial">
                                        <blockquote>
                                            <p><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($value->article2_fr):htmlspecialchars_decode($value->article2_en); ?></p>
                                        </blockquote>
                                        <div> 
                                            <cite>
                                            <?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($value->headline_fr):htmlspecialchars_decode($value->headline_en); ?>
                                            </cite> 
                                            <span class="title"><?php echo isset($lang) && $lang =="french"?htmlspecialchars_decode($value->article1_fr):htmlspecialchars_decode($value->article1_en); ?></span> 
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <?php } ?>

                                </div>
                            </div>
                            <div class="col-md-6"></div>
                        </div>
                    </div>
                    <!--  /.End of testimonial --> 
                </div>
            </div>
        </footer>