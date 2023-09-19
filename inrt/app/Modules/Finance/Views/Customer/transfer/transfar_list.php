<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 lobipanel-parent-sortable ui-sortable" data-lobipanel-child-inner-id="zvTmPK6RKK">
        <div class="card panel-bd lobidrag lobipanel lobipanel-sortable" data-inner-id="zvTmPK6RKK" data-index="0">
             <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('transfer_list');?></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions"></div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="border_preview">
                    <div class="table-responsive">
                        <table id="example" class="datatable2 table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th><?php echo display('name');?></th>
                                    <th><?php echo display('type');?></th>
                                    <th><?php echo display('amount');?>(<?php echo esc($coininfo->pair_with); ?>)</th>
                                    <th><?php echo display('date');?></th>
                                    <th><?php echo display('mobile');?></th>
                                    <th><?php echo display('action');?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if($transfer!=NULL){ 
                                    $this->session = \Config\Services::session(); 
                                    $user_id = $this->session->get('user_id');
                                    foreach ($transfer as $key => $value) {  

                                ?>
                                <tr>
                                    <td><?php echo esc($value->first_name).' '.esc($value->last_name);?></td>
                                    <td><?php echo ($value->receiver_user_id==$user_id?'<b class="text-success">'.display('receive').'</b>':'<b class="text-danger">'.display('send').'</b>');?></td>
                                    <td><?php echo esc($value->amount);?></td>
                                    <td><?php echo esc($value->date);?></td>
                                    <td><?php echo esc($value->phone);?></td>
                                    <td>
                                        <a class="btn btn-success" href="<?php echo base_url()?>/customer/finance/<?php echo ($value->receiver_user_id==$user_id?'transfer-receive':'send-details');?>/<?php echo $value->transfer_id;?>"><?php echo display('details')?></a>
                                      
                                    </td>
                                </tr>
                                <?php } } ?>

                            </tbody>
                        </table>
                        <?php echo htmlspecialchars_decode($pager); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>