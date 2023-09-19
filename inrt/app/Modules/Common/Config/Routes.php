<?php

if (!isset($routes)) {
    $routes = \Config\Services::routes(true);
}



$routes->group('customer', ['filter' => 'customer_filter', 'namespace' => 'App\Modules\Common\Controllers\Customer'], function ($subroutes) {
    /*** Route for customer finance***/
     $subroutes->add('notification/notification_list', 'Notification::index');
    $subroutes->add('notification/email_details/(:num)', 'Notification::email_details/$1');
    

});


$routes->group('backend/autoupdate', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Common\Controllers\Admin'], function ($subroutes) {
    /*** Route for admin cms***/
    $subroutes->add('autoupdate', 'Autoupdate::index');
    $subroutes->add('update', 'Autoupdate::update');
    $subroutes->add('cancel-update-notificaton', 'Autoupdate::cancel_notification');
    $subroutes->add('backup-database', 'Autoupdate::downloaded_database');
});

$routes->group('backend', ['namespace' => 'App\Modules\Common\Controllers\Admin'], function ($subroutes) {
    
    $subroutes->add('autoupdate/updatenow', 'Autoupdate::updatenow');

});