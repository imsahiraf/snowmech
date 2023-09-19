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
                <div class="row">
                    <?php echo form_open_multipart("backend/ico-settings/menu-control/save") ?>
                    <div class="col-md-12">
                        <fieldset>
                            <legend> <?php echo display('menu_control_settings'); ?> </legend>
                            <div class="checkbox checkbox-primary">
                                <input id="checkbox1" type="checkbox" name="ico_wallet" <?php echo $control->ico_wallet==1?"checked":""; ?>>
                                <label for="checkbox1"><?php echo display('ico_wallet'); ?></label>
                            </div>
                            <div class="checkbox checkbox-primary">
                                <input id="checkbox2" type="checkbox" name="exchange" <?php echo $control->exchange==1?"checked":""; ?>>
                                <label for="checkbox2"><?php echo display('exchange'); ?></label>
                            </div>
                            <div class="checkbox checkbox-primary">
                                <input id="checkbox3" type="checkbox" name="package"  <?php echo $control->package==1?"checked":""; ?>>
                                <label for="checkbox3"><?php echo display('package'); ?></label>
                            </div>
                        </fieldset>
                    </div>
                    <div class="col-md-12 mt-10">
                        <div class="mt-20">
                        <button type="submit" class="btn btn-success"><?php echo display("save") ?></button>
                        </div>
                    </div>
                    <?php echo form_close() ?>
                </div> 
            </div>
        </div>
    </div>
</div>




 