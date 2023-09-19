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
                <?php echo form_open_multipart(base_url("backend/cms/testimonial/form/$article->article_id")) ?>
                <?php echo form_hidden('article_id', esc($article->article_id)) ?> 
                    <div class="form-group row">
                        <label for="headline_en" class="col-sm-2 col-form-label"><?php echo display('name') ?><i class="text-danger">*</i></label>
                        <div class="col-sm-10">
                            <input name="headline_en" value="<?php echo esc($article->headline_en) ?>" class="form-control <?php if(isset($errorsList['headline_en'])){echo "common_error_border"; } ?>" placeholder="<?php echo display('name') ?>" type="text" id="headline_en" maxlength="15">
                            <span class="text-danger"><?php if(isset($errorsList['headline_en'])){echo "<i class='fas fa-exclamation-circle text-warning' title='warning'></i> ".$errorsList['headline_en']; } ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="article1_en" class="col-sm-2 col-form-label"><?php echo display('info') ?></label>
                        <div class="col-sm-10">
                            <textarea name="article1_en" class="form-control editor" placeholder="<?php echo display('info') ?>" type="text" id="article1_en"><?php echo htmlspecialchars_decode($article->article1_en) ?></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="article2_en" class="col-sm-2 col-form-label"><?php echo display('quote') ?></label>
                        <div class="col-sm-10">
                            <textarea name="article2_en" class="form-control" placeholder="<?php echo display('quote') ?>" type="text" id="article2_en"><?php echo htmlspecialchars($article->article2_en) ?></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <label for="" class="col-sm-2 col-form-label"></label>
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