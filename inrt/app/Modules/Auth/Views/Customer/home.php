<link href="<?php echo BASEPATH.'assets/website/slick/slick.css'; ?>" rel="stylesheet">
<link href="<?php echo BASEPATH.'assets/website/css/flipclock.css'; ?>" rel="stylesheet">
<link href="<?php echo base_url("app/Modules/Auth/Assets/Customer/css/custom.css")?>" rel="stylesheet">

<?php
    $this->session   = session();

    $total_balance  = 0;
    $tokenValue     = 0;
?>
<?php if (!empty($transaction)) { ?>
    <?php $data = json_decode($transaction->data); ?>

    <?php foreach ($data as $key => $value) { ?>

        <?php

            $rate = 0;
            
            foreach ($value as $keys => $values) { 
                
                $total_balance =  @$values->crypto_balance;
                $rate          =  @$values->crypto_rate;
            }
    }
        $tokenValue = $total_balance*$rate;
}

?>
<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-sm-3">&nbsp;</div>
                    <label class="col-sm-1 mt-2 font-weight-600"><?php echo display('affiliate_url');?> </label>
                    <div class="col-sm-5">
                        <div class="input-group">
                            <input type="text" class="form-control" id="copyed" value="<?php echo base_url()?>/register?ref=<?php echo $this->session->get('user_id')?>">
                            <span class="input-group-btn">
                                <button class=" btn-primary p-2 copy" type="button" ><?php echo display('copy');?></button>
                            </span>
                        </div>
                    </div>
                    <div class="col-sm-3">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mt-4">
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-success shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2">
                <?php echo display('balance');?>
                <i class="fa fa-info-circle info-position pull-right" data-toggle="tooltip" data-original-title="<?php echo display('summation_of_all_deposit_sell_received_roi_and_referral_amount'); ?>"></i>
            </div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fa fa-university text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc($coin_info->pair_with)." ";?><?php echo @$totalBalance->balance>0 ?number_format(esc(@$totalBalance->balance),8):0;?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-sky shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2">
                <?php echo display('token');?>
                <i class="fa fa-info-circle info-position pull-right" data-toggle="tooltip" data-original-title="<?php echo display('summation_of_all_your_buy_and_exchange_calculate_token'); ?>"></i>
            </div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fa fa-universal-access text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc($coin_info->symbol)." ";?><?php echo @$total_balance>0 ?esc(@$total_balance):0;?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="d-flex flex-column p-3 mb-3 bg-color1 shadow-sm rounded">
            <div class="header-pretitle text-white fs-11 font-weight-bold text-uppercase mb-2">
                <?php echo display('token_value');?>
                <i class="fa fa-info-circle info-position" data-toggle="tooltip" data-original-title="<?php echo display('multiplication_of_all_token_and_token_rate'); ?>"></i>
            </div>
            <div class="d-flex align-items-center text-size-3">
                <i class="fa fa-balance-scale text-white mr-2 fs-30"></i>
                <div class="text-monospace text-white">
                    <span class="text-size-3 p-3"><?php echo esc($coin_info->symbol)." ";?><?php echo @$tokenValue>0 ?number_format(esc(@$tokenValue),8):0.00;?></span>
                </div>
            </div>
        </div>
    </div>
</div>
 <div class="token-wrap">
                        <div class="token-title">
                            <h3><?php echo display('ico_pre_sale_is_live'); ?></h3>
                            <div class="sub-title"><?php echo htmlspecialchars_decode(@$flipdata->round_name);?> ends in:</div>
                        </div>
                        <div class="clock"></div>
                        <div class="message"></div>
                        <div class="countdown-price my-3">
                            <h4><?php echo esc(@$rcoin_info->rate)." ".esc(@$rcoin_info->symbol);?></h4>
                            <h6 class="mb-0"><?php echo esc(@$rcoin_info->symbol);?> Raised</h6>
                        </div>
                        <?php
                            if(@$flipdata->target != 0){
                                $percent  = (@$flipdata->fillup_target*100)/@$flipdata->target;
                            }
                            else{
                                $percent = 0;
                            }
                        ?>
                        <div class="loading-bar my-3 position-relative">
                            <div class="progres-area py-5">
                                <ul class="progress-bar-up">
                                    <li></li>
                                    <li class="pre-sale"><?php echo display('pre_sale'); ?></li>
                                    <li><?php echo display('soft_cap'); ?></li>
                                    <li class="bonus"><?php echo display('bonus'); ?></li>
                                    <li></li>
                                </ul>
                                <ul class="progress-bars">
                                    <li></li>
                                    <li>|</li>
                                    <li>|</li>
                                    <li>|</li>
                                    <li></li>
                                </ul>

                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-custom" role="progressbar" style="width: 50<?php //echo esc(@$percent);?>%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress-bar-down">
                                    <div class="progress-info"><?php echo esc(@$percent);?>% target raised</div>
                                    <div class="progress-info">1 <?php echo esc(@$rcoin_info->symbol);?> = <?php echo esc(@$rcoin_info->rate)." ".esc(@$rcoin_info->pair_with); ?></div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <div><a href="<?php echo base_url('customer/ico-wallet/token-buy') ?>" class="btn btn-custom"><?php echo display('buy_tokens'); ?></a></div>
                           
                        </div>
                    </div>


<script src="<?php echo base_url('public/assets/website/js/flipclock.min.js')?>"></script> 
<script src="<?php echo base_url('public/assets/website/slick/slick.min.js')?>"></script>

<script src="<?php echo base_url('app/Modules/Auth/Assets/Customer/js/custom.js?v=1.5') ?>"></script>

