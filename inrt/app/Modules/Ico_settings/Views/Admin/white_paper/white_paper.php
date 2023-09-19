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
                <?php echo form_open_multipart("backend/ico-settings/white-paper/save") ?>

                    <?php if(!empty($white_paper->white_paper)){?>
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <iframe class="whit-paper-ifram" src="<?php echo base_url(esc($white_paper->white_paper));?>" width="100%" height="500px"></iframe>
                            </div>
                        </div>
                    <?php }?>
                    <div class="form-group row">
                        <label for="" class="col-sm-4 col-form-label"><?php echo display('white_paper_pdf'); ?>(MAX 2MB)<i class="text-danger">*</i></label>
                        <div class="col-sm-2">
                            <input name="white_paper_pdf" class="form-control white_paper_pdf" placeholder="PDF" type="file" id="white_paper_pdf" required>
                        </div>
                    </div>
                    <div class="row">
                        <label for="" class="col-sm-4 col-form-label">&nbsp;</label>
                        <div class="col-sm-8">
                            <button type="submit" class="btn btn-success  w-md m-b-5"><?php echo display("update") ?></button>
                        </div>
                    </div>
                <?php echo form_close() ?>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>


