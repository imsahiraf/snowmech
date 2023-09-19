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
                <?php echo form_open_multipart(base_url("backend/ico-settings/add-currency/$currency->id")) ?>
                <?php echo form_hidden('id', esc($currency->id)) ?>
                
                    <div class="form-group row">
                        <label for="name" class="col-sm-4 col-form-label"><?php echo display('name'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="name" value="<?php echo esc($currency->name) ?>" class="form-control <?php if(isset($errorsList['name'])){echo "common_error_border"; } ?>" placeholder="Coin Name" type="text" id="name">
                            <span class="text-danger"><?php if(isset($errorsList['name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['name']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="icon" class="col-sm-4 col-form-label"><?php echo display('symbol'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="icon" value="<?php echo esc($currency->icon) ?>" class="form-control <?php if(isset($errorsList['icon'])){echo "common_error_border"; } ?>"  type="text" id="icon" value="<?php echo esc($currency->icon) ?>">
                            <span class="text-danger"><?php if(isset($errorsList['icon'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['icon']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="symbol" class="col-sm-4 col-form-label"><?php echo display('iso_code'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="symbol" value="<?php echo esc($currency->symbol) ?>" class="form-control <?php if(isset($errorsList['symbol'])){echo "common_error_border"; } ?>" placeholder="symbol" type="text" id="symbol">
                            <span class="text-danger"><?php if(isset($errorsList['symbol'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['symbol']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="rate" class="col-sm-4 col-form-label"><?php echo display('rate'); ?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="rate" value="<?php echo esc($currency->rate) ?>" class="form-control <?php if(isset($errorsList['rate'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('rate'); ?>" type="text" id="rate">
                            <span class="text-danger"><?php if(isset($errorsList['rate'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['rate']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="status" class="col-sm-4 col-form-label"><?php echo display('status') ?></label>
                        <div class="col-sm-8 mt-10 pt-10">
                            <label class="radio-inline">
                                <?php echo form_radio('status', '1', (($currency->status==1 || $currency->status==null)?true:false)); ?><?php echo display('active'); ?>
                             </label>
                            <label class="radio-inline">
                                <?php echo form_radio('status', '0', (($currency->status=="0")?true:false) ); ?><?php echo display('inactive'); ?>
                             </label> 
                        </div>
                    </div>
                    <div class="row">
                        <label for="rate" class="col-sm-4 col-form-label">&nbsp;</label>
                        <div class="col-sm-8">
                            <a href="<?php echo base_url('admin'); ?>" class="btn btn-primary  w-md m-b-5"><?php echo display("cancel") ?></a>
                            <button type="submit" class="btn btn-success  w-md m-b-5"><?php echo $currency->id?display("update"):display("create") ?></button>
                        </div>
                    </div>
                <?php echo form_close() ?>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>

 