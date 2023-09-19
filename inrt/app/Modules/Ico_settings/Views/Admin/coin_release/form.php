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
                <?php echo form_open_multipart(base_url("backend/ico-settings/coin-release-add/$coin_release->id")) ?>
                <?php echo form_hidden('id', esc($coin_release->id)) ?>
                <?php $date = explode(" ", esc($coin_release->start_date)) ?>

                    <div class="form-group row">
                        <label for="round_name" class="col-sm-4 col-form-label"><?php echo display('round_name')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="round_name" value="<?php echo esc($coin_release->round_name) ?>" class="form-control <?php if(isset($errorsList['round_name'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('round_name')?>" type="text" id="round_name">
                            <span class="text-danger"><?php if(isset($errorsList['round_name'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['round_name']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="target" class="col-sm-4 col-form-label"><?php echo display('target')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="target" value="<?php echo $coin_release->target ?>" class="form-control <?php if(isset($errorsList['target'])){echo "common_error_border"; } ?>" placeholder="10000" type="number" id="target">
                            <span class="text-danger"><?php if(isset($errorsList['target'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['target']; } ?></span>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="start_date" class="col-sm-4 col-form-label"><?php echo display('release_date')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="start_date" value="<?php echo esc($date[0]) ?>" class="form-control <?php if(isset($errorsList['start_date'])){echo "common_error_border"; } ?>"  type="date" id="start_date">
                            <span class="text-danger"><?php if(isset($errorsList['start_date'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['start_date']; } ?></span>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="start_time" class="col-sm-4 col-form-label"><?php echo display('release_time')?><i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="start_time" value="<?php echo esc($date[1]) ?>" class="form-control <?php if(isset($errorsList['start_time'])){echo "common_error_border"; } ?>" type="time" id="start_time">
                            <span class="text-danger"><?php if(isset($errorsList['start_time'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['start_time']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="day" class="col-sm-4 col-form-label"><?php echo display('duration')?>(day)<i class="text-danger">*</i></label>
                        <div class="col-sm-8">
                            <input name="day" value="<?php echo esc($coin_release->day) ?>" class="form-control <?php if(isset($errorsList['day'])){echo "common_error_border"; } ?>" placeholder="7" type="number" id="day">
                            <span class="text-danger"><?php if(isset($errorsList['day'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['day']; } ?></span>
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="status" class="col-sm-4 col-form-label"><?php echo display('status') ?></label>
                        <div class="col-sm-8">
                            <label class="radio-inline mt-10">
                                <?php echo form_radio('status', '1', (($coin_release->status==1 || $coin_release->status==null)?true:false)); ?><?php echo display('active'); ?>
                             </label>
                            <label class="radio-inline">
                                <?php echo form_radio('status', '0', (($coin_release->status=="0")?true:false) ); ?><?php echo display('inactive'); ?>
                             </label> 
                        </div>
                    </div>
                    <div class="row">
                        <label for="" class="col-sm-4 col-form-label">&nbsp;</label>
                        <div class="col-sm-8">
                            <a href="<?php echo base_url('admin'); ?>" class="btn btn-primary  w-md m-b-5"><?php echo display("cancel") ?></a>
                            <button type="submit" class="btn btn-success  w-md m-b-5" <?php echo @$checktargetfilup->fillup_target>0?"disabled":Null;?> ><?php echo $coin_release->id?display("update"):display("create") ?></button>
                        </div>
                    </div>
                <?php echo form_close() ?>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
 