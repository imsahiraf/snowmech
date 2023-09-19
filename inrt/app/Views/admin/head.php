<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Bootstrap 4 Admin &amp; Dashboard Template">
    <meta name="author" content="Bdtask">
    <title><?php echo  $settings->title ?> - <?php echo (!empty($title) ? esc($title) : null) ?></title>
    <!-- App favicon -->
    <link rel="shortcut icon" href="<?php echo base_url() . $settings->favicon ?>">
    <!--Global Styles(used by all pages)-->

    <link href="<?php echo base_url("public/assets/plugins/bootstrap/css/bootstrap.min.css") ?>" rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/metisMenu/metisMenu.min.css") ?>" rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/fontawesome/css/all.min.css") ?>" rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/themify-icons/themify-icons.min.css")?>" rel="stylesheet">

    <link href="<?php echo base_url("public/assets/plugins/datatables/dataTables.bootstrap4.min.css") ?>"
        rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/datatables/responsive.bootstrap4.min.css") ?>"
        rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/datatables/buttons.bootstrap4.min.css") ?>" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
        rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/select2/dist/css/select2.min.css") ?>" rel="stylesheet">
    <link href="<?php echo base_url("public/assets/plugins/select2-bootstrap4/dist/select2-bootstrap4.min.css") ?>"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="<?php echo base_url("public/assets/dist/css/style.css?v=1.9") ?>" rel="stylesheet">
    <link href="<?php echo base_url("public/assets/css/custom.css?v=1.11") ?>" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
        rel="stylesheet">
    
        
    <script src="<?php echo base_url("public/assets/plugins/jQuery/jquery.min.js") ?>"></script>

    <input type="hidden" name="base_url" id="base_url" value="<?php echo esc(base_url()); ?>">
    <input type="hidden" name="segment" id="segment" value="<?php echo esc($uri->setSilent()->getSegment(2)); ?>">
    <input type="hidden" name="language" id="language" value="<?php echo esc($settings->language); ?>">
    <input type="hidden" name="csrf_hash" id="csrf_hash" value="<?php echo csrf_hash(); ?>">
    <input type="hidden" name="csrf_token" id="csrf_token" value="<?php echo csrf_token(); ?>">
</head>