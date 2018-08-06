<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTPS://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

Class User{
    public static function _info(){
        $id = $_SESSION['uid'];
        $d = ORM::for_table('tbl_customers')->find_one($id);
        return $d;
    }
    public static function _billing(){
        $id = $_SESSION['uid'];
        $d = ORM::for_table('tbl_user_recharges')->where('customer_id',$id)->find_one();
        return $d;
    }
}