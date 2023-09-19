<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
            <div class="card-header">
              <div class="d-flex justify-content-between align-items-center">
                <div>
                  <h6 class="fs-17 font-weight-600 mb-0"><?php echo (!empty($title)?esc($title):null) ?>
                  </h6>
                </div>
                <div class="text-right">
                    <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("backend/ico-settings/add-currency") ?>"><i class="fa fa-plus" aria-hidden="true"></i> <?php echo display('currency'); ?></a>
                </div>
              </div>
            </div>
            <div class="card-body">
                <?php echo form_open('#',array('id'=>'ajaxcointableform','name'=>'ajaxcointableform')); ?>
                <table id="ajaxcointable" class="table table-bordered table-hover">
                    <thead>
                        <tr>                             
                            <th><?php echo display('sl_no') ?></th>
                            <th><?php echo display('name') ?></th>
                            <th><?php echo display('iso_code'); ?></th>
                            <th><?php echo display('rate') ?></th>
                            <th width="40"><?php echo display('action') ?></th>
                        </tr>
                    </thead>    
                    <tbody>

                    </tbody>
                </table>
                <?php echo form_close(); ?>
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
<script src="<?php echo base_url("app/Modules/Ico_settings/Assets/Admin/js/custom.js") ?>"></script> 