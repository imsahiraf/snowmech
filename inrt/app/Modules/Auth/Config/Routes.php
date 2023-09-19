<?php

if (!isset($routes)) {
    $routes = \Config\Services::routes(true);
}

$routes->group('customer', ['namespace' => 'App\Modules\Auth\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer login***/
    $subroutes->add('/', 'User_auth::index');
    $subroutes->add('login', 'User_auth::index');
    $subroutes->add('change-password', 'User_auth::change_password');
    $subroutes->add('change-save', 'User_auth::change_save');
});
$routes->group('', ['namespace' => 'App\Modules\Auth\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer login***/
   
    $subroutes->add('logout', 'User_auth::logout');
});

$routes->group('customer', ['filter' => 'customer_filter', 'namespace' => 'App\Modules\Auth\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer login***/
    $subroutes->add('home', 'User_dashboard::index');
    $subroutes->add('dashboard', 'User_dashboard::index');
    $subroutes->add('logout', 'User_auth::logout');
});

$routes->group('admin', ['namespace' => 'App\Modules\Auth\Controllers\Admin'], function ($subroutes) {
    /*** Route for admin login***/
    $subroutes->add('/', 'Auth::index');
    $subroutes->add('login', 'Auth::index');
});

$routes->group('backend', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Auth\Controllers\Admin'], function ($subroutes) {
    /*** Route for admin login***/
    $subroutes->add('home', 'Dashboard::index');
    $subroutes->add('dashboard', 'Dashboard::index');
    $subroutes->add('testajax', 'Dashboard::ajaxCheck');
});
$routes->group('', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Auth\Controllers\Admin'], function ($subroutes) {
    /*** Route for admin login***/
        $subroutes->add('internal_api/getpiechartdata', 'Internal_api::getpiechartdata');
        $subroutes->add('internal_api/barchartdata', 'Internal_api::barchartdata');
        $subroutes->add('internal_api/userchartdata', 'Internal_api::userchartdata');
        $subroutes->add('internal_api/barchartdata/(:num)', 'Internal_api::barchartdata/$1');
        $subroutes->add('internal_api/getpiechartdata/(:num)', 'Internal_api::getpiechartdata/$1');
        $subroutes->add('dashboard/getlinechartdata', 'Dashboard::getlinechartdata');
        $subroutes->add('dashboard/bdtasktest', 'Dashboard::bdtasktest');
});