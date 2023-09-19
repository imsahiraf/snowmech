<?php

/*
    **Developed By Bdtask Ltd. (--Blockchain Team--)**

    1) Status 0 = single menu, 1= parent menue with sub menu
    2) Segment and segemnt text use for active menu when click this menu ex:- if(segment==segment_text)?'active':null;
    3) Menu without sub menu ex:-

        i) Do not change :- 'status' => 0

        $CUSTOMERMENU['auth'] = array(
            'parent'        => 'Dashboard',
            'status'        => 0,
            'link'          => 'home',
            'icon'          => '<i class="typcn typcn-home-outline"></i>',
            'segment'       => 2,
            'segment_text'  => 'home'
        );

    4) Menu with sub menu ex:-

        i) Do not change :- 'status' => 1

        $CUSTOMERMENU['auth'] = array(
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
        array_push($CUSTOMERMENU['auth']['submenu'], $arraydata);
    6) Order => x use for shorting menu
*/

$CUSTOMERMENU['finance'] = array(
    'order'         => 3,
    'parent'        => display('finance'),
    'status'        => 1,
    'icon'          => '<i class="fas fa-chart-pie"></i>',
    'submenu'       => array(
        '0' => array(
                    'name'          => display('deposit'),
                    'icon'          => null,
                    'link'          => 'finance/deposit',
                    'segment'       => 3,
                    'segment_text'  => 'deposit',
        ),
        '1' => array(
                    'name'          => display('transfer'),
                    'icon'          => null,
                    'link'          => 'finance/transfer',
                    'segment'       => 3,
                    'segment_text'  => 'transfer',
        ),
        '2' => array(
                    'name'          => display('withdraw'),
                    'icon'          => null,
                    'link'          => 'finance/withdraw',
                    'segment'       => 3,
                    'segment_text'  => 'withdraw',
        ),
        '3' => array(
                    'name'          => display('transaction'),
                    'icon'          => null,
                    'link'          => 'finance/transactions',
                    'segment'       => 3,
                    'segment_text'  => 'transactions',
        ),
        '4' => array(
                    'name'          => display('payout_setting'),
                    'icon'          => null,
                    'link'          => 'finance/payment-method-setting',
                    'segment'       => 3,
                    'segment_text'  => 'payment-method-setting',
        )
    ),
    'segment'       => 2,
    'segment_text'  => 'finance'
);


