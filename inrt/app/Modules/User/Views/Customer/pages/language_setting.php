<div class="row">
   <div class="col-sm-12 col-md-12">
      <div class="card">
         <div class="card-header">
            <div class="d-flex justify-content-between align-items-center">
               <div>
                  <h6 class="fs-17 font-weight-600 mb-0"><?php echo display('language_setting');?></h6>
               </div>
               <div class="text-right">
                  <div class="actions">
                     <a href="#" class="action-item"></a>
                  </div>
               </div>
            </div>
         </div>
         <?php echo form_open('customer/account/update-language')?>
         <div class="card-body">
            <div class="form-group col-lg-6">
               <label><?php echo display('language') ?></label>
               <select name="language" class="form-control">
               <?php 
                  foreach($languageList as $key => $val){
                      echo '<option '.($lang->language==$key?'selected':'').' value="'.esc($key).'">'.esc($val).'</option>';
                  }
                  ?>
               </select>
            </div>
            <div class="row">
               <div class="col-sm-8 col-sm-offset-4">
                  <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('update');?></button>
               </div>
            </div>
         </div>
         <?php echo form_close();?>
      </div>
   </div>
</div>
