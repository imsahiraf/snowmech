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
if(!array_key_exists('payment_gateway',$ADMINMENU)){
    $ADMINMENU['payment_gateway'] = array(
        'order'         => 14,
        'parent'        => 'Payment Gateway',
        'status'        => 1,
        'icon'          => '<i class="fas fa-cogs"></i>',
        'submenu'       => array(
                    '0' => array(
                        'name'          => 'Paypal',
                        'icon'          => null,
                        'link'          => 'payment_gateway/paypal_setting',
                        'segment'       => 3,
                        'segment_text'  => 'paypal_setting'
                    )
                    
        ),
        'segment'       => 2,
        'segment_text'  => 'payment_gateway'
    );
}
else{
    $arraydata =  array(
                'name'          => 'Paypal',
                'icon'          => null,
                'link'          => 'payment_gateway/paypal_setting',
                'segment'       => 3,
                'segment_text'  => 'paypal_setting'
        );
    array_push($ADMINMENU['payment_gateway']['submenu'], $arraydata);
}
