<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="fs-17 font-weight-600 mb-0"></h6>
                    </div>
                    <div class="text-right">
                        <div class="actions">
                            <a href="#" class="action-item"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="border_preview">
                <?php echo form_open_multipart(base_url("backend/cms/advisors/form/$article->article_id")) ?>
                <?php echo form_hidden('article_id', $article->article_id) ?> 
                    <div class="form-group row">
                        <label for="headline_en" class="col-sm-2 col-form-label"><?php echo display('name') ?><i class="text-danger">*</i></label>
                        <div class="col-sm-10">
                            <input name="headline_en" value="<?php echo esc($article->headline_en) ?>" class="form-control <?php if(isset($errorsList['headline_en'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('name') ?>" type="text" id="headline_en" maxlength="15">
                            <span class="text-danger"><?php if(isset($errorsList['headline_en'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['headline_en']; } ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2 col-form-label"><?php echo display('image') ?>(MAX 2MB)</label>
                        <div class="col-sm-10">
                            <input name="article_image" class="form-control" placeholder="<?php echo display('image') ?>" type="file" id="article_image">
                            <span class="text-danger">205x205 px(jpg, jpeg, png)</span><br>
                             <input type="hidden" name="article_image_old" value="<?php echo $article->article_image ?>">
                             <?php if (!empty($article->article_image)) { ?>
                                <img src="<?php echo base_url($article->article_image) ?>" width="150">
                             <?php } ?>
                             <span class="text-danger"><?php if(isset($errorsList['article_image'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['article_image']; } ?></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="article1_en" class="col-sm-2 col-form-label"><?php echo display('designation') ?></label>
                        <div class="col-sm-10">
                            <input name="article1_en" value="<?php echo esc($article->article1_en) ?>" class="form-control" placeholder="<?php echo display('name') ?>" type="text" id="article1_en">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="article1_fr" class="col-sm-2 col-form-label">Linkedin</label>
                        <div class="col-sm-10">
                            <input name="article1_fr" value="<?php echo esc($article->article1_fr) ?>" class="form-control" placeholder="" type="text" id="article1_fr">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="article2_en" class="col-sm-2 col-form-label">Twitter</label>
                        <div class="col-sm-10">
                            <input name="article2_en" value="<?php echo esc($article->article2_en) ?>" class="form-control" placeholder="" type="text" id="article2_en">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="article2_fr" class="col-sm-2 col-form-label">Facebook</label>
                        <div class="col-sm-10">
                            <input name="article2_fr" value="<?php echo esc($article->article2_fr) ?>" class="form-control" placeholder="" type="text" id="article2_fr">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="position_serial" class="col-sm-2 col-form-label"><?php echo display('position_serial') ?><i class="text-danger">*</i></label>
                        <div class="col-sm-10">
                            <input name="position_serial" value="<?php echo esc($article->position_serial) ?>" class="form-control <?php if(isset($errorsList['position_serial'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('position_serial') ?>" type="number" id="position_serial" max="<?php echo esc($max_position); ?>" min="1">
                             <span class="text-danger"><?php if(isset($errorsList['position_serial'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['position_serial']; } ?>
                        </div>
                    </div>
                    <div class="row">
                        <label for="" class="col-sm-2 col-form-label">&nbsp;</label>
                        <div class="col-sm-10">
                            <a href="<?php echo base_url('backend/dashboard'); ?>" class="btn btn-primary  w-md m-b-5"><?php echo display("cancel") ?></a>
                            <button type="submit" class="btn btn-success  w-md m-b-5"><?php echo $article->article_id?display("update"):display("create") ?></button>
                        </div>
                    </div>
                <?php echo form_close() ?>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>