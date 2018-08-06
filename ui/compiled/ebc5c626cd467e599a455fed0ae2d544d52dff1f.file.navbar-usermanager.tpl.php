<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:39:54
         compiled from "ui\theme\default\sections\navbar-usermanager.tpl" */ ?>
<?php /*%%SmartyHeaderCode:277735b68a40a8ea088-27170773%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ebc5c626cd467e599a455fed0ae2d544d52dff1f' => 
    array (
      0 => 'ui\\theme\\default\\sections\\navbar-usermanager.tpl',
      1 => 1524755566,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '277735b68a40a8ea088-27170773',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    'index' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a40a928893_33124203',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a40a928893_33124203')) {function content_5b68a40a928893_33124203($_smarty_tpl) {?>
						<nav class="navbar navbar-default">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers"><i style="color:#555;" class="ion ion-log-in" aria-hidden="true"></i> API-USERMAN</a>
								</div>
									
										<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u1'){?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers"><i style="color:#555;" class="ion ion-person" aria-hidden="true"></i>&nbsp; Customers</a></li>
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u2'){?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-routers"><i style="color:#555;" class="ion ion-shuffle" aria-hidden="true"></i>&nbsp; Routers</a></li>											
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u3'){?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-users"><i style="color:#555;" class="ion ion-android-contact" aria-hidden="true"></i>&nbsp; Users</a></li>										
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u4'){?>class="dropdown active"<?php }?>>											
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i style="color:#555;" class="ion ion ion-flag" aria-hidden="true"></i>&nbsp; Profiles<span class="caret"></span></a>
											<ul style="margin-left:0px;width:180px;" class="dropdown-menu" role="menu">
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-profiles"><i style="color:#555;" class="ion ion-speedometer" aria-hidden="true"></i>&nbsp; Profiles</a></li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-profile-limitations"><i style="color:#555;" class="ion ion-speedometer" aria-hidden="true"></i>&nbsp; Profile Limitations</a></li>													
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-limitations"><i style="color:#555;" class="ion ion-speedometer" aria-hidden="true"></i>&nbsp; Limitations</a></li>												
											</ul>
										</li>
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u5'){?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-database"><i style="color:#555;" class="ion ion-ios-folder-outline" aria-hidden="true"></i>&nbsp; Database</a></li>
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u6'){?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-sessions"><i style="color:#555;" class="ion ion-flash" aria-hidden="true"></i>&nbsp; Sessions</a></li>
										<li <?php if ($_smarty_tpl->tpl_vars['index']->value=='u7'){?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-logs"><i style="color:#555;" class="ion ion-ios-list-outline" aria-hidden="true"></i>&nbsp; Logs</a></li>										
									</ul>										
								</div><!-- /.navbar-collapse -->
							</div><!-- /.container-fluid -->
						</nav><?php }} ?>