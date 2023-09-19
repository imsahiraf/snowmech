<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 lobipanel-parent-sortable ui-sortable" data-lobipanel-child-inner-id="2jd65zBuH9">
        <div class="card" data-inner-id="2jd65zBuH9" data-index="0">
            <div class="card-body">
                    <div class="table-responsive">
                        <table id="example" class="table table-striped table-hover table-bordered datatable2">
                            
                            <thead>
                                <tr>
                                    <th><?php echo display('sl_no');?></th>
                                    <th><?php echo display('deposit_method')?></th>
                                    <th><?php echo display('deposit_amount')?></th>
                                    <th><?php echo display('fees')?></th>
                                    <th><?php echo display('comments')?></th>
                                    <th><?php echo display('date')?></th>
                                    <th class="text-center" width="40"><?php echo display('status')?></th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php if($deposit!=NULL){ 
                                    $i = 1;
                                    foreach ($deposit as $key => $value) {
                                ?>
                                <tr>
                                    <td><?php echo esc($i++);?></td>
                                    <td><?php echo esc($value->method);?></td>
                                    <td><?php echo esc(@$coininfo->pair_with).' '.esc($value->amount);?></td>
                                    <td><?php echo esc(@$coininfo->pair_with).' '.esc($value->fees_amount);?></td>
                                    <td><?php
                                            if (is_string($value->comment) && is_array(json_decode($value->comment, true)) && (json_last_error() == JSON_ERROR_NONE) ? true : false) {
                                               $mobiledata = json_decode($value->comment, true);
                                               echo '<b>'.display("om_name").':</b> '.esc($mobiledata['om_name']).'<br>';
                                               echo '<b>'.display("om_mobile_no").':</b> '.esc($mobiledata['om_mobile']).'<br>';
                                               echo '<b>'.display("transaction_no").':</b> '.esc($mobiledata['transaction_no']).'<br>';
                                               echo '<b>'.display("idcard_no").':</b> '.esc($mobiledata['idcard_no']);
                                            } else {
                                               echo $value->comment;
                                            }

                                     ?></td>
                                    <td><?php $date=date_create(esc($value->deposit_date));
                                            echo date_format(esc($date),"jS F Y");?></td>
                                    <td class="text-center">
                                        <?php if($value->status==0){?>
                                            <i title='<?php echo display('deposit')?>' class='fas fa-spinner fa-pulse mr-2 fs-20 text-warning'></i>
                                            <?php } else if($value->status==1){?>
                                            <i title='<?php echo display('success')?>' class='fas fa-check mr-2 fs-20 text-success'></i>
                                            <?php } else if($value->status==2){ ?>
                                            <i title='<?php echo display('cancel')?>' class='far fa-times-circle mr-2 fs-20 text-danger'></i>
                                        <?php } ?>
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
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.bootstrap4.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.responsive.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/responsive.bootstrap4.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.buttons.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.bootstrap4.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/jszip.min.js") ?>"></script>

<script src="<?php echo base_url("public/assets/plugins/datatables/pdfmake.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/vfs_fonts.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.html5.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.print.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.colVis.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/data-bootstrap4.active.js") ?>"></script> 