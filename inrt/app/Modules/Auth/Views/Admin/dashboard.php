<div class="row">
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-success shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2"><?php echo display('total_user');?></div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fas fa-users text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc(@$multidata['total_user']->total_user); ?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-color2 shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2"><?php echo display('deposit');?></div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fab fa-medium text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc(@$multidata['total_deposit']->deposit?@$multidata['total_deposit']->deposit:'0.00'); ?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-warning shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2"><?php echo display('withdraw');?></div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fab fa-medium text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc(@$multidata['total_withdraw']->withdraw?@$multidata['total_withdraw']->withdraw:'0.00'); ?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-violet shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2"><?php echo display('token_sold');?></div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fas fa-briefcase text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo (@$multidata['sold_token']->sold_token?esc(@$multidata['sold_token']->sold_token):'0.00')." ".@$coin_info->symbol; ?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-gray shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2"><?php echo display('token');?></div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fas fa-briefcase text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo (@$multidata['token']?esc($multidata['token']):'0.00')." ".@$coin_info->symbol; ?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-sky shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2">
                <?php echo display('total_fees');?>
                <i class="fa fa-info-circle info-position pull-right" data-toggle="tooltip" data-original-title="Summation of all coins fees are converted to BTC.This value will be BTC current price"></i>
            </div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fab fa-btc text-white mr-2 fs-30 text-white"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc(@$coin_info->pair_with);?> <?php echo (@$multidata['total_earning_fees']?number_format(esc($multidata['total_earning_fees']), 2):'0.00');?></span>
                </div>
            </div>
        </div>
    </div>
   
    
</div>
<div class="row mt-4">
    <div class="col-lg-12 d-flex">
        <div class="card mb-4 flex-fill w-100">
                    <div class="card-body">
                    <div class="header-body mb-4 pt-0">
                        <div class="row align-items-end">
                            <div class="col">
                                <!-- Pretitle -->
                                <h6 class="header-pretitle text-muted fs-11 font-weight-bold text-uppercase mb-1">
                                    User Current Year Growth Rate
                                </h6>
                                
                            </div>
                        </div> <!-- / .row -->
                    </div> <!-- / .header-body -->
                    <div class="chart">
                        <canvas id="userchart" width="300" height="125"></canvas>
                    </div>
                </div>
            </div>
        </div>
    
    <div class="col-lg-6">
        <div class="card-header">
           <h6 class="header-pretitle text-muted fs-13 font-weight-bold text-uppercase mb-1"><?php echo display('withdraw');?></h6>
        </div>
        <div class="card card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th><?php echo display('user_id') ?></th>
                            <th><?php echo display('payment_method') ?></th>
                            <th><?php echo display('amount') ?></th>
                            <th class="text-center"><?php echo display('status') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty(@$withdraw)) ?>
                        <?php $sl = 1; ?>
                        <?php foreach ($withdraw as $value) { ?>
                        <tr>
                            <td><?php echo esc($value->user_id); ?></td>
                            <td><?php echo esc($value->method); ?></td>
                            <td><?php echo esc($value->amount)+esc($value->fees_amount); ?></td>
                            <td width="80" class="text-center">
                                <?php if($value->status==2){?>
                                 <i title='<?php echo display('pending_withdraw')?>' class='fas fa-spinner fa-pulse mr-2 fs-20 text-warning'></i>
                                 <?php } else if($value->status==1){?>
                                 <i title='<?php echo display('success')?>' class='fas fa-check mr-2 fs-20 text-success'></i>
                                 <?php } else if($value->status==0){ ?>
                                 <i title='<?php echo display('cancel')?>' class='far fa-times-circle mr-2 fs-20 text-danger'></i>
                                 <?php } ?>
                             </td>
                            
                        </tr>
                        <?php } ?> 
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="card-header">
           <h6 class="header-pretitle text-muted fs-13 font-weight-bold text-uppercase mb-1"><?php echo display('deposit');?></h6>
        </div>
        <div class="card card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th><?php echo display('user_id') ?></th>
                            <th><?php echo display('payment_method') ?></th>
                            <th><?php echo display('amount') ?></th>
                            <th class="text-center"><?php echo display('status') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty(@$deposit)) ?>
                        <?php $sl = 1; ?>
                        <?php foreach ($deposit as $value) { ?>
                        <tr>
                            <td><?php echo esc($value->user_id); ?></td>
                            <td><?php echo esc($value->method); ?></td>
                            <td><?php echo esc($value->amount)+esc($value->fees_amount); ?></td>
                            <td width="80" class="text-center">
                                <?php if($value->status==2){?>
                                 <i title='<?php echo display('pending_withdraw')?>' class='fas fa-spinner fa-pulse mr-2 fs-20 text-warning'></i>
                                 <?php } else if($value->status==1){?>
                                 <i title='<?php echo display('success')?>' class='fas fa-check mr-2 fs-20 text-success'></i>
                                 <?php } else if($value->status==0){ ?>
                                 <i title='<?php echo display('cancel')?>' class='far fa-times-circle mr-2 fs-20 text-danger'></i>
                                 <?php } ?>
                             </td>
                            
                        </tr>
                        <?php } ?> 
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
<script src="<?php echo base_url('public/assets/plugins/select2/dist/js/select2.min.js') ?>"></script>
<script src="<?php echo base_url('public/assets/dist/js/pages/demo.select2.js') ?>"></script>
<script src="<?php echo base_url('public/assets/plugins/chartJs/Chart.min.js') ?>"></script>
<script src="<?php echo base_url('app/Modules/Auth/Assets/Admin/js/custom.js?v=2.2') ?>"></script>