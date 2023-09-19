<?php

	if(!isset($routes))
	{ 
	    $routes = \Config\Services::routes(true);
	}

	$routes->group('backend/ico-settings', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Ico_settings\Controllers\Admin'], function($subroutes){

		$subroutes->add('currency', 'Ico_settings::index');
		$subroutes->add('add-currency', 'Ico_settings::add_currency');
		$subroutes->add('add-currency/(:any)', 'Ico_settings::add_currency/$1');
		$subroutes->add('currency-list', 'Ico_settings::ajax_list');

		$subroutes->add('coin-setup', 'Ico_settings::coin_setup');
		$subroutes->add('coin-manager', 'Ico_settings::coin_manager');
		$subroutes->add('coin-manager/(:any)', 'Ico_settings::coin_manager/$1');


		$subroutes->add('coin-releasing-list', 'Ico_settings::coin_releasing_list');
		$subroutes->add('coin-release-add', 'Ico_settings::coin_release_add');
		$subroutes->add('coin-release-add/(:any)', 'Ico_settings::coin_release_add/$1');

		$subroutes->add('menu-control', 'Ico_settings::menu_control');
		$subroutes->add('menu-control/save', 'Ico_settings::menu_control_save');

		$subroutes->add('white-paper', 'Ico_settings::white_paper');
		$subroutes->add('white-paper/save', 'Ico_settings::white_paper_save');
	});
	$routes->group('customer/ico-wallet', ['filter' => 'customer_filter', 'namespace' => 'App\Modules\Ico_settings\Controllers\Customer'], function($subroutes){
		$subroutes->add('token-buy', 'Ico_wallet::token_buy');
		$subroutes->add('token-list', 'Ico_wallet::token_list');
		$subroutes->add('gettokenbuydata', 'Ico_wallet::gettokenbuydata');
	});