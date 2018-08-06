<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:39:54
         compiled from "ui\theme\default\sections\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:130125b68a40a5d1058-68237884%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fc39c09e179f1f2242089417deeb4a8348372c79' => 
    array (
      0 => 'ui\\theme\\default\\sections\\header.tpl',
      1 => 1532440750,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '130125b68a40a5d1058-68237884',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_title' => 0,
    '_theme' => 0,
    'xheader' => 0,
    '_url' => 0,
    '_admin' => 0,
    '_L' => 0,
    'usermanager' => 0,
    'pppoe_expire' => 0,
    'ppp_expire' => 0,
    'hotspot_expire' => 0,
    'hs_expire' => 0,
    '_system_menu' => 0,
    'index' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a40a8ceb00_90255420',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a40a8ceb00_90255420')) {function content_5b68a40a8ceb00_90255420($_smarty_tpl) {?><!DOCTYPE html>
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
/assets/plugins/datepicker/css/bootstrap-datepicker.css">		
		<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/plugins/select2/css/select2.min.css">
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
		<div style="background: #ecf0f5;" class="wrapper">
			<header class="main-header">
				<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
dashboard" class="logo">
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
				<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>	
					<button data-toggle="modal" data-target="#select-router" style="height:38px;margin-left:15px;margin-top: 5px" class="btn btn-danger waves-effect waves-light active" type="button"><a style="color:#ffffff;" href="#"><i class="ion ion-shuffle"></i> <span id="text-select-router"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
</span></a></button>
					<?php if ($_smarty_tpl->tpl_vars['usermanager']->value=='Yes'){?>
						<button onclick="javascript:window.location.href='<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers'; return false;" style="height:38px;margin-left:15px;margin-top: 5px" class="btn btn-warning waves-effect waves-light active" type="button"><span style="color:#ffffff;" href=""><i class="ion ion-android-contact"></i> <span id="text-select-userman"> User Manager</span></span></button>
					<?php }?>
				<?php }?>		

					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown messages-menu">
					            <a title="PPPOE EXPIRE (MEMBER)" href="#" class="dropdown-toggle" data-toggle="dropdown">
					              <i class="fa  fa-chain-broken"></i>
					              <span class="label label-danger"><?php echo count($_smarty_tpl->tpl_vars['pppoe_expire']->value);?>
</span>
					            </a>
					           	<ul class="dropdown-menu">
					              	<li style="text-decoration: underline;" class="header">PPPOE Expire</li>
					              	<li>					                
					                	<ul class="menu">
					                  		<li>
					                  		<?php  $_smarty_tpl->tpl_vars['ppp_expire'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ppp_expire']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pppoe_expire']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ppp_expire']->key => $_smarty_tpl->tpl_vars['ppp_expire']->value){
$_smarty_tpl->tpl_vars['ppp_expire']->_loop = true;
?>
					                    		<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
prepaid/recharge-user/<?php echo $_smarty_tpl->tpl_vars['ppp_expire']->value['customer_id'];?>
" title="RECHARGE USER">
					                      			<div class="pull-left">
					                        			<i style="font-size: 30px" class="ion ion-flash"></i>
					                      			</div>
					                      			<h4 style="margin: 0 0 0 35px;font-size: 13px">
					                        			<?php echo $_smarty_tpl->tpl_vars['ppp_expire']->value['username'];?>
 <span style="font-size: 12px">(<?php echo $_smarty_tpl->tpl_vars['ppp_expire']->value['expiration'];?>
 | <?php echo $_smarty_tpl->tpl_vars['ppp_expire']->value['time'];?>
)</span>
					                      			</h4>
					                      			<p style="margin: 0 0 0 35px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Last_Recharge'];?>
 <?php echo $_smarty_tpl->tpl_vars['ppp_expire']->value['owner_name'];?>
</p>
					                    		</a>
					                    	<?php } ?>	
					                  		</li>
					                  	</ul>
					                </li>
					                <!--<li class="footer" style="border-top:solid 1px #eee;">
					                <?php if ($_smarty_tpl->tpl_vars['pppoe_expire']->value){?>	
					                	<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
prepaid/pppoe-expire"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_All'];?>
</a>
					                <?php }else{ ?>
					                	<a href="#"><?php echo $_smarty_tpl->tpl_vars['_L']->value['No_Data'];?>
</a>
					                <?php }?>	
					                </li>-->
					            </ul>
							</li>

							<li class="dropdown messages-menu">
					            <a title="HOTSPOT EXPIRE (MEMBER)" href="#" class="dropdown-toggle" data-toggle="dropdown">
					              <i class="fa fa-signal"></i>
					              <span class="label label-danger"><?php echo count($_smarty_tpl->tpl_vars['hotspot_expire']->value);?>
