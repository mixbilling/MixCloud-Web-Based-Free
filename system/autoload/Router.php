<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTPS://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

Class Router{
    public static function _info($name){
		$d = ORM::for_table('tbl_routers')->where('name',$name)->find_one();
        return $d;
    }
}