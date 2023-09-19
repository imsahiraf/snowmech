<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 lobipanel-parent-sortable ui-sortable" data-lobipanel-child-inner-id="5lmZlfyErQ">
        
        <!-- alert message -->
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?php echo display('check_your_email'); ?> 
        </div> 
            
        <div class="card" data-inner-id="5lmZlfyErQ" data-index="0">

            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('change_verify')?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                            <a href="#" class="action-item"></a>
                        </div>
                    </div>
                </div>
            </div>

            <?php 

            ?>

            <div class="card-body">
                <div class="row">
                
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <div class="">
                        <form action="#" name="verify">
                            <input type="hidden" id="my-id" name="csrf_test_name" value="<?php echo csrf_hash();?>" />
                        <?php 
                            //$att = array('name'=>'verify');
                            //echo form_open('#',esc($att));
                            echo form_hidden('profile_id', $profile_id);
                        ?>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>

                                        <tr>
                                            <th><?php echo display('enter_verify_code');?></th>
                                            <td><input class="form-control" type="text" name="code" id="code"></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="text-right">
                                <input type="submit"  id="profile_update_confirm" name="submit"  class="btn btn-success w-md m-b-5" value="<?php echo display('confirm');?>">
                                <a href="<?php echo base_url('customer/account/profile'); ?>"><button type="button" class="btn btn-danger w-md m-b-5"><?php echo display('cancle');?></button></a>
                            </div>
                        </form>
                            <?php //echo form_close();?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<link href="<?php echo base_url('public/assets/plugins/sweetalert/sweetalert.css')?>" rel="stylesheet">
<script src="<?php echo base_url('public/assets/plugins/sweetalert/sweetalert.min.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('app/Modules/User/Assets/Customer/js/custom.js?v=1.6');?>" type="text/javascript"></script>