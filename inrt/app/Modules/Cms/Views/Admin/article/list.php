<div class="card">
    <div class="card-header">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <h6 class="fs-17 font-weight-600 mb-0">&nbsp;</h6>
            </div>
            <div class="text-right">
               
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
                    <th width="50"><?php echo display('sl_no') ?></th>
                    <th width="40" class="text-center"><?php echo display('action') ?></th> 
                </tr>
            </thead>    
            <tbody>
                <?php  
                 if (!empty($article)){
                    $sl = 1; 
                    foreach ($article as $value) {  
                    
                ?>
                <tr>
                    <td><?php echo $sl; ?></td> 
                    <td><?php echo htmlspecialchars_decode($value->article1_en); ?></td>
                    <td><?php echo $value->cat_name_en ?></td>
                    <td><?php echo esc($value->position_serial); ?></td>
                    <td class="text-center">
                        <a href="<?php echo base_url("backend/cms/edit-page-content/$value->article_id") ?>" class="btn btn-info btn-sm" title="Update"><i class="hvr-buzz-out fas fa-pencil-alt"></i></a>
                    </td>
                </tr>
                <?php $sl++; } } ?>  
            </tbody>
        </table>
        <?php echo htmlspecialchars_decode($pager); ?>
    </div> 
</div>

