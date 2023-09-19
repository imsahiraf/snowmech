<?php 
    $segment3 = $request->uri->setSilent()->getSegment(3);
?>
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
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@0,400;0,600;0,700;0,800;0,900;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!--Global Styles(used by all pages)-->
    <link href="<?php echo base_url('public/assets/css/jquery-ui.min.css') ?>" rel="stylesheet" type="text/css"/>
    <!--Global Styles(used by all pages)-->
    <link href="<?php echo base_url('public/assets/plugins/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('public/assets/plugins/fontawesome/css/all.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('public/assets/plugins/typicons/src/typicons.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('public/assets/plugins/themify-icons/themify-icons.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('public/assets/css/select2.min.css'); ?>" rel="stylesheet" type="text/css"/> 
    <link href="<?php echo base_url('public/assets/css/flash.css'); ?>" rel="stylesheet" type="text/css"/> 
    <!--Third party Styles(used by this page)--> 
    <?php if($segment3 != ''){?>
        <link href="<?php echo base_url('public/assets/plugins/datatables/dataTables.bootstrap4.min.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('public/assets/plugins/datatables/responsive.bootstrap4.min.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('public/assets/plugins/datatables/buttons.bootstrap4.min.css') ?>" rel="stylesheet">
    <?php } ?>
    <link href="<?php echo base_url('public/assets/plugins/bootstrap4-toggle/css/bootstrap4-toggle.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('public/assets/plugins/semantic/semantic.min.css') ?>" rel="stylesheet">

    <link href="<?php echo base_url('public/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.min.css' )?>" rel="stylesheet" type="text/css"/>
    <link href="<?php echo base_url('public/assets/plugins/OwlCarousel2-2.2.1/owl.theme.default.min.css') ?>" rel="stylesheet" type="text/css"/>
    <!--Third party Styles(used by this page)--> 
    <!--Start Your Custom Style Now-->
    <?php if (!empty($settings->site_align) && $settings->site_align == "RTL") {  ?>
        <link href="<?php echo base_url('public/assets/dist/css/style.rtl.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('public/assets/plugins/metisMenu/metisMenu-rtl.css') ?>" rel="stylesheet">
    <?php } else { ?>
        <link href="<?php echo base_url('public/assets/plugins/metisMenu/metisMenu.css') ?>" rel="stylesheet">
        <link href="<?php echo base_url('public/assets/dist/css/style.css') ?>" rel="stylesheet">
    <?php } ?>
    <link href="<?php echo base_url('public/assets/css/custom.css?v=1.1'); ?>" rel="stylesheet" type="text/css"/>
    <link href="<?php echo base_url('public/assets/css/custom-new.css?v=1.1'); ?>" rel="stylesheet" type="text/css"/>
    <!--Start Your Custom Style Now-->
    <script src="<?php echo base_url('public/assets/plugins/jQuery/jquery.min.js') ?>"></script>

    <script type="text/javascript">
        const base_url = '<?php echo esc(base_url()); ?>';
        const csrf_hash = '<?php echo csrf_hash(); ?>';
        const csrf_token = '<?php echo csrf_token(); ?>';
        var segment    = '<?php echo esc($request->uri->setSilent()->getSegment(2)); ?>';
        var language   = '<?php echo esc($settings->language); ?>';
    </script>
</head>