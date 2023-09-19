<?php

if (!isset($routes)) {
    $routes = \Config\Services::routes(true);
}



$routes->group('customer/finance', ['filter' => 'customer_filter', 'namespace' => 'App\Modules\Finance\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer finance***/
     $subroutes->add('deposit', 'Finance::index');
     $subroutes->add('payment_gateway', 'Finance::payment_gateway');
    $subroutes->add('deposit-list', 'Finance::deposit_list');
    $subroutes->add('fees-load', 'Finance::fees_load');
    $subroutes->add('payment-process', 'Finance::payment_process');
    $subroutes->add('getdepositgatewaydata', 'Finance::getdepositgatewaydata');

    $subroutes->add('payment_callback/stripe_confirm', 'PaymentCallbackController::stripe_confirm');
    $subroutes->add('payment_callback/paypal_confirm', 'PaymentCallbackController::paypal_confirm');
    $subroutes->add('payment_callback/token_confirm', 'PaymentCallbackController::token_confirm');
    $subroutes->add('payment_callback/phone_confirm', 'PaymentCallbackController::phone_confirm');
    $subroutes->add('payment_callback/bank_confirm', 'PaymentCallbackController::bank_confirm');
    $subroutes->add('payment_callback/bitcoin_confirm/(:any)', 'PaymentCallbackController::bitcoin_confirm/$1');
    $subroutes->add('payment_callback/bitcoin_confirm', 'PaymentCallbackController::bitcoin_confirm');
    $subroutes->add('gourl_callback', 'PaymentCallbackController::gourl_callback');
    $subroutes->add('bank-setting', 'HomeController::bank_setting');
    $subroutes->add('bank-setting/(:any)', 'HomeController::bank_setting/$1');

    $subroutes->add('payment_callback/payeer_confirm', 'PaymentCallbackController::payeer_confirm');
    $subroutes->add('payment_callback/payeer_cancel', 'PaymentCallbackController::payeer_cancel');

    $subroutes->add('transfer-list', 'Finance::transfer_list');
    $subroutes->add('transfer', 'Finance::transfer');
    $subroutes->add('checke-reciver-id', 'Finance::checke_reciver_id');
    $subroutes->add('transfer-store', 'Finance::transfer_store');
    $subroutes->add('transfer-confirm/(:any)', 'Finance::transfer_confirm/$1');
    $subroutes->add('transfer-verify', 'Finance::transfer_verify');
    $subroutes->add('transfer-details/(:any)', 'Finance::transfer_details/$1');
    $subroutes->add('transfer-receive/(:any)', 'Finance::receive_details/$1');
    $subroutes->add('send-details/(:any)', 'Finance::send_details/$1');

    $subroutes->add('withdraw-list', 'Finance::withdraw_list');
    $subroutes->add('withdraw', 'Finance::withdraw');
    $subroutes->add('walletid', 'Finance::walletid');
    $subroutes->add('withdraw-confirm/(:any)', 'Finance::withdraw_confirm/$1');
    $subroutes->add('withdraw-verify', 'Finance::withdraw_verify');
    $subroutes->add('withdraw-details/(:any)', 'Finance::withdraw_details/$1');
    $subroutes->add('transactions', 'Finance::transaction');
    $subroutes->add('payment-method-setting', 'Finance::payment_method_setting');
    $subroutes->add('payment-method-update/(:any)', 'Finance::payment_method_update/$1');
    

});
$routes->group('customer/finance', ['namespace' => 'App\Modules\Finance\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer finance***/
    $subroutes->add('payment_callback/conipayment_confirm', 'PaymentCallbackController::conipayment_confirm');

});


$routes->group('backend', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Finance\Controllers\Admin'], function ($subroutes) {
    /*** Route for admin finance***/
    $subroutes->add('deposit/deposit_list', 'Deposit::index');
    $subroutes->add('deposit/pending_deposit', 'Deposit::pending_deposit');
    $subroutes->add('withdraw/withdraw_list', 'Withdraw::index');
    $subroutes->add('withdraw/pending_withdraw', 'Withdraw::pending_withdraw');
    $subroutes->add('credit/add_credit', 'Credit::add_credit');
    $subroutes->add('credit/send_credit', 'Credit::send_credit');
    $subroutes->add('credit/credit_list', 'Credit::index');
    $subroutes->add('credit/credit-details/(:any)', 'Credit::credit_details/$1');
    $subroutes->add('finance/confirm-deposit', 'Deposit::confirm_deposit');
    $subroutes->add('finance/cancel-deposit', 'Deposit::cancel_deposit');
    $subroutes->add('finance/user-info-load/(:any)', 'Deposit::user_info_load/$1');
    $subroutes->add('finance/confirm-withdraw', 'Withdraw::confirm_withdraw');
    $subroutes->add('finance/cancel-withdraw', 'Withdraw::cancel_withdraw');

});