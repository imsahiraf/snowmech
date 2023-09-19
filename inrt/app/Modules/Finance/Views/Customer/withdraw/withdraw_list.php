<?php $this->session   = session(); ?>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="border_preview">
                    <div class="table-responsive">
                        <table id="example" class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th><?php echo display('name');?></th>
                                    <th><?php echo display('mobile');?></th>
                                    <th><?php echo display('amount');?></th>
                                    <th><?php echo display('wallet_id');?></th>
                                    <th><?php echo display('payment_method');?></th>
                                    <th><?php echo display('date');?></th>
                                    <th class="text-center" width="60"><?php echo display('status');?></th>
                                    <th class="text-center" width="60"><?php echo display('action');?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if($withdraw!=NULL){ 
                                    $user_id = $this->session->get('user_id');
                                    foreach ($withdraw as $key => $value) {
                                ?>
                                <tr>
                                    <td><?php echo $this->session->get('fullname');?></td>
                                    <td><?php echo $this->session->get('phone');?></td>
                                    
                                        <td><?php echo esc($value->amount);?></td>
                                        <td><?php echo esc($value->wallet_id);?></td>
                                        <td><?php echo esc($value->method);?></td>
                                        <td><?php echo esc($value->request_date);?></td>
                                        <td class="text-center">
                                             <?php if($value->status==0){?>
                                                 <i title='<?php echo display('cancel')?>' class='far fa-times-circle mr-2 fs-20 text-danger'></i>
                                                
                                                <?php } else if($value->status==1){?>
                                                <i title='<?php echo display('success')?>' class='fas fa-check mr-2 fs-20 text-success'></i>
                                                <?php } else if($value->status==2){ ?>
                                                <i title='<?php echo display('deposit')?>' class='fas fa-spinner fa-pulse mr-2 fs-20 text-warning'></i>
                                            <?php } ?>
                                                
                                        </td>
                                        <td class="text-center">
                                            <a class="btn btn-success" href="<?php echo base_url("customer/finance/withdraw-details/$value->id"); ?>"><?php echo display('details')?></a>
                                        </td>
                                </tr>
                                <?php } } ?>

                            </tbody>
                        </table>
                        <?php echo htmlspecialchars_decode($pager); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>