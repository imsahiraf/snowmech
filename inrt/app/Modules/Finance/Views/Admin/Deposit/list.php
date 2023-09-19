<div class="row">
  <div class="col-sm-12 col-md-12">
    <div class="card">
      <div class="card-body">
        <table  id="example" class="table display table-striped table-bordered table-hover">
          <thead>
            <tr> 
              <th>
                <?php echo display('sl_no') ?>
              </th>
              <th>
                <?php echo display('user_id') ?>
              </th>
              <th >
                <?php echo display('amount') ?>
              </th>
              <th>
                <?php echo display('payment_method') ?>
              </th>
              <th >
                <?php echo display('fees') ?>
              </th>
              <th>
                <?php echo display('comments') ?>
              </th>
              <th>
                <?php echo display('date') ?>
              </th>
              <th class="text-center">
                <?php echo display('action')."/".display('status'); ?>
              </th>
            </tr>
          </thead> 
          <tbody>
            <?php if (!empty($deposit)) ?>
            <?php $sl = 1; ?>
            <?php foreach ($deposit as $value) { ?>
            <tr>
              <td>
                <?php echo $sl++; ?>
              </td>
              <td>
                <?php echo esc($value->user_id); ?>
              </td>
              <td >
                <?php echo esc($coininfo->pair_with." ".(float)$value->amount); ?>
              </td>
              <td>
                <?php echo esc($value->method); ?>
              </td>
              <td >
                <?php echo esc($coininfo->pair_with." ".(float)$value->fees_amount); ?>
              </td>
              <td>
                <?php
                    if (is_string($value->comment) && is_array(json_decode($value->comment, true)) && ((json_last_error() == JSON_ERROR_NONE) ? true : false) && $value->method=='phone') {
                    $mobiledata = json_decode($value->comment, true);
                    echo '<b>OM Name:</b> '.$mobiledata['om_name'].'<br>';
                    echo '<b>OM Phone No:</b> '.$mobiledata['om_mobile'].'<br>';
                    echo '<b>Transaction No:</b> '.$mobiledata['transaction_no'].'<br>';
                    echo '<b>ID Card No:</b> '.$mobiledata['idcard_no'];
                    }elseif (is_string($value->comment) && is_array(json_decode($value->comment, true)) && ((json_last_error() == JSON_ERROR_NONE) ? true : false) && $value->method=='bank') {
                    $decode_bank = json_decode($value->comment, true);
                    $typeex = pathinfo(@$decode_bank['document']);
                    if(!empty($typeex['basename'])){
                    $extension = $typeex['extension'];
                    }
                    echo "<b>Account Name: </b>".@$decode_bank['acc_name']."<br>";
                    echo "<b>Account No: </b>".@$decode_bank['acc_no']."<br>";
                    echo "<b>Branch Name: </b>".@$decode_bank['branch_name']."<br>";
                    echo "<b>SWIFT Code: </b>".@$decode_bank['swift_code']."<br>";
                    echo "<b>ABN No: </b>".@$decode_bank['abn_no']."<br>";
                    echo "<b>Country: </b>".@$decode_bank['country']."<br>";
                    echo "<b>Bank Name: </b>".@$decode_bank['bank_name']."<br>";                                        
                    if (isset($decode_bank['document'])) {
                    echo "<b>Document: </b>";
                    if(@$extension != "pdf"){
                    echo "<img  width='150px' height='150px' src='".base_url($decode_bank['document'])."' class='img-responsive' /><a href='".base_url($decode_bank['document'])."' class='btn btn-success' download='".@$decode_bank['acc_name']."'>Download File</a>";  
                    } else {                              
                    echo "<embed src='".base_url($decode_bank['document'])."' width='600'/><a href='".base_url($decode_bank['document'])."' class='btn btn-success' download='".@$decode_bank['acc_name']."'>Download File</a>";
                    }                                
                    }
                    } else {
                    echo esc($value->comment);
                    }
                ?>
              </td>
              <td>
                <?php
                    $date=date_create($value->deposit_date);
                    echo date_format($date,"jS F Y"); 
                ?>
              </td>
              <?php if (esc($value->status)==1) { ?>
              <td class="text-center">
                <i title='<?php echo display('success')?>' class='fas fa-check mr-2 fs-20 text-success'>
                </i>
              </td>
              <?php } else if(esc($value->status)==2){ ?>
              <td class="text-center"> 
                <i title='<?php echo display('cancel')?>' class='far fa-times-circle mr-2 fs-20 text-danger'>
                </i>
              </td>
              <?php } else { ?>
              <td class="text-center">
                <a href="<?php echo base_url()?>/backend/finance/confirm-deposit?id=<?php echo $value->id;?>&user_id=<?php echo $value->user_id;?>&set_status=1" class="btn btn-success btn-sm text-white">
                  <?php echo display('confirm')?>
                </a>
                <a href="<?php echo base_url()?>/backend/finance/cancel-deposit?id=<?php echo $value->id;?>&user_id=<?php echo $value->user_id;?>&set_status=2" class="btn btn-danger btn-sm text-white">
                  <?php echo display('cancel')?>
                </a>
              </td>
              <?php } ?>
            </tr>
            <?php } ?>  
          </tbody>
        </table>
        <?php echo  htmlspecialchars_decode($pager); ?>
      </div> 
    </div>
  </div>
</div>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.bootstrap4.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.responsive.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/responsive.bootstrap4.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/dataTables.buttons.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.bootstrap4.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/jszip.min.js") ?>"></script>

<script src="<?php echo base_url("public/assets/plugins/datatables/pdfmake.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/vfs_fonts.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.html5.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.print.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/buttons.colVis.min.js") ?>"></script>
<script src="<?php echo base_url("public/assets/plugins/datatables/data-bootstrap4.active.js") ?>"></script> 