<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTPS://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

Class Admin{
    public static function _info(){
        $id = $_SESSION['aid'];
        $d = ORM::for_table('tbl_users')->find_one($id);
        return $d;
    }
}