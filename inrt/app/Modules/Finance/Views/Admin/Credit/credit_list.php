<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div  class="card-body table-responsive">
                <table id="example" class="table table-striped table-hover table-bordered">
                    <thead>
                        <tr>
                            <th width="50"><?php echo display('sl_no')?></th>
                            <th><?php echo display('user_id')?></th>
                            <th><?php echo display('amount')?></th>
                            <th><?php echo display('comment')?></th>
                            <th width="50" class="text-center"><?php echo display('action')?></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php if($credit_info != NULL){ 
                            $i=1;
                            foreach ($credit_info as $key => $value) {  
                        ?>
                        <tr>
                            <td><?php echo $i++;?></td>
                            <td><?php echo esc($value->user_id);?></td>
                            <td>$<?php echo esc($value->amount);?></td>
                            <td><?php echo esc($value->comment);?></td>
                            <td class="text-center">
                                <a class="btn btn-success" href="<?php echo base_url()?>/backend/credit/credit-details/<?php echo esc($value->id);?>"><?php echo display('view');?></a>
                            </td>
                        </tr>
                        <?php } } ?>
                    </tbody>
                </table>
                <?php echo  htmlspecialchars_decode($pager); ?>
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