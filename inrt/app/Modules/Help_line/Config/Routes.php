<?php

	if(!isset($routes))
	{ 
	    $routes = \Config\Services::routes(true);
	}

	$routes->group('backend/helpline', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Help_line\Controllers\Admin'], function($subroutes){

		$subroutes->add('helpline-message', 'Help_line::index');
		$subroutes->add('details/(:any)', 'Help_line::details/$1');
		$subroutes->add('send-message/(:any)', 'Help_line::send_message/$1');
	});

$routes->group('customer', ['filter' => 'customer_filter', 'namespace' => 'App\Modules\Help_line\Controllers\Customer'], function($subroutes){

		$subroutes->add('notifications/notification-list', 'Notification::notification_list');
		$subroutes->add('notifications/details/(:any)', 'Notification::email_details/$1');
		$subroutes->add('message/message-list', 'Message::message_list');
		$subroutes->add('message/details/(:any)', 'Message::message_details/$1');
		$subroutes->add('help-line/helpline', 'Helpline::helpline');
		$subroutes->add('help-line/details/(:any)', 'Helpline::helpline_details/$1');
		$subroutes->add('help-line/send-message', 'Helpline::send_message');
	});