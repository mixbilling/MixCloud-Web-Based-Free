<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTPS://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);
//error_reporting(E_ALL);

$date_now = strtotime(date("Y-m-d"));
$expiration = strtotime("2019-12-30");

if ($date_now >= $expiration){	?>
	<!DOCTYPE html>
	<html>
	<head>
	  	<meta charset="utf-8">
	  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  	<title>Mix.Cloud - NOTICE</title>
	 	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="shortcut icon" href="ui/theme/default/images/favicon.png" type="image/x-icon" />	 	
	  	<link rel="stylesheet" href="ui/theme/default/assets/bootstrap/css/bootstrap.min.css">
	  	<link rel="stylesheet" href="ui/theme/default/assets/font-awesome/css/font-awesome.min.css">
	  	<link rel="stylesheet" href="ui/theme/default/assets/ionicons/css/ionicons.min.css">
	  	<link rel="stylesheet" href="ui/theme/default/assets/dist/css/AdminLTE.min.css">

	  	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	  	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	  	<!--[if lt IE 9]>
	  	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	  	<![endif]-->
	</head>
	<body style="height:auto" class="hold-transition login-page body-full">
		<div class="login-box">
	  		<div class="login-logo">
	    		<a href="#"><b>Mix.Cloud - </b>Notice</a>
	  		</div>
	  		<div class="login-box-body">
				<h2 style="text-align:center;margin-top:-1px;">LOCKED</h2>
				<h2 style="text-align:center;margin-top:-1px;">Service Limit Expired</h2>	
				<h5 style="text-align:center;margin-top:18px;">Please Contact Your Service Provider</h5>
				<h5 style="text-align:center;margin-top:18px;">E-mail: owner.hijaun3t@gmail.com<br> Fb: https://www.facebook.com/hijaunetpct<br> Mobile/Whatsapp: +62 877-0229-9005</h5>
				<center><a style="min-width:100%;max-width:100%;margin-top:15px;" class="btn btn-success waves-effect" href="admin">RE-LOGIN</a></center>
			</div>
		</div>

		<footer class="main-footer" style="position:fixed;bottom:0;width: 100%;margin-left:0;text-align: center;">
			<strong>Copyright 2018 &copy; <a href="https://hijaunet.id/">Mix.Cloud</a></strong>
		</footer>
		<script src="ui/theme/default/assets/jquery/jquery.min.js"></script>
		<script src="ui/theme/default/assets/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>

<?php } else {	
	require ('system/boot.php');
	App::_run();
}
