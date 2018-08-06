<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:40:49
         compiled from "ui\theme\default\sections\home-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7145b68a4418e2ca9-20184050%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '83feb968340612850e1d0028b3d001fbc5afa21f' => 
    array (
      0 => 'ui\\theme\\default\\sections\\home-header.tpl',
      1 => 1530237716,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7145b68a4418e2ca9-20184050',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_title' => 0,
    '_theme' => 0,
    'xheader' => 0,
    '_url' => 0,
    '_L' => 0,
    '_admin' => 0,
    '_system_menu' => 0,
    'index' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a4419b9a58_33446043',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a4419b9a58_33446043')) {function content_5b68a4419b9a58_33446043($_smarty_tpl) {?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php echo $_smarty_tpl->tpl_vars['_title']->value;?>
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
/assets/dist/css/skins/skin-green.min.css">
		<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/css/dataTables.bootstrap.min.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<?php if (isset($_smarty_tpl->tpl_vars['xheader']->value)){?>
			<?php echo $_smarty_tpl->tpl_vars['xheader']->value;?>

		<?php }?>
	</head>

	<body class="hold-transition skin-green fixed sidebar-mini">
		<div class="wrapper">
			<header class="main-header">
				<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-dashboard" class="logo">
					<span class="logo-mini"><b>M</b>C</span>
					<span class="logo-lg"><b>Mix.Cloud</b></span>
				</a>
				<nav class="navbar navbar-static-top">
					<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					
					<button data-toggle="modal" data-target="#select-router" style="height:38px;margin-left:15px;margin-top: 5px" class="btn btn-danger waves-effect waves-light active" type="button"><a style="color:#ffffff;" href="#"><i class="ion ion-shuffle"></i> <span id="text-select-router"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
</span></a></button> 

					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<?php if ($_smarty_tpl->tpl_vars['_admin']->value['profile_img']==''){?>
									<img src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/admin_default.png" class="user-image" >
								<?php }else{ ?>
									<img src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['profile_img'];?>
" class="user-image" >
								<?php }?>	
									<span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_admin']->value['username'];?>
</span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
									<?php if ($_smarty_tpl->tpl_vars['_admin']->value['profile_img']==''){?>	
										<img src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/admin_default.png" class="img-circle" >
									<?php }else{ ?>
										<img src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['profile_img'];?>
" class="img-circle" >
									<?php }?>	
										<p>
											<?php echo $_smarty_tpl->tpl_vars['_admin']->value['username'];?>

											<small style="text-transform: uppercase;"><?php echo $_smarty_tpl->tpl_vars['_admin']->value['user_type'];?>
</small>
										</p>
										<li class="user-footer">
											<div class="pull-left">
												<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/users-edit/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['id'];?>
" class="btn btn-default btn-flat">Profile</a>
											</div>
											<div class="pull-right">
												<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
logout" class="btn btn-default btn-flat">Sign out</a>
											</div>
										</li>
									</li>	
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</header>

			<aside class="main-sidebar">
				<section class="sidebar">
					<div class="user-panel">
						<div class="pull-left image">
						<?php if ($_smarty_tpl->tpl_vars['_admin']->value['profile_img']==''){?>		
							<img src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/admin_default.png" class="img-circle" >
						<?php }else{ ?>
							<img src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['profile_img'];?>
" class="img-circle" >
						<?php }?>	
						</div>
						<div class="pull-left info">
							<p><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/users-edit/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['id'];?>
" title="PROFILE"><?php echo $_smarty_tpl->tpl_vars['_admin']->value['username'];?>
</a></p>
							<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						</div>
					</div>
					<!-- <form action="#" method="get" class="sidebar-form">
						<div class="input-group">
							<input type="text" name="q" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
							</span>
						</div>
					</form> -->
					<ul class="sidebar-menu" data-widget="tree">
						<li class="header">MAIN NAVIGATION</li>
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='dashboard'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-dashboard">
								<i class="fa fa-home"></i> <span>Dashboard</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">new</small>
								</span>
							</a>
						</li>
						<li>
							<a href="#" data-toggle="modal" data-target="#select-router">
								<i class="fa fa-sign-in"></i> <span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">new</small>
								</span>
							</a>
						</li>
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='home-app-settings'){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-cogs"></i>
								<span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Settings'];?>
</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='general'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/app"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['General_Settings'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='localisation'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/localisation"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Localisation'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='invoice'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/invoice-logo"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice_Logo'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='users'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/users"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Administrator_Users'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='routers'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-routers/list"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='database'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/dbstatus"><i class="fa fa-circle-o"></i>Database</a></li>
							</ul>
						</li>
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='licence'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-licence/details">
								<i class="fa fa-expeditedssl"></i> <span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Licence'];?>
</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-red">lock</small>
								</span>
							</a>
						</li>        
					</ul>
				</section>
			</aside>
<?php }} ?>