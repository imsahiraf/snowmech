<?php

/*
    **Developed By Bdtask Ltd. (--Blockchain Team--)**

    1) Status 0 = single menu, 1= parent menue with sub menu
    2) Segment and segemnt text use for active menu when click this menu ex:- if(segment==segment_text)?'active':null;
    3) Menu without sub menu ex:-

        i) Do not change :- 'status' => 0

        $ADMINMENU['auth'] = array(
            'order'         => 1,
            'parent'        => 'Dashboard',
            'status'        => 0,
            'link'          => 'home',
            'icon'          => '<i class="typcn typcn-home-outline"></i>',
            'segment'       => 2,
            'segment_text'  => 'home'
        );

    4) Menu with sub menu ex:-

        i) Do not change :- 'status' => 1

        $ADMINMENU['auth'] = array(
            'order'                 => 1,
            'parent'                => 'Finance',
            'icon'                  => '<i class="fa fa-credit-card"></i>',
            'submenu'               => array(
                '0' => array(
                    'name'          => 'Deposit',
                    'icon'          => null,
                    'link'          => 'deposit',
                    'segment'       => 2,
                    'segment_text'  => 'deposit',
                ),
                '1' => array(
                    'name'          => 'Withdraw',
                    'icon'          => null,
                    'link'          => 'withdraw',
                    'segment'       => 2,
                    'segment_text'  => 'withdraw',
                )
            ),
            'segment'               => 2,
            'segment_text'          => 'finance',
            'status'                => 1
        );
    5) Previous menu with new submenu push ex:-
        $arraydata = array(
            '0' => array(
                'name'          => 'Pending Deposti',
                'icon'          => null,
                'link'          => 'deposit/pending_deposit',
                'segment'       => 3,
                'segment_text'  => 'pending_deposit',
            )
        );
        array_push($ADMINMENU['auth']['submenu'], $arraydata);
    6) Order => x use for shorting menu
*/

$ADMINMENU['cms'] = array(
    'order'         => 5,
    'parent'        => display('cms'),
    'status'        => 1,
    'link'          => 'cms',
    'icon'          => '<i class="fas fa-tv"></i>',
    'submenu'       => array(
                '0' => array(
                    'name'          => display('page_content'),
                    'icon'          => null,
                    'link'          => 'cms/page-content-list',
                    'segment'       => 3,
                    'segment_text'  => 'page-content-list',
                ),
                '1' => array(
                    'name'          => display('f.a.q'),
                    'icon'          => null,
                    'link'          => 'cms/faq',
                    'segment'       => 3,
                    'segment_text'  => 'faq',
                ),
                '2' => array(
                    'name'          => display('team'),
                    'icon'          => null,
                    'link'          => 'cms/team',
                    'segment'       => 3,
                    'segment_text'  => 'team',
                ),
                '3' => array(
                    'name'          => display('advisors'),
                    'icon'          => null,
                    'link'          => 'cms/advisors',
                    'segment'       => 3,
                    'segment_text'  => 'advisors',
                ),
                '4' => array(
                    'name'          => display('testimonial'),
                    'icon'          => null,
                    'link'          => 'cms/testimonial',
                    'segment'       => 3,
                    'segment_text'  => 'testimonial',
                ),
                '5' => array(
                    'name'          => display('chart'),
                    'icon'          => null,
                    'link'          => 'cms/chart',
                    'segment'       => 3,
                    'segment_text'  => 'chart',
                ),
                '6' => array(
                    'name'          => display('roadmap'),
                    'icon'          => null,
                    'link'          => 'cms/roadmap',
                    'segment'       => 3,
                    'segment_text'  => 'roadmap',
                ),
                '7' => array(
                    'name'          => display('aboutcoin'),
                    'icon'          => null,
                    'link'          => 'cms/aboutcoin',
                    'segment'       => 3,
                    'segment_text'  => 'aboutcoin',
                ),
                '8' => array(
                    'name'          => display('news_list'),
                    'icon'          => null,
                    'link'          => 'cms/news-list',
                    'segment'       => 3,
                    'segment_text'  => 'news-list',
                ),
                '9' => array(
                    'name'          => display('category_list'),
                    'icon'          => null,
                    'link'          => 'cms/category-list',
                    'segment'       => 3,
                    'segment_text'  => 'category-list',
                ),
                '10' => array(
                    'name'          => display('social_link_list'),
                    'icon'          => null,
                    'link'          => 'cms/social-link-list',
                    'segment'       => 3,
                    'segment_text'  => 'social-link-list',
                ),
                '11' => array(
                    'name'          => display('advertisement_list'),
                    'icon'          => null,
                    'link'          => 'cms/advertisement-list',
                    'segment'       => 3,
                    'segment_text'  => 'advertisement-list',
                ),
                '12' => array(
                    'name'          => display('web_language_list'),
                    'icon'          => null,
                    'link'          => 'cms/web-language-list',
                    'segment'       => 3,
                    'segment_text'  => 'web-language-list',
                )

    ),
    'segment'       => 2,
    'segment_text'  => 'cms'
);