</span>
					            </a>
					           	<ul class="dropdown-menu">
					              	<li style="text-decoration: underline;" class="header">Hotspot Expire</li>
					              	<li>					                
					                	<ul class="menu">
					                  		<li>
					                  		<?php  $_smarty_tpl->tpl_vars['hs_expire'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['hs_expire']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['hotspot_expire']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['hs_expire']->key => $_smarty_tpl->tpl_vars['hs_expire']->value){
$_smarty_tpl->tpl_vars['hs_expire']->_loop = true;
?>	
					                    		<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
prepaid/recharge-user/<?php echo $_smarty_tpl->tpl_vars['hs_expire']->value['customer_id'];?>
" title="RECHARGE USER">
					                      			<div class="pull-left">
					                        			<i style="font-size: 30px" class="ion ion-flash"></i>
					                      			</div>					                      			
					                      			<h4 style="margin: 0 0 0 35px;font-size: 13px">
					                        			<?php echo $_smarty_tpl->tpl_vars['hs_expire']->value['username'];?>
 <span style="font-size: 12px">(<?php echo $_smarty_tpl->tpl_vars['hs_expire']->value['expiration'];?>
 | <?php echo $_smarty_tpl->tpl_vars['hs_expire']->value['time'];?>
)</span>
					                      			</h4>
					                      			<p style="margin: 0 0 0 35px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Last_Recharge'];?>
 <?php echo $_smarty_tpl->tpl_vars['hs_expire']->value['owner_name'];?>
</p>
					                    		</a>
					                    	<?php } ?>	
					                  		</li>
					                  	</ul>
					                </li>
					                <!--<li class="footer" style="border-top:solid 1px #eee;">
					                <?php if ($_smarty_tpl->tpl_vars['hotspot_expire']->value){?>	
					                	<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
prepaid/hotspot-expire"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_All'];?>
</a>
					                <?php }else{ ?>
					                	<a href="#"><?php echo $_smarty_tpl->tpl_vars['_L']->value['No_Data'];?>
</a>
					                <?php }?>	
					                </li>-->
					            </ul>
							</li>

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
settings/users-edit/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['id'];?>
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
							<img <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='edit-profile'){?> style="border:solid 1px #999999"<?php }?> src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/admin_default.png" class="img-circle" >
						<?php }else{ ?>
							<img <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='edit-profile'){?> style="border:solid 1px #999999"<?php }?> src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/admin/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['profile_img'];?>
" class="img-circle" >
						<?php }?>
						</div>
						<div class="pull-left info">
							<p><a <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='edit-profile'){?> style="text-decoration: underline;color:#ffffff"<?php }?> href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/users-edit/<?php echo $_smarty_tpl->tpl_vars['_admin']->value['id'];?>
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
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-user-secret"></i>
								<span style="color:red"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Tools'];?>
</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='mikrotik'){?> class="active" <?php }?> ><a href="#" data-toggle="modal" data-target="#select-router"><i class="fa fa-circle-o"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Change_Routers'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='mikrotik'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-dashboard"><i class="fa fa-circle-o"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['First_Page'];?>
</a></li>
							</ul>
						</li>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'&&$_smarty_tpl->tpl_vars['usermanager']->value=='Yes'){?>
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='user-manager'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers">
								<i class="fa fa-users"></i> <span>User Manager</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">U</small>
								</span>
							</a>
						</li>
					<?php }?>												
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='dashboard'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
dashboard">
								<i class="fa fa-home"></i> <span>Dashboard</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">O</small>
								</span>
							</a>
						</li>
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='sosial'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
sosial/list">								
								<i class="fa fa-facebook-square"></i> <span>Social Media</span>								
								<span class="pull-right-container">									
								<small class="label pull-right bg-green">BETA</small>								
								</span>							</a>						
						</li>	
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='manage-voucher'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/voucher">								
								<i class="fa fa-credit-card"></i> <span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Voucher'];?>
