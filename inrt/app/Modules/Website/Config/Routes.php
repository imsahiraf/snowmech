<?php
	if(!isset($routes))
	{ 
	    $routes = \Config\Services::routes(true);
	}

	$routes->group('', ['namespace' => 'App\Modules\Website\Controllers'], function($subroutes){

		$subroutes->add('/', 'Home::index');
		
		$subroutes->add('get-chart-data', 'Internal_api::get_chart_data');
		$subroutes->add('getflipdata', 'Internal_api::getflipdata');
		$subroutes->add('login', 'Home::login');
		$subroutes->add('register', 'Home::register');
		$subroutes->add('forgotPassword', 'Home::forgotPassword');
		$subroutes->add('resetPassword', 'Home::resetPassword');
		$subroutes->add('blog', 'Home::blog');
		$subroutes->add('blog/(:any)', 'Home::blog/$1');
		$subroutes->add('blog/(:any)/(:any)', 'Home::blog/$1/$2');
		$subroutes->add('contact-msg', 'Home::contactMsg');
		$subroutes->add('subscribe', 'Home::subscribe');
		$subroutes->add('langChange', 'Home::langChange');
		$subroutes->add('activate-account/(:any)', 'Home::activate_account/$1');

		$subroutes->add('installer', 'Installer::index');
		$subroutes->add('remove_installer', 'Installer::remove_installer');
	});

