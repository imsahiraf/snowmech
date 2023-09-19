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
    </div>
</div>

