<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo $title?$title:null;?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                           
                        </div>
                    </div>
                </div>
            </div>
            <?php 

                $data = json_decode($v->data);
            ?>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-4">&nbsp;</div>
                    <div class="col-sm-4">
                        <div class="border_preview">
                        <?php $att = array('name'=>'verify'); echo form_open('#',esc($att)); ?>
                            <?php echo form_hidden('verify_id',esc($v->id)); ?>
                            <div class="table-responsive">
                                <table class="table table-bordered table-stripe">
                                    <tbody>
                                        <tr>
                                            <th><?php echo display('amount');?></th>
                                            <td><?php echo esc($coininfo->pair_with)." ".esc($data->amount);?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo display('payment_method');?></th>
                                            <td><?php echo esc($data->method);?></td>
                                        </tr>
                                       
                                         <tr>
                                            <th><?php echo display('enter_verify_code');?></th>
                                            <td><input class="form-control" type="text" name="code" id="code"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="text-right">
                                <button type="button" id="confirm_withdraw_button" class="btn btn-success w-md m-b-5"><?php echo display('confirm'); ?></button>
                                <a href="<?php echo base_url('customer/home');?>" class="btn btn-danger w-md m-b-5"><?php echo display('cancel')?></a>
                            </div>
                            <?php echo form_close();?>

                        </div>
                    </div>
                    <div class="col-sm-4">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>
<link href="<?php echo base_url('public/assets/plugins/sweetalert/sweetalert.css') ?>" rel="stylesheet" type="text/css"/> 
<script src="<?php echo base_url('public/assets/plugins/sweetalert/sweetalert.min.js') ?>"></script>
<script src="<?php echo base_url('app/Modules/Finance/Assets/Customer/js/custom.js?v=1.9') ?>"></script>