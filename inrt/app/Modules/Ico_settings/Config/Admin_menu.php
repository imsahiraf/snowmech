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

$ADMINMENU['ico_setting'] = array(
    'order'         => 6,
    'parent'        => display('ico_setting'),
    'status'        => 1,
    'link'          => 'ico_setting',
    'icon'          => '<i class="fas fa-cogs"></i>',
    'submenu'       => array(
                '0' => array(
                    'name'          => display('currency'),
                    'icon'          => null,
                    'link'          => 'ico-settings/currency',
                    'segment'       => 3,
                    'segment_text'  => 'currency',
                ),
                '1' => array(
                    'name'          => display('coin_setup'),
                    'icon'          => null,
                    'link'          => 'ico-settings/coin-setup',
                    'segment'       => 3,
                    'segment_text'  => 'coin-setup',
                ),
                '2' => array(
                    'name'          => display('coin_manager'),
                    'icon'          => null,
                    'link'          => 'ico-settings/coin-manager',
                    'segment'       => 3,
                    'segment_text'  => 'coin-manager',
                ),
                '3' => array(
                    'name'          => display('coin_releasing_list'),
                    'icon'          => null,
                    'link'          => 'ico-settings/coin-releasing-list',
                    'segment'       => 3,
                    'segment_text'  => 'coin-releasing-list',
                ),
                '4' => array(
                    'name'          => display('white_paper'),
                    'icon'          => null,
                    'link'          => 'ico-settings/white-paper',
                    'segment'       => 3,
                    'segment_text'  => 'white-paper',
                )
    ),
    'segment'       => 2,
    'segment_text'  => 'deposit'
);