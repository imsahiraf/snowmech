<div class="card">
    <div class="card-body">
        <table id="example" class="table table-bordered table-striped table-hover">
            <thead>
                <tr> 
                    <th width="80"><?php echo display('sl_no') ?></th>
                    <th><?php echo display('email') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php if($subscriber != NULL){ 
                    $i=1;
                    foreach ($subscriber as $key => $value) {  
                ?>
                    <tr>
                        <td width="80"><?php echo $i++;?></td>
                        <td><?php echo esc($value->email);?></td>
                    </tr>
                <?php } } ?>
            </tbody>
        </table>
        <?php echo htmlspecialchars_decode($pager); ?>
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
