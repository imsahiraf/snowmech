<?php 
    $request = \Config\Services::request();
    $this->db = db_connect();
    $settings = $this->db->table('setting')->select("*")->get()->getRow(); 
?>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link href="https://fonts.googleapis.com/css?family=Tajawal:200,300,400,500,700,800,900" rel="stylesheet"> 
        <link rel="shortcut icon" href="<?php echo base_url($settings->favicon); ?>">
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"> 
        <link href="<?php echo BASEPATH.'assets/website/css/bootstrap.min.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/fontawesome/css/fontawesome-all.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/css/metisMenu.min.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/css/jquery.mCustomScrollbar.min.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/css/magnific-popup.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/slick/slick.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/css/flipclock.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/css/style.css'; ?>" rel="stylesheet">
        <link href="<?php echo BASEPATH.'assets/website/css/style-new.css?v=1.0'; ?>" rel="stylesheet">
        <title><?php echo $settings->title ?></title>
        <script type="text/javascript">
            const base_url = '<?php echo base_url(); ?>';
            var segment    = '<?php echo $request->uri->setSilent()->getSegment(1); ?>';
            var language   = '<?php echo esc($lang); ?>';
        </script>
    </head>
    <body id="page-top" class="body-bg">
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- /.End of loader wrapper --> 
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg fixed-top" id="mainNav">
            <div class="container"> <a class="navbar-brand" href="<?php echo base_url() ?>"><img class="logo" src="<?php echo base_url(esc($settings->logo_web)) ?>" alt="<?php echo esc($settings->title) ?>"></a>
                <div class="nav-toggle-btn d-flex d-lg-none">
                    <div class="lng_dropdown">
                        <?php echo form_open('#',array('id'=>'language_select2')); ?>
                        <select name="lang" class="lng_select2">
                            <option value="english" data-image="<?php echo BASEPATH.'assets/website/img/eng.png'; ?>" <?php echo isset($lang) && $lang =="english"?'Selected':''; ?> data-title="English">EN</option>
                            <option value="french" data-image="<?php echo BASEPATH.'assets/website/img/fn.png'; ?>" <?php echo isset($lang) && $lang =="french"?'Selected':''; ?> data-title="France"><?php echo esc($web_language->flag); ?></option>
                        </select>
                        <?php echo form_close(); ?>
                    </div>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle user-icon" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user-circle"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">

                        <?php if($session->get('user_id')!=NULL){?>
                            <a class="dropdown-item" href="<?php echo base_url('customer/home'); ?>"><?php echo display('dashboard'); ?></a> 
                            <a class="dropdown-item" href="<?php echo base_url('customer/auth/logout'); ?>"><?php echo display('logout'); ?></a>
                        <?php } else{ ?>
                            <?php if(!$session->get('isAdmin')){ ?>
                                <a class="dropdown-item" href="<?php echo base_url('login') ?>"><?php echo display('login_or_register'); ?></a>
                            <?php } ?>
                        <?php } ?>
                        </div>
                    </div>

                    <button type="button" class="navbar-toggler" id="sidebarCollapse">
                        <span class="navbar-toggler-icon"></span> 
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav mx-auto">
                    <?php
                            foreach ($category as $cat_key => $cat_value) {                                
                                if ($cat_value->parent_id==0 && ($cat_value->menu==1 || $cat_value->menu==4|| $cat_value->menu==5)) {
                                    $cat_name = isset($lang) && $lang =="french"?$cat_value->cat_name_fr:$cat_value->cat_name_en;
                    ?>
                                <li class="nav-item"> <a class="nav-link js-scroll-trigger" href="<?php echo base_url()?>#<?php echo esc($cat_value->slug) ?>"><?php echo esc($cat_name); ?></a> </li>
                                </li>
                    <?php
                                }

                            }
                    ?>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <div class="lng_dropdown">
                                <?php echo form_open('#',array('id'=>'language_select')); ?>
                                <select name="lang" class="lng_select">
                                    <option value="english" data-image="<?php echo BASEPATH.'assets/website/img/eng.png'; ?>" <?php echo isset($lang) && $lang =="english"?'Selected':''; ?> data-title="English">EN</option>
                                    <option value="french" data-image="<?php echo BASEPATH.'assets/website/img/fn.png'; ?>" <?php echo isset($lang) && $lang =="french"?'Selected':''; ?> data-title="France"><?php echo esc($web_language->flag); ?> </option>
                                </select>
                                <?php echo form_close(); ?>
                            </div>
                        </li>
                        <?php if($session->get('user_id')!=NULL){?>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> <?php echo display('account'); ?></a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown"> 
                                <a class="dropdown-item" href="<?php echo base_url('customer/dashboard'); ?>"><?php echo display('dashboard'); ?></a> 
                                <a class="dropdown-item" href="<?php echo base_url('customer/logout'); ?>"><?php echo display('logout'); ?></a>
                            </div>
                        </li>
                        <?php } else{ ?>
                        <?php if($session->get('isAdmin')){ ?>
                                <li class="nav-item"> <a href="<?php echo base_url('backend/dashboard') ?>" class="btn btn-gradient-o btn-round btn-link">Dashboard</a></li>
                            <?php }else{ ?>
                                <li class="nav-item"> <a href="<?php echo base_url('login') ?>" class="btn btn-gradient-o btn-round btn-link"><?php echo display('login_or_register'); ?></a></li>
                            <?php } ?>
                        <?php } ?>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /.End of navbar -->
        <nav id="sidebar">
            <div id="dismiss"> <i class="fas fa-times"></i> </div>
            <ul class="metismenu list-unstyled" id="mobile-menu">

            <?php
                foreach ($category as $cat_key => $cat_value) {                                
                    if ($cat_value->parent_id==0 && ($cat_value->menu==1 || $cat_value->menu==4|| $cat_value->menu==5)) {
                        $cat_name = isset($lang) && $lang =="french"?$cat_value->cat_name_fr:$cat_value->cat_name_en;
            ?>
                <li><a class="js-scroll-trigger" href="#<?php echo esc($cat_value->slug) ?>"><span class="menu"><?php echo esc($cat_name); ?></span></a></li>
            <?php
                        }

                    }
            ?>

            </ul>
        </nav>
        <div class="overlay" id="overlay"></div>
        <!-- /.End of sidebar nav -->