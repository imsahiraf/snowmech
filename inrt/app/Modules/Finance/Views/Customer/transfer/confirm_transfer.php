<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('transfer');?></h6>
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
                            <div class="table-responsive">
                                <?php 
                                $att = array('name'=>'verify');
                                echo form_open('#',esc($att));

                                ?>
                                <?php echo form_hidden('verify_id',esc($v->id)); ?>
                                <table class="table table-border table-stripe" >
                                    <tbody>
                                        <tr>
                                            <th><?php echo display('receiver_name')?></th>
                                            <td><?php echo esc($user->first_name).' '. esc($user->last_name);?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo display('email');?></th>
                                            <td><?php echo esc($user->email);?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo display('user_id');?></th>
                                            <td><?php echo esc($user->user_id);?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo display('transfer_amount');?></th>
                                            <td><?php echo esc($coininfo->pair_with); ?> <?php echo esc($data->amount);?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo display('enter_verify_code');?></th>
                                            <td><input class="form-control" type="text" name="code" id="code"></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <?php echo form_close();?>
                            </div>
                            <div class="text-right">
                                <button type="button" id="confirm_transfer_button" class="btn btn-success w-md m-b-5"><?php echo display('confirm'); ?></button>
                                <button type="button" class="btn btn-danger w-md m-b-5"><?php echo display('cancel'); ?></button>
                            </div>
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
<script src="<?php echo base_url('app/Modules/Finance/Assets/Customer/js/custom.js?v=1.8df') ?>"></script>