</span>								
								<span class="pull-right-container">									
								<small class="label pull-right bg-green">V</small>								
								</span>							</a>						
						</li>				
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value==1){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-user-plus"></i>
								<span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Member'];?>
</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-members'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/hotspot"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Hotspot_Member'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-members'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/pppoe"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['PPPOE_Member'];?>
</a></li>
							</ul>
						</li>
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'||strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"_profile")){?>	
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value==2){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-paper-plane"></i>
								<span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Profiles'];?>
</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='bandwidth'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
bandwidth/list"><i class="fa fa-circle-o"></i>Bandwidth</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-plans'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/hotspot"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['HS_Profiles'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-plans'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/pppoe"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['PPPOE_Profiles'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='ip-pool'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
pool/list"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['IP_Pool'];?>
</a></li>								
							</ul>
						</li>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'||strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"_hotspot_")){?>							
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value==3){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-signal"></i>
								<span>API Hotspot</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
							<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='server-profile'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/server-profile"><i class="fa fa-circle-o"></i>Server Profile</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-server'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-server"><i class="fa fa-circle-o"></i>Hotspot Server</a></li>						
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-users'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-list"><i class="fa fa-circle-o"></i>Hotspot Users</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-log'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-log"><i class="fa fa-circle-o"></i>Hotspot Logs</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='dhcp-lease'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/dynamic-lease"><i class="fa fa-circle-o"></i>DHCP Lease</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='ip-binding'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/binding-list"><i class="fa fa-circle-o"></i>IP Binding</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='ip-host'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/ip-hosts-list"><i class="fa fa-circle-o"></i>IP Hosts</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='walled-garden'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/walled-list"><i class="fa fa-circle-o"></i>Walled Garden</a></li>
							<?php }elseif(strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"_manage")){?>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-list'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-list"><i class="fa fa-circle-o"></i>Hotspot Users</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-online'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-online"><i class="fa fa-circle-o"></i>Hotspot Online</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-expire'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-expire"><i class="fa fa-circle-o"></i>Hotspot Expire</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='ip-binding'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/binding-list"><i class="fa fa-circle-o"></i>IP Binding</a></li>
							<?php }else{ ?>	
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-list'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-list"><i class="fa fa-circle-o"></i>Hotspot Users</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-online'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-online"><i class="fa fa-circle-o"></i>Hotspot Online</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='hotspot-expire'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-expire"><i class="fa fa-circle-o"></i>Hotspot Expire</a></li>
							<?php }?>
							</ul>
						</li>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'||strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"_pppoe_")){?>	
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value==4){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-plug"></i>
								<span>API PPPOE</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-server'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-server"><i class="fa fa-circle-o"></i>PPPOE Server</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-users'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-list"><i class="fa fa-circle-o"></i>PPPOE Users</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-online'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-online"><i class="fa fa-circle-o"></i>PPPOE Online</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-expire'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-expire"><i class="fa fa-circle-o"></i>PPPOE Expire</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='pppoe-log'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-log"><i class="fa fa-circle-o"></i>PPPOE Logs</a></li>								
							</ul>
						</li>
					<?php }?>						
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value==5){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-tasks"></i>
								<span>API <?php echo $_smarty_tpl->tpl_vars['_L']->value['System'];?>
</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='resource'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/resource"><i class="fa fa-circle-o"></i>Resource</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='interface'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/interface"><i class="fa fa-circle-o"></i>Interface</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='script'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/script-list"><i class="fa fa-circle-o"></i>Script</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='scheduler'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/scheduler-list"><i class="fa fa-circle-o"></i>Scheduler</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='netwatch'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/netwatch-list"><i class="fa fa-circle-o"></i>Netwatch</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='mikrotik-log'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/mikrotik-log"><i class="fa fa-circle-o"></i>Logs</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='backup-router'){?> class="active" <?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/backup-restore"><i class="fa fa-circle-o"></i>Backup/Restore</a></li>							
							</ul>
						</li>
					<?php }?>
						<li <?php if ($_smarty_tpl->tpl_vars['index']->value==6){?> class="active treeview menu-open" <?php }else{ ?> class="treeview" <?php }?>>
							<a href="#">
								<i class="fa fa-file-text-o"></i>
								<span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Reports'];?>
</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='report-daily'){?>class="active"<?php }?>><a href="#report-daily" data-toggle="modal" data-target="#report-daily"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Daily_Report'];?>
</a></li>
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='report-period'){?>class="active"<?php }?>><a href="#report-period" data-toggle="modal" data-target="#report-period"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Period_Reports'];?>
</a></li>
							<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>	
								<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='reset-reports'){?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
reports/clear-reports" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')"><i class="fa fa-circle-o"></i><?php echo $_smarty_tpl->tpl_vars['_L']->value['Clear_Reports'];?>
</a></li>
							<?php }?>							
							</ul>
						</li>
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='developer'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
developer">								
								<i class="fa fa-connectdevelop"></i> <span>Developer</span>								
								<span class="pull-right-container">									
								<small class="label pull-right bg-red">LOCK</small>								
								</span>							</a>						
						</li>
					<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']!='Admin'){?>		
						<li <?php if ($_smarty_tpl->tpl_vars['_system_menu']->value=='user-manager'){?> class="active" <?php }?>>
							<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
user-manager/c-login">
								<i class="fa fa-unlock-alt"></i> <span>User Manager</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">new</small>
								</span>
							</a>
						</li>
					<?php }?>
						<li style="padding-bottom: 20px">
							<p>
								<span></span>
								<span class="pull-right-container">									
								</span>
							</p>
						</li>
					</ul>
				</section>
			</aside><?php }} ?>