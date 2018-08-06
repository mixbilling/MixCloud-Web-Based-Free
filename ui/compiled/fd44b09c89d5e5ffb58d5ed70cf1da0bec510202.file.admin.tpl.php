<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:40:40
         compiled from "ui\theme\default\admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21565b68a438b69412-28097074%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fd44b09c89d5e5ffb58d5ed70cf1da0bec510202' => 
    array (
      0 => 'ui\\theme\\default\\admin.tpl',
      1 => 1530203585,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21565b68a438b69412-28097074',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_title' => 0,
    '_L' => 0,
    '_theme' => 0,
    '_url' => 0,
    'notify' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a438bee135_11456897',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a438bee135_11456897')) {function content_5b68a438bee135_11456897($_smarty_tpl) {?><!DOCTYPE html>
<html>
	<head>
	  	<meta charset="utf-8">
	  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  	<title><?php echo $_smarty_tpl->tpl_vars['_title']->value;?>
 - <?php echo $_smarty_tpl->tpl_vars['_L']->value['Login'];?>
</title>
	 	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/favicon.png" type="image/x-icon" />	 	
	  	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/bootstrap/css/bootstrap.min.css">
	  	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/font-awesome/css/font-awesome.min.css">
	  	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/ionicons/css/ionicons.min.css">
	  	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/css/AdminLTE.min.css">
	  	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/plugins/iCheck/square/green.css">

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
	    		<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
admin"><b>Mix.Cloud - </b>Login</a>
	  		</div>
	  		<div class="login-box-body">
				<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
					<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

				<?php }else{ ?>
					<p class="login-box-msg">PLEASE SIGN IN</p>
				<?php }?>
				<form action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
admin/post" method="post">
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
									<input type="checkbox">&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remember_Me'];?>

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
			<strong>Copyright <?php echo date('Y');?>
 &copy; <a href="https://hijaunet.id/">Mix.Cloud</a></strong>
		</footer>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/jquery/jquery.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/plugins/iCheck/icheck.min.js"></script>
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
<?php }} ?>