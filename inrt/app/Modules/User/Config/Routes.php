<?php

if (!isset($routes)) {
    $routes = \Config\Services::routes(true);
}



$routes->group('customer/account', ['filter' => 'customer_filter', 'namespace' => 'App\Modules\User\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer account***/
    
    $subroutes->add('verify-account', 'Account::verify_account');
    $subroutes->add('profile', 'Account::profile');
    $subroutes->add('update-profile', 'Account::update_profile');
    $subroutes->add('profile-verify/(:any)', 'Account::profile_verify/$1');
    $subroutes->add('profileupdate', 'Account::profileupdate');
    $subroutes->add('change-password', 'Account::change_password');
    $subroutes->add('change-save', 'Account::change_save');
    $subroutes->add('language-setting', 'Account::language_setting');
    $subroutes->add('update-language', 'Account::update_language');

});


$routes->group('backend', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\User\Controllers\Admin'], function ($subroutes) {
    /*** Route for admin finance***/
    $subroutes->add('users/user_info', 'User::form');
    $subroutes->add('users/user_info/(:num)', 'User::form/$1');
    $subroutes->add('users/user_list', 'User::index');
    $subroutes->add('user/user_details/(:num)', 'User::user_details/$1');
    $subroutes->add('user/user-details', 'User::user_details');
    $subroutes->add('users/verify_user', 'User::pending_user_verification_list');
    $subroutes->add('users/subscriber', 'User::subscriber_list');
    $subroutes->add('user/pending-user-verification/(:any)', 'User::pending_user_verification/$1');
});

$routes->group('', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\User\Controllers\Admin'], function ($subroutes) {
		$subroutes->add('user/ajax_list', 'User::ajax_list');
        $subroutes->add('user/deposit_list/(:any)', 'User::deposit_list/$1');
        $subroutes->add('user/investment_list/(:any)', 'User::investment_list/$1');
        $subroutes->add('user/withdraw_list/(:any)', 'User::withdraw_list/$1');
        $subroutes->add('user/transfer_list/(:any)', 'User::transfer_list/$1');
        $subroutes->add('user/transferreceive_list/(:any)', 'User::transferreceive_list/$1');
        
});