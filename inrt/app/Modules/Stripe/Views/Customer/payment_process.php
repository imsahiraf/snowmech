<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">     
        <div class="card mb-4">      
            <div class="card-body">
                <h2><?php echo $title; ?></h2>
                    <?php if ($deposit->method=='stripe')  { ?>
                            <table class="table table-bordered">
                                <tr>
                                    <th><?php echo display("user_id") ?></th>
                                    <td class="text-right"><?php echo esc($deposit->user_id) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("payment_gateway") ?></th>
                                    <td class="text-right"><?php echo esc($deposit->method) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("amount") ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc($deposit->amount) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display("fees") ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                                <tr>
                                    <th><?php echo display('total'); ?></th>
                                    <td class="text-right"><?php echo esc($coininfo->pair_with)." "; echo esc((float)@$deposit->amount)+esc((float)@$deposit->fees_amount) ?></td>
                                </tr>
                            </table>
                            <button type="button" id="checkout-button" class="stripe-button-el btn btn-primary"><span>Pay with
                                                    Card</span></button>
                            
                            <input type='hidden' name='key' value="<?php echo esc($publishable_key); ?>" id="key">
                            <input type='hidden' name='description' value="<?php echo esc($deposit_data['description']) ?>" id="description">

                            <input type='hidden' name='sessionId' value="<?php echo esc($deposit_data['id']) ?>" id="sessionId">
                           

                        <?php } ?>
                </div>
        </div>
    </div>
</div>
<script src="https://js.stripe.com/v3/"></script>
<script src="<?php echo base_url("app/Modules/Stripe/Assets/Customer/js/custom.js") ?>" type="text/javascript"></script>