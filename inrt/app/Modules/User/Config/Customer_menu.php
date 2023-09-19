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

$CUSTOMERMENU['accounts'] = array(
    'order'         => 2,
    'parent'        => display('accounts'),
    'status'        => 1,
    'link'          => 'user',
    'icon'          => '<i class="ti-key"></i>',
    'submenu'       => array(
                '0' => array(
                    'name'          => display('kyc'),
                    'icon'          => null,
                    'link'          => 'account/verify-account',
                    'segment'       => 3,
                    'segment_text'  => 'verify-account',
                ),
                '2' => array(
                    'name'          => display('profile'),
                    'icon'          => null,
                    'link'          => 'account/profile',
                    'segment'       => 3,
                    'segment_text'  => 'profile',
                ),
                '3' => array(
                    'name'          => display('password_change'),
                    'icon'          => null,
                    'link'          => 'account/change-password',
                    'segment'       => 3,
                    'segment_text'  => 'change-password',
                )
    ),
    'segment'       => 2,
    'segment_text'  => 'user'
);