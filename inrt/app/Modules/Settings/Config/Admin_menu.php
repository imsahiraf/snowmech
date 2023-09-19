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

$ADMINMENU['setting'] = array(
    'order'         => 6,
    'parent'        => 'Setting',
    'status'        => 1,
    'link'          => 'setting',
    'icon'          => '<i class="fa fa ti-settings"></i>',
    'submenu'       => array(
                '0' => array(
                    'name'          => 'App Setting',
                    'icon'          => null,
                    'link'          => 'setting/app-setting',
                    'segment'       => 3,
                    'segment_text'  => 'app-setting',
                ),
                '1' => array(
                    'name'          => 'Fees Setting',
                    'icon'          => null,
                    'link'          => 'setting/fees-setting',
                    'segment'       => 3,
                    'segment_text'  => 'fees-setting',
                ),
                '2' => array(
                    'name'          => 'Email Gateway',
                    'icon'          => null,
                    'link'          => 'setting/email-gateway',
                    'segment'       => 3,
                    'segment_text'  => 'email-gateway',
                ),
                '3' => array(
                    'name'          => 'SMS Gateway',
                    'icon'          => null,
                    'link'          => 'setting/sms-gateway',
                    'segment'       => 3,
                    'segment_text'  => 'sms-gateway',
                ),
                '4' => array(
                    'name'          => 'Email SMS Template',
                    'icon'          => null,
                    'link'          => 'setting/email-sms-template',
                    'segment'       => 3,
                    'segment_text'  => 'email-sms-template',
                ),
                '5' => array(
                    'name'          => 'Email SMS Setting',
                    'icon'          => null,
                    'link'          => 'setting/email-sms-settings',
                    'segment'       => 3,
                    'segment_text'  => 'email-sms-settings',
                ),
                '6' => array(
                    'name'          => 'Language Setting',
                    'icon'          => null,
                    'link'          => 'setting/language',
                    'segment'       => 3,
                    'segment_text'  => 'language',
                ),
                '7' => array(
                    'name'          => 'Affiliation Setup',
                    'icon'          => null,
                    'link'          => 'setting/affiliation',
                    'segment'       => 3,
                    'segment_text'  => 'affiliation',
                )
    ),
    'segment'       => 2,
    'segment_text'  => 'deposit'
);