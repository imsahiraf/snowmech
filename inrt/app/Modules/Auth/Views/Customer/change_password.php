<?php if (!defined('APPPATH')) exit('No direct script access allowed');
//get site_align setting
$db = \Config\Database::connect();
$query = $db->query("Select title,site_align,logo,favicon from setting");
$settings   = $query->getRow();
$session = \Config\Services::session();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?= display('login') ?> - <?php echo (!empty($title) ? $title : null) ?></title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="<?php echo base_url(esc($settings->favicon)); ?>">

    <!-- Bootstrap -->
    <link href="<?php echo base_url('public/assets/plugins/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet">


    <!-- 7 stroke css -->
    <link href="<?php echo base_url('public/assets/css/pe-icon-7-stroke.css'); ?>" rel="stylesheet" type="text/css" />

    <!-- style css -->
    <link href="<?php //echo base_url('public/assets/css/custom.css?v=1.1'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url('public/assets/dist/css/style.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url("public/assets/css/login.css?v=1.5"); ?>" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="login-wrapper">
        <div class="container-center">
            <div class="card mb-4">
                <div class="card-header">
                    <div class="view-header">
                        <div class="header-icon">
                            <i class="pe-7s-unlock"></i>
                        </div>
                        <div class="header-title">
                            <h4 style="display: table-cell;"><?= display('change_password') ?></h4>
                            <small><strong><?php echo (!empty($title)?esc($title):null) ?></strong></small>
                        </div>
                    </div>

                </div>
                <div class="card-body">
                
                
                    <!-- alert message -->
                            <?php if ($session->get('message') != null) {  ?>
                            <div class="alert alert-info alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?php echo ($this->session->flashdata('message')); ?>
                            </div> 
                            <?php } ?>
                            
                            <?php if ($session->getFlashdata('exception') != null) {  ?>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <?php echo ($session->getFlashdata('exception')); ?>
                            </div>
                            <?php } ?>
                

                
                    <?php echo form_open_multipart("customer/change-save") ?>
                    <div class="form-group col-lg-12">
                            <label><?php echo display("enter_default_password") ?> <span class="text-danger">*</span></label>
                            <input type="password" class="form-control <?php if(isset($errorsList['old_pass'])){echo "common_error_border"; } ?>" value="<?php echo (isset($set_old->old_pass)?esc($set_old->old_pass):'');?>" name="old_pass" placeholder="<?php echo display("enter_default_password") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['old_pass'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['old_pass']; } ?></span>
                        </div>
                    <div class="form-group col-lg-12">
                            <label><?php echo display("enter_new_password") ?> <span class="text-danger">*</span></label>
                            <input type="password"  class="form-control <?php if(isset($errorsList['new_pass'])){echo "common_error_border"; } ?>" value="<?php echo (isset($set_old->new_pass)?esc($set_old->new_pass):'');?>" name="new_pass" placeholder="<?php echo display("enter_new_password") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['new_pass'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['new_pass']; } ?></span>
                        </div>

                        <div class="form-group col-lg-12">
                            <label><?php echo display("enter_confirm_password") ?> <span class="text-danger">*</span></label>
                            <input type="password"  class="form-control <?php if(isset($errorsList['confirm_pass'])){echo "common_error_border"; } ?>" name="confirm_pass" value="<?php echo (isset($set_old->confirm_pass)?esc($set_old->confirm_pass):'');?>" placeholder="<?php echo display("enter_confirm_password") ?>">
                            <span class="text-danger"><?php if(isset($errorsList['confirm_pass'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['confirm_pass']; } ?></span>
                        </div>


                    <div align="center">
                        <button type="submit" class="btn btn-success"><?php echo display("change") ?></button>
                    </div>
                    </form>
                </div>


            </div>
        </div>
    </div>

<script src="<?php echo base_url('public/assets/plugins/jQuery/jquery.min.js') ?>"></script>
<!-- bootstrap js -->
<script src="<?php echo base_url('public/assets/plugins/bootstrap/js/bootstrap.min.js') ?>"></script>
</body>

</html>

 