<!DOCTYPE html>
<html>
	<head>
	  	<meta charset="utf-8">
	  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  	<title>{$_title} - {$_L['Login']}</title>
	 	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="shortcut icon" href="{$_theme}/images/favicon.png" type="image/x-icon" />	 	
	  	<link rel="stylesheet" href="{$_theme}/assets/bootstrap/css/bootstrap.min.css">
	  	<link rel="stylesheet" href="{$_theme}/assets/font-awesome/css/font-awesome.min.css">
	  	<link rel="stylesheet" href="{$_theme}/assets/ionicons/css/ionicons.min.css">
	  	<link rel="stylesheet" href="{$_theme}/assets/dist/css/AdminLTE.min.css">
	  	<link rel="stylesheet" href="{$_theme}/assets/plugins/iCheck/square/green.css">

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
	    		<a href="{$_url}admin"><b>Member - </b>Login</a>
	  		</div>
	  		<div class="login-box-body">
				{if isset($notify)}
					{$notify}
				{else}
					<p class="login-box-msg">PLEASE SIGN IN</p>
				{/if}
				<form action="{$_url}login/post" method="post">
					<div class="form-group has-feedback">
						<input type="text" name="username" class="form-control" placeholder="Username">
						<span class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" name="password" class="form-control" placeholder="Password">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<hr style="margin-top: 0;margin-bottom: 10px">
					<div class="row">
						<div class="col-xs-8">
							<div class="checkbox icheck">
								<label>
									<input type="checkbox">&nbsp;&nbsp;{$_L['Remember_Me']}
								</label>
							</div>
						</div>
						<div class="col-xs-4">
							<button type="submit" name="login" class="btn btn-success btn-block btn-flat">Sign In</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<footer class="main-footer" style="position:fixed;bottom:0;width: 100%;margin-left:0;text-align: center;">
			<strong>Copyright {date('Y')} &copy; <a href="https://hijaunet.id/">Mix.Cloud</a></strong>
		</footer>
		<script src="{$_theme}/assets/jquery/jquery.min.js"></script>
		<script src="{$_theme}/assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="{$_theme}/assets/plugins/iCheck/icheck.min.js"></script>
		<script>
		  	$(function () {
		    	$('input').iCheck({
		      		checkboxClass: 'icheckbox_square-green',
		      		radioClass: 'iradio_square-green',
		      		increaseArea: '20%' /* optional */
		    	});
		  	});
		</script>
	</body>
</html>
