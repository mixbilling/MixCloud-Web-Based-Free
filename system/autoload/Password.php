<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTPS://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

Class Password{

    public static function _crypt($password) {
        return crypt($password);
    }

    public static function _verify($user_input, $hashed_password){
        if (crypt($user_input, $hashed_password) == $hashed_password) {
            return true;
        }
        return false;
    }
    public static function _uverify($user_input, $hashed_password){
        if ($user_input == $hashed_password) {
            return true;
        }
        return false;
    }
    public static function _gen(){
        $pass = substr(str_shuffle(str_repeat('ABCDEFGHIJKLMNPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@#!123456789', 8)), 0, 8);
        return $pass;
    }

}