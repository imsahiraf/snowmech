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
                    <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("backend/ico-settings/coin-release-add") ?>"><i class="fa fa-plus" aria-hidden="true"></i> Coin Release</a>
                </div>
              </div>
            </div>
            <div class="card-body">
                <table id="example" class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr> 
                            <th><?php echo display('sl_no') ?></th>
                            <th><?php echo display('round_name'); ?></th>
                            <th><?php echo display('day'); ?></th>
                            <th><?php echo display('target'); ?></th>
                            <th><?php echo display('fillup_target'); ?></th>
                            <th class="hide"><?php echo display('exchange_currency'); ?></th>
                            <th><?php echo display('date'); ?></th>
                            <th><?php echo display('status') ?></th>
                            <th width="40" class="text-center"><?php echo display('action') ?></th> 
                        </tr>
                    </thead>    
                    <tbody>
                        <?php if (!empty($coin_release)) ?>
                        <?php $sl = 1; ?>
                        <?php foreach ($coin_release as $value) { 

                            $percent  = ($value->fillup_target*100)/$value->target;

                        ?>
                        <tr>
                            <td><?php echo $sl++; ?></td>
                            <td><?php echo esc($value->round_name); ?></td>
                            <td><?php echo esc($value->day); ?></td>
                            <td><?php echo esc($value->target); ?></td>
                            <td><div class="progress progress-lg" style="background: darkgray;">
                                    <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="<?php echo $percent ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo esc($percent) ?>%">
                                        <?php echo esc($percent) ?>%
                                    </div>
                                </div>
                            </td>
                            <td class="hide"><?php echo esc($value->exchange_currency); ?></td>
                            <td><?php echo esc($value->start_date); ?></td>
                            <td><?php echo (($value->status==1)?display('active'):display('inactive')); ?></td>
                            <td class="text-center">
                                <a href="<?php echo base_url("backend/ico-settings/coin-release-add/$value->id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="hvr-buzz-out fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <?php } ?>  
                    </tbody>
                </table>
                <?php echo htmlspecialchars_decode($pager); ?>
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

 