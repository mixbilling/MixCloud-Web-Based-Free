<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTP://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

if (session_status() == PHP_SESSION_NONE) session_start();
session_destroy();
header('location: index.php');