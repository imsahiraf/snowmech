<?php 
    $request  = \Config\Services::request();
    $session  = session();
    $segment1 = $request->uri->setSilent()->getSegment(1);
    $segment2 = $request->uri->setSilent()->getSegment(2);
    $segment3 = $request->uri->setSilent()->getSegment(3);
    $db       = db_connect();
?>
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
                   <?php
                        if($segment3!="content"){
                    ?>
                    <a class="btn btn-success w-md m-b-5 pull-right" href="<?php echo base_url("backend/cms/".$segment3."/form") ?>"><i class="fa fa-plus" aria-hidden="true"></i> <?php echo display($segment3); ?></a>
                    <?php
                        }
                    ?>
                </div>
              </div>
            </div>
            <div class="card-body">
                <table id="example" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('sl_no') ?></th>
                            <th><?php echo display('headline_en') ?></th>
                            <th><?php echo display('category') ?></th>
                            <th><?php echo display('sl_no') ?></th>
                            <th class="text-center" width="50"><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($article)) ?>
                        <?php $sl = 1; ?>
                        <?php foreach ($article as $value) {
                            $catgory_name = $db->table('web_category')->select("cat_name_en, cat_name_fr")->where('cat_id', $value->cat_id)->get()->getRow();
                        ?>
                        <tr>
                            <td><?php echo $sl++; ?></td>
                            <td><?php echo esc($value->headline_en); ?></td>
                            <td><?php echo esc($catgory_name->cat_name_en); ?></td>
                            <td><?php echo esc($value->position_serial); ?></td>
                            <td class="text-center">
                                <a href="<?php echo base_url("backend/cms/".$segment3."/form/$value->article_id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="hvr-buzz-out fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <?php echo htmlspecialchars_decode($pager); ?>
            </div>
        </div>
        <?php
            if($segment2 == "cms" && $segment3 == "team"){
        ?>
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <h2><?php echo display('team_overview');?></h2>
                </div>
            </div>
            <div class="card-body">
                <?php echo form_open_multipart("backend/cms/team/overview") ?>

                    <div class="form-group row">
                        <label for="overviewheaderen" class="col-sm-3 col-form-label"><?php echo display('overview_header_en')?><i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="<?php echo display('overview_header_en')?>" value="<?php echo esc(@$team_overview->headline_en) ?>" name="overviewheaderen" id="overviewheaderen" class="form-control <?php if(isset($errorsList['first_name'])){echo "common_error_border"; } ?>">
                            <span class="text-danger"><?php if(isset($errorsList['overviewheaderen'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['overviewheaderen']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="overviewheaderfr" class="col-sm-3 col-form-label"><?php echo display('overview_header_fr')?><i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="<?php echo display('overview_header_fr')?>"  value="<?php echo esc(@$team_overview->headline_fr) ?>" name="overviewheaderfr" id="overviewheaderfr" class="form-control" <?php if(isset($errorsList['overviewheaderfr'])){echo "common_error_border"; } ?>>
                            <span class="text-danger"><?php if(isset($errorsList['overviewheaderfr'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['overviewheaderfr']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="subheaderen" class="col-sm-3 col-form-label"><?php echo display('sub_header_en')?><i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="<?php echo display('sub_header_en')?>" name="subheaderen" id="subheaderen" value="<?php echo esc(@$team_overview->article1_en) ?>" class="form-control" <?php if(isset($errorsList['subheaderen'])){echo "common_error_border"; } ?>>
                            <span class="text-danger"><?php if(isset($errorsList['subheaderen'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['subheaderen']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="subheaderfr" class="col-sm-3 col-form-label"><?php echo display('sub_header_fr')?><i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <input type="text" placeholder="<?php echo display('sub_header_fr')?>" name="subheaderfr" id="subheaderfr" value="<?php echo esc(@$team_overview->article1_fr) ?>" class="form-control" <?php if(isset($errorsList['subheaderfr'])){echo "common_error_border"; } ?>>
                            <span class="text-danger"><?php if(isset($errorsList['subheaderfr'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['subheaderfr']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="descriptionen" class="col-sm-3 col-form-label"><?php echo display('description_en')?><i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <span class="text-danger"><?php if(isset($errorsList['descriptionen'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['descriptionen']; } ?></span>
                            <textarea rows="10" placeholder="<?php echo display('description_en')?>" name="descriptionen" id="descriptionen" class="form-control" <?php if(isset($errorsList['descriptionen'])){echo "common_error_border"; } ?>><?php echo esc(@$team_overview->article2_en) ?></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="descriptionfr" class="col-sm-3 col-form-label"><?php echo display('description_fr')?><i class="text-danger">*</i></label>
                        <div class="col-sm-7">
                            <span class="text-danger"><?php if(isset($errorsList['descriptionfr'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['descriptionfr']; } ?></span>
                            <textarea  rows="10" placeholder="<?php echo display('description_fr')?>" name="descriptionfr" id="descriptionfr" class="form-control" <?php if(isset($errorsList['descriptionfr'])){echo "common_error_border"; } ?>><?php echo esc(@$team_overview->article2_fr) ?></textarea>
                        </div>
                    </div>
                    <div class="row text-center" >
                        <div class="col-sm-9 col-sm-offset-3">
                            <button type="submit" class="btn btn-success  w-md m-b-5"><?php echo display("update") ?></button>
                        </div>
                    </div>

                <?php echo form_close()?>
            </div>
        </div>
        <?php }?>
    </div>
</div>

