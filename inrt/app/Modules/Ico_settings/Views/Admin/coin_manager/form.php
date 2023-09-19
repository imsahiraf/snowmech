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
                   
                </div>
              </div>
            </div>
            <div class="card-body">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="border_preview">
                <?php echo form_open_multipart("backend/ico-settings/coin-manager/".@$coin_manager->id) ?>
                <?php echo form_hidden('id', esc(@$coin_manager->id)) ?> 

                    <div class="form-group row">
                        <label for="total_coin" class="col-sm-4 col-form-label"><?php echo display('total_coin')?></label>
                        <div class="col-sm-8">
                            <input name="total_coin" value="0" class="form-control" type="text" id="total_coin" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="hold_coin" class="col-sm-4 col-form-label"><?php echo display('hold_coin')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="hold_coin" value="<?php echo esc(@$coin_manager->hold_coin) ?>" class="form-control <?php if(isset($errorsList['hold_coin'])){echo "common_error_border"; } ?> coin" placeholder="15000" type="number" id="hold_coin">
                            <span class="text-danger"><?php if(isset($errorsList['hold_coin'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['hold_coin']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="pre_sell" class="col-sm-4 col-form-label"><?php echo display('pre_sell')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="pre_sell" value="<?php echo esc(@$coin_manager->pre_sell) ?>" class="form-control <?php if(isset($errorsList['pre_sell'])){echo "common_error_border"; } ?> coin" placeholder="15000" type="number" id="pre_sell">
                            <span class="text-danger"><?php if(isset($errorsList['pre_sell'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['pre_sell']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="sell_available" class="col-sm-4 col-form-label"><?php echo display('sell_available')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="sell_available" value="<?php echo esc(@$coin_manager->sell_available) ?>" class="form-control <?php if(isset($errorsList['sell_available'])){echo "common_error_border"; } ?> coin" placeholder="15000" type="number" id="sell_available">
                            <span class="text-danger"><?php if(isset($errorsList['sell_available'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['sell_available']; } ?></span>
                        </div>
                    </div>
                    <div class="row">
                         <label for="sell_available" class="col-sm-4 col-form-label">&nbsp;</label>
                        <div class="col-sm-8">
                            <a href="<?php echo base_url('admin'); ?>" class="btn btn-primary  w-md m-b-5"><?php echo display("cancel") ?></a>
                            <button type="submit" class="btn btn-success  w-md m-b-5"><?php echo @$coin_manager->id?display("update"):display("create") ?></button>
                        </div>
                    </div>
                <?php echo form_close() ?>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo base_url("app/Modules/Ico_settings/Assets/Admin/js/custom.js") ?>"></script> 