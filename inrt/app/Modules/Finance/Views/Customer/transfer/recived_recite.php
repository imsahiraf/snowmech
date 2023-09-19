<?php

    $request   = \Config\Services::request();
    $segment_1 = $request->uri->setSilent()->getSegment(2);
    $segment_3 = $request->uri->setSilent()->getSegment(3);
    $segment_4 = $request->uri->setSilent()->getSegment(4);

?>
<div class="row">
    <div class="col-sm-12">
        <div class="card panel-bd">
            <div class="card-body"  id="printableArea">
                <div class="row">
                    <div class="col-sm-6">
                        <img src="<?php echo base_url(!empty($settings->logo)?esc($settings->logo):"assets/images/icons/logo.png"); ?>" class="img-responsive" alt="">
                        <br>
                        <address>
                            <strong><?php echo  esc($settings->title) ?></strong><br>
                            <?php echo esc($settings->description);?><br>
                        
                        </address>
                        
                    </div>

                    <div class="col-sm-6 text-right">
                        <h1 class="m-t-0"><?php echo display('transfer_no'); ?> : <?php echo $segment_4 ?></h1>
                        <div><?php echo date('d-M-Y');?></div>
                        <address>
                            <strong><?php echo esc($my_info->first_name).' '.esc($my_info->last_name);?></strong><br>
                            <?php echo esc($my_info->email);?><br>
                            <?php echo esc($my_info->phone);?><br>
                            <abbr title="Phone"><?php echo display('account'); ?> :</abbr> <?php echo esc($my_info->user_id);?>
                        </address>
                    </div>
                </div> <hr>
                <div class="table-responsive m-b-20">
                    <table class="table  table-bordered">
                        <tbody>
                            <tr>
                                <th><?php echo display('form_to');?></th>
                                <td><?php echo esc($send->first_name).' '. esc($send->last_name);?></td>
                            </tr>
                            <tr>
                                <th><?php echo display('email');?></th>
                                <td><?php echo esc($send->email);?></td>
                            </tr>
                            <tr>
                                <th><?php echo display('user_id');?></th>
                                <td><?php echo esc($send->user_id);?></td>
                            </tr>
                            <tr>
                                <th><?php echo display('transfer_amount');?></th>
                                <td><?php echo esc($coininfo->pair_with." ".$send->amount);?></td>
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
