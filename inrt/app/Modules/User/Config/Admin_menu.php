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

$ADMINMENU['user'] = array(
    'order'         => 4,
    'parent'        => 'Users',
    'status'        => 1,
    'link'          => 'user',
    'icon'          => '<i class="fa fa-users"></i>',
    'submenu'       => array(
                '0' => array(
                    'name'          => 'Create User',
                    'icon'          => null,
                    'link'          => 'users/user_info',
                    'segment'       => 3,
                    'segment_text'  => 'user_info',
                ),
                '2' => array(
                    'name'          => 'User List',
                    'icon'          => null,
                    'link'          => 'users/user_list',
                    'segment'       => 3,
                    'segment_text'  => 'user_list',
                ),
                '3' => array(
                    'name'          => 'Verify User',
                    'icon'          => null,
                    'link'          => 'users/verify_user',
                    'segment'       => 3,
                    'segment_text'  => 'verify_user',
                ),
                '4' => array(
                    'name'          => 'Subscriber',
                    'icon'          => null,
                    'link'          => 'users/subscriber',
                    'segment'       => 3,
                    'segment_text'  => 'subscriber',
                )
    ),
    'segment'       => 2,
    'segment_text'  => 'user'
);