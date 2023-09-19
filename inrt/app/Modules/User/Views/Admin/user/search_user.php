<div class="row">
   <div class="col-lg-12">
      <div class="card mb-4">
         <div class="card-body">
            <div class="row">
               <div class="col-sm-12">
                  <?php echo form_open("backend/user/user-details") ?>
                  <div class="form-group row">
                     <label for="user_id" class="col-sm-1 col-form-label font-weight-600 text-left">User ID: </label>
                     <div class="col-xs-2 col-sm-6 col-md-4">
                        <input name="user_id" class="form-control" type="search" id="user_id" value="<?php echo esc(@$user->user_id) ?>">
                     </div>
                     <div class="col-xs-2 col-sm-4 col-md-4 m-b-20">
                        <button type="submit" class="btn btn-success">Search</button>
                     </div>
                  </div>
                  <?php echo form_close() ?>
               </div>
            </div>
            <ul class="nav nav-pills mb-4 mt-3" id="pills-tab2" role="tablist">
               <li class="nav-item">
                  <a class="nav-link active" id="pills-home2-tab" data-toggle="pill" href="#tab1" role="tab" aria-controls="pills-home2" aria-selected="true"><?php echo display('user_profile') ?></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" id="pills-contact2-tab" data-toggle="pill" href="#tab2" role="tab" aria-controls="pills-contact2" aria-selected="false"><?php echo display('balance'); ?></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" id="pills-contact2-tab" data-toggle="pill" href="#tab3" role="tab" aria-controls="pills-contact2" aria-selected="false"><?php echo display('transaction_log'); ?></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" id="pills-contact2-tab" data-toggle="pill" href="#tab4" role="tab" aria-controls="pills-contact2" aria-selected="false"><?php echo display('earning_history'); ?></a>
               </li>
            </ul>
            <div class="tab-content" id="pills-tabContent2">
               <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="pills-home2-tab">
                  
                     <table class="table table-bordered table-hover table-striped">
                        <tbody>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('user_id') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->user_id) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('referral_id') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->referral_id) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('language') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->language) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('firstname') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->first_name) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('lastname') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->last_name) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('email') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->email) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('mobile') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->phone) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('registered_ip') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo esc(@$user->ip) ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right"><?php echo display('status') ?></th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left"><?php echo (esc(@$user->status)==1)?display('active'):display('inactive'); ?></td>
                           </tr>
                           <tr>
                              <th width="200" class="text-right">Registered Date</th>
                              <th width="50" class="text-center">:</th>
                              <td class="text-left">
                                 <?php 
                                    $date=date_create(@$user->created);
                                    echo date_format($date,"jS F Y");  
                                    ?>
                              </td>
                           </tr>
                        </tbody>
                     </table>
               </div>
               <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="pills-contact2-tab">
                 <table id="example" class="table table-bordered table-hover table-striped">
                             <thead>
                                 <tr> 
                                     <th><?php echo display('type')?></th>
                                     <th><?php echo display('amount')?> (<?php echo esc($coin_setup->pair_with); ?>)</th>
                                 </tr>
                             </thead>
                             <tbody>
                                    <tr>
                                         <td><?php echo $deposit_amount->transaction_type?esc($deposit_amount->transaction_type):'DEPOSIT' ?></td>
                                         <td><?php echo $deposit_amount->transaction_amount?number_format(esc($deposit_amount->transaction_amount),2):0.00; ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $credited_amount->transaction_type?esc($credited_amount->transaction_type):'CREDITED' ?></td>
                                         <td><?php echo $credited_amount->transaction_amount?number_format(esc($credited_amount->transaction_amount),2):0.00; ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $exchange_cancel_amount->transaction_type?esc($exchange_cancel_amount->transaction_type):'EXCHANGE_CANCEL' ?></td>
                                         <td><?php echo esc($exchange_cancel_amount->transaction_amount)+esc($exchange_cancel_amount_fees->transaction_fees) ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $recevied_amount->transaction_type?esc($recevied_amount->transaction_type):'RECEIVED' ?></td>
                                         <td><?php echo $recevied_amount->transaction_amount?number_format(esc($recevied_amount->transaction_amount),2):0.00; ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $sell_amount->transaction_type?esc($sell_amount->transaction_type):'SELL' ?></td>
                                         <td><?php echo esc($sell_amount->transaction_amount)-esc($sell_amount_fees->transaction_fees) ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo @$return_amount->transaction_type?esc(@$return_amount->transaction_type):'ADJUSTMENT' ?></td>
                                         <td><?php echo esc(@$return_amount->transaction_amount)+esc($return_fees->transaction_fees); ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo display('roi')?></td>
                                         <td><?php echo $roi_amount->amount?number_format(esc($roi_amount->amount),2):0.00; ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo display('referral')?></td>
                                         <td><?php echo $referral_amount->amount?number_format(esc($referral_amount->amount)):0.00; ?></td>
                                     </tr>
                                     <tr>
                                         <td class="text-success text-center"><?php echo display('total');?> = </td>
                                         <td><?php echo esc($coin_setup->pair_with);?> <?php echo (esc($deposit_amount->transaction_amount)+esc($exchange_cancel_amount->transaction_amount)+esc($exchange_cancel_amount_fees->transaction_fees)+esc($recevied_amount->transaction_amount)+esc($sell_amount->transaction_amount)+esc($roi_amount->amount)+esc($credited_amount->transaction_amount)+esc($return_amount->transaction_amount)+esc($return_fees->transaction_fees)+esc($referral_amount->amount))-(esc($sell_amount_fees->transaction_fees)+esc($credited_amount_fees->transaction_fees)); ?></td>
                                     </tr>

                                     <tr>
                                       <th>Cost(-)</th>
                                       <td></td>
                                     </tr>


                                     <tr>
                                         <td><?php echo $transfer_amount->transaction_type?esc($transfer_amount->transaction_type):'TRANSFER' ?></td>
                                         <td><?php echo esc($transfer_amount->transaction_amount)+esc($transfer_amount_fees->transaction_fees); ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $withdraw_amount->transaction_type?esc($withdraw_amount->transaction_type):'WITHDRAW' ?></td>
                                         <td><?php echo esc($withdraw_amount->transaction_amount)+esc($withdraw_amount_fees->transaction_fees) ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $buy_amount->transaction_type?esc($buy_amount->transaction_type):'BUY' ?></td>
                                         <td><?php echo esc($buy_amount->transaction_amount)+esc($buy_amount_fees->transaction_fees) ?></td>
                                     </tr>
                                     <tr>
                                         <td><?php echo $invest_amount->transaction_type?esc($invest_amount->transaction_type):'INVESTMENT' ?></td>
                                         <td><?php echo esc($invest_amount->transaction_amount) ?></td>
                                     </tr>
                                     <tr>
                                         <td class="text-danger text-center"><?php echo display('total');?> = </td>
                                         <td><?php echo esc($coin_setup->pair_with);?> <?php echo esc($transfer_amount->transaction_amount)+esc($transfer_amount_fees->transaction_fees)+esc($withdraw_amount->transaction_amount)+esc($withdraw_amount_fees->transaction_fees)+esc($buy_amount->transaction_amount)+esc($buy_amount_fees->transaction_fees)+esc($invest_amount->transaction_amount) ?></td>
                                     </tr>
                                     <tr >
                                         <th colspan="2" class="text-success text-center"><?php echo display('your_total_balance_is');?> = <?php echo esc($coin_setup->pair_with);?> <?php echo (esc($deposit_amount->transaction_amount)+esc($exchange_cancel_amount->transaction_amount)+esc($exchange_cancel_amount_fees->transaction_fees)+esc($recevied_amount->transaction_amount)+esc($sell_amount->transaction_amount)+esc($roi_amount->amount)+esc($credited_amount->transaction_amount)+esc($return_amount->transaction_amount)+esc($return_fees->transaction_fees)+esc($referral_amount->amount))-(esc($transfer_amount->transaction_amount)+esc($transfer_amount_fees->transaction_fees)+esc($withdraw_amount->transaction_amount)+esc($withdraw_amount_fees->transaction_fees)+esc($buy_amount->transaction_amount)+esc($buy_amount_fees->transaction_fees)+esc($invest_amount->transaction_amount)+esc($sell_amount_fees->transaction_fees)+esc($credited_amount_fees->transaction_fees)) ?></th>
                                     </tr>
                              </tbody>
                        </table>
               </div>
               <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="pills-disabled-tab">
                 <table id="example" class="table table-bordered table-hover table-striped">
                             <thead>
                                   <tr class="table-bg">
                                       <th>SL</th>
                                       <th><?php echo display('transaction'); ?></th>
                                       <th><?php echo display('amount'); ?>(<?php echo esc($coin_setup->pair_with);?>)</th>
                                       <th><?php echo display('fees'); ?></th>
                                       <th><?php echo display('date'); ?></th>
                                   </tr>
                               </thead>
                             <tbody>

                          <?php $i=1;  foreach ($transection as $key => $value) { ?>
                              <tr>
                                 <td><?php echo esc($i) ?></td>
                                   <td><?php echo esc($value->transaction_type) ?></td>
                                   <td><?php echo number_format(esc($value->transaction_amount),2); ?></td>
                                   <td><?php echo number_format(esc($value->transaction_fees),2); ?></td>
                                   <td><?php echo esc($value->date); ?></td>
                              </tr>

                          <?php esc($i++); } ?>
                           </tbody>
                        </table>
               </div>
               <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="pills-disabled-tab">
                  <table id="example" class="table table-bordered table-hover table-striped">
                             <thead>
                                   <tr class="table-bg">
                                       <th>SL</th>
                                       <th><?php echo display('type'); ?></th>
                                       <th><?php echo display('amount'); ?>(<?php echo esc($coin_setup->pair_with);?>)</th>
                                       <th><?php echo display('date'); ?></th>
                                   </tr>
                               </thead>
                             <tbody>

                          <?php $i=1;  foreach ($earning as $key => $value) { ?>
                              <tr>
                                 <td><?php echo esc($i);?></td>
                                   <td><?php echo esc($value->earning_type); ?></td>
                                   <td><?php echo number_format(esc($value->amount),2); ?></td>
                                   <td><?php echo esc($value->date); ?></td>
                              </tr>

                          <?php esc($i++); } ?>
                           </tbody>
                        </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>