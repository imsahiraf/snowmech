<?php
    $request   = \Config\Services::request();
    $segment_4 = $request->uri->setSilent()->getSegment(4);
?>
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body"  id="printableArea">
                <div class="row">
                    <div class="col-sm-6">
                        <img src="<?php echo base_url(!empty($settings->logo)?$settings->logo:"assets/images/icons/logo.png"); ?>" class="img-responsive" alt="">
                        <br>
                        <address>
                            <strong><?php echo esc($settings->title) ?></strong><br>
                            <?php echo esc($settings->description);?><br>
                            
                        </address>
                        
                    </div>
                    <div class="col-sm-6 text-right">
                        <h1 class="m-t-0"><?php echo display('withdraw_no'); ?> : <?php echo $segment_4; ?></h1>
                        <div><?php echo esc($withdraw->request_date);?></div>
                        <address>
                            <strong><?php echo esc($my_info->first_name).' '.esc($my_info->last_name);?></strong><br>
                            <?php echo esc($my_info->email);?><br>
                            <?php echo esc($my_info->phone);?><br>
                        </address>
                    </div>
                </div> <hr>
                <div class="table-responsive m-b-20">
                    <table class="table table-border table-bordered">
                        <thead>
                            <tr>
                                <th><?php echo display('payment_method')?></th>
                                <th><?php echo display('wallet_id')?></th>
                                <th><?php echo display('amount')?></th>
                                <th width="50" class="text-center"><?php echo display('status')?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div><strong><?php echo esc($withdraw->method);?></strong></div>
                                <td><?php echo esc($withdraw->wallet_id);?></td>
                                <td><?php echo esc($coininfo->pair_with)." ".esc($withdraw->amount);?></td>
                                <td class="text-center">
                                    <?php 
                                        if($withdraw->status==0){
                                            echo ('<b class="text-danger">Cancel</b>');
                                        }else if($withdraw->status==1){
                                            echo ('<b class="text-success">Success</b>');
                                        }else if($withdraw->status==2){
                                            echo ('<b class="text-warning">Pending</b>');
                                        }
                                    ?>
                                </td>
                            </tr>
                           
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-footer text-right p-4">
               <button type="button" class="btn btn-info" onclick="printContent('printableArea')"><span class="fa fa-print"></span></button>
            </div>
        </div>
    </div>
</div>