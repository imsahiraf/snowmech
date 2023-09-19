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
                <?php echo form_open_multipart("backend/ico-settings/coin-setup") ?>
                    <div class="form-group row">
                        <label for="coin_name" class="col-sm-3 col-form-label"><?php echo display('name'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-6">
                            <input name="coin_name" class="form-control <?php if(isset($errorsList['coin_name'])){echo "common_error_border"; } ?>" value="<?php echo esc(@$coin_setup->name) ?>" type="text" id="coin_name">
                            <span class="text-danger"><?php if(isset($errorsList['coin_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['coin_name']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="coin_symbol" class="col-sm-3 col-form-label"><?php echo display('symbol'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-6">
                            <input name="coin_symbol" class="form-control <?php if(isset($errorsList['coin_symbol'])){echo "common_error_border"; } ?>"  value="<?php echo esc(@$coin_setup->symbol) ?>" type="text" id="coin_symbol">

                            <span class="text-danger"><?php if(isset($errorsList['coin_symbol'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['coin_symbol']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="pair_with" class="col-sm-3 col-form-label"><?php echo display('pair_with'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-6">
                            <select class="form-control <?php if(isset($errorsList['pair_with'])){echo "common_error_border"; } ?> basic-single" name="pair_with" id="pair_with">
                                <?php  
                                    foreach ($currency as $key => $value) { ?>
                                        <option <?php echo $coin_setup->pair_with==$value->symbol? "selected":null ?> value="<?php echo esc($value->symbol); ?>"><?php echo esc($value->symbol); ?></option>
                                <?php } ?>
                            </select>
                            <span class="text-danger"><?php if(isset($errorsList['pair_with'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['pair_with']; } ?></span>
                        </div>
                    </div>
                    <div class="row">
                        <label for="" class="col-sm-3 col-form-label">&nbsp;</label>
                        <div class="col-sm-9">
                            <button type="submit" class="btn btn-success  w-md m-b-5"><?php echo display('submit')?></button>
                        </div>
                    </div>
                <?php echo form_close() ?>
                    <div class="row">
                        <label for="" class="col-sm-3 col-form-label">&nbsp;</label>
                        <div class="col-sm-6">
                            <div class="notice-board">
                                <p class="text-default">Note: Please don't change pairing currency, when system (or Bussines) start. Change it before start Bussines.</p>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
