<?php

if (!isset($routes)) {
    $routes = \Config\Services::routes(true);
}



$routes->group('backend/cms', ['filter' => 'admin_filter', 'namespace' => 'App\Modules\Cms\Controllers\Admin'], function($subroutes){

        $subroutes->add('themes-setting', 'CmsController::index');
        $subroutes->add('page-content-list', 'CmsController::page_content_list');
        $subroutes->add('add-page-content', 'CmsController::add_page_content');
        $subroutes->add('add-page-content/(:any)', 'CmsController::add_page_content/$1');
        $subroutes->add('edit-page-content/(:any)', 'CmsController::add_page_content/$1');
        $subroutes->add('delete-page-content/(:any)', 'CmsController::delete_page_content/$1');

        //new add route for icowallet start
        $subroutes->add('team', 'CmsController::team_list');
        $subroutes->add('team/form', 'CmsController::add_team');
        $subroutes->add('team/form/(:any)', 'CmsController::add_team/$1');
        $subroutes->add('team/overview', 'CmsController::overview');

        $subroutes->add('advisors', 'CmsController::advisor_list');
        $subroutes->add('advisors/form', 'CmsController::add_advisors');
        $subroutes->add('advisors/form/(:any)', 'CmsController::add_advisors/$1');

        $subroutes->add('testimonial', 'CmsController::testimonial_list');
        $subroutes->add('testimonial/form', 'CmsController::add_testimonial');
        $subroutes->add('testimonial/form/(:any)', 'CmsController::add_testimonial/$1');

        $subroutes->add('chart', 'CmsController::chart_list');
        $subroutes->add('chart/form', 'CmsController::add_chart');
        $subroutes->add('chart/form/(:any)', 'CmsController::add_chart/$1');

        $subroutes->add('roadmap', 'CmsController::roadmap_list');
        $subroutes->add('roadmap/form', 'CmsController::add_roadmap');
        $subroutes->add('roadmap/form/(:any)', 'CmsController::add_roadmap/$1');

        $subroutes->add('client', 'CmsController::client_list');
        $subroutes->add('client/form', 'CmsController::add_client');
        $subroutes->add('client/form/(:any)', 'CmsController::add_client/$1');

        $subroutes->add('aboutcoin', 'CmsController::aboutcoin_list');
        $subroutes->add('aboutcoin/form', 'CmsController::add_aboutcoin');
        $subroutes->add('aboutcoin/form/(:any)', 'CmsController::add_aboutcoin/$1');


        $subroutes->add('faq', 'CmsController::faq_list');
        $subroutes->add('faq/form', 'CmsController::add_faq');
        $subroutes->add('faq/form/(:any)', 'CmsController::add_faq/$1');
        $subroutes->add('delete-faq/(:any)', 'CmsController::delete_faq/$1');
        //new add route for icowallet end

        

        $subroutes->add('notice-list', 'CmsController::notice_list');
        $subroutes->add('add-notice', 'CmsController::add_notice');
        $subroutes->add('add-notice/(:any)', 'CmsController::add_notice/$1');
        $subroutes->add('edit-notice/(:any)', 'CmsController::add_notice/$1');
        $subroutes->add('delete-notice/(:any)', 'CmsController::delete_notice/$1');

        $subroutes->add('contact', 'CmsController::contact');

        $subroutes->add('news-list', 'CmsController::news_list');
        $subroutes->add('add-news', 'CmsController::add_news');
        $subroutes->add('add-news/(:any)', 'CmsController::add_news/$1');
        $subroutes->add('edit-news/(:any)', 'CmsController::add_news/$1');
        $subroutes->add('delete-news/(:any)', 'CmsController::delete_news/$1');

        $subroutes->add('category-list', 'CmsController::category_list');
        $subroutes->add('add-category', 'CmsController::add_category');
        $subroutes->add('add-category/(:any)', 'CmsController::add_category/$1');
        $subroutes->add('edit-category/(:any)', 'CmsController::add_category/$1');
        $subroutes->add('delete-category/(:any)', 'CmsController::delete_category/$1');

        $subroutes->add('slider-list', 'CmsController::slider_list');
        $subroutes->add('add-slider', 'CmsController::add_slider');
        $subroutes->add('add-slider/(:any)', 'CmsController::add_slider/$1');
        $subroutes->add('edit-slider/(:any)', 'CmsController::add_slider/$1');
        $subroutes->add('delete-slider/(:any)', 'CmsController::delete_slider/$1');

        $subroutes->add('social-link-list', 'CmsController::social_link_list');
        $subroutes->add('add-social-link', 'CmsController::add_social_link');
        $subroutes->add('add-social-link/(:any)', 'CmsController::add_social_link/$1');
        $subroutes->add('edit-social-link/(:any)', 'CmsController::add_social_link/$1');
        $subroutes->add('delete-social-link/(:any)', 'CmsController::delete_social_link/$1');

        $subroutes->add('advertisement-list', 'CmsController::advertisement_list');
        $subroutes->add('add-advertisement', 'CmsController::add_advertisement');
        $subroutes->add('add-advertisement/(:any)', 'CmsController::add_advertisement/$1');
        $subroutes->add('edit-advertisement/(:any)', 'CmsController::add_advertisement/$1');
        $subroutes->add('delete-advertisement/(:any)', 'CmsController::delete_advertisement/$1');
        $subroutes->add('getAdvertisementinfo/(:any)', 'CmsController::getAdvertisementinfo/$1');

        $subroutes->add('web-language-list', 'CmsController::weblanguage_list');
        $subroutes->add('add-weblanguage', 'CmsController::add_weblanguage');
        $subroutes->add('add-weblanguage/(:any)', 'CmsController::add_weblanguage/$1');
        $subroutes->add('edit-weblanguage/(:any)', 'CmsController::add_weblanguage/$1');
        $subroutes->add('delete-weblanguage/(:any)', 'CmsController::delete_weblanguage/$1');
    });