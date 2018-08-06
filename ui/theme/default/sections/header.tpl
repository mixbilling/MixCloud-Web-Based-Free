<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>{$_title}</title>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="shortcut icon" href="{$_theme}/images/favicon.png" type="image/x-icon" />
		<link rel="stylesheet" href="{$_theme}/assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="{$_theme}/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="{$_theme}/assets/ionicons/css/ionicons.min.css">
		<link rel="stylesheet" href="{$_theme}/assets/plugins/datepicker/css/bootstrap-datepicker.css">		
		<link rel="stylesheet" href="{$_theme}/assets/plugins/select2/css/select2.min.css">
		<link rel="stylesheet" href="{$_theme}/assets/dist/css/AdminLTE.min.css">
		<link rel="stylesheet" href="{$_theme}/assets/dist/css/skins/skin-green.min.css">
		<link rel="stylesheet" href="{$_theme}/assets/datatables/css/dataTables.bootstrap.min.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		{if isset($xheader)}
			{$xheader}
		{/if}
	</head>

	<body class="hold-transition skin-green fixed sidebar-mini">
		<div style="background: #ecf0f5;" class="wrapper">
			<header class="main-header">
				<a href="{$_url}dashboard" class="logo">
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
				{if $_admin['user_type'] eq 'Admin'}	
					<button data-toggle="modal" data-target="#select-router" style="height:38px;margin-left:15px;margin-top: 5px" class="btn btn-danger waves-effect waves-light active" type="button"><a style="color:#ffffff;" href="#"><i class="ion ion-shuffle"></i> <span id="text-select-router"> {$_L['Select_Routers']}</span></a></button>
					{if $usermanager eq 'Yes'}
						<button onclick="javascript:window.location.href='{$_url}mikrotik/usm-customers'; return false;" style="height:38px;margin-left:15px;margin-top: 5px" class="btn btn-warning waves-effect waves-light active" type="button"><span style="color:#ffffff;" href=""><i class="ion ion-android-contact"></i> <span id="text-select-userman"> User Manager</span></span></button>
					{/if}
				{/if}		

					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown messages-menu">
					            <a title="PPPOE EXPIRE (MEMBER)" href="#" class="dropdown-toggle" data-toggle="dropdown">
					              <i class="fa  fa-chain-broken"></i>
					              <span class="label label-danger">{count($pppoe_expire)}</span>
					            </a>
					           	<ul class="dropdown-menu">
					              	<li style="text-decoration: underline;" class="header">PPPOE Expire</li>
					              	<li>					                
					                	<ul class="menu">
					                  		<li>
					                  		{foreach $pppoe_expire as $ppp_expire}
					                    		<a href="{$_url}prepaid/recharge-user/{$ppp_expire['customer_id']}" title="RECHARGE USER">
					                      			<div class="pull-left">
					                        			<i style="font-size: 30px" class="ion ion-flash"></i>
					                      			</div>
					                      			<h4 style="margin: 0 0 0 35px;font-size: 13px">
					                        			{$ppp_expire['username']} <span style="font-size: 12px">({$ppp_expire['expiration']} | {$ppp_expire['time']})</span>
					                      			</h4>
					                      			<p style="margin: 0 0 0 35px;">{$_L['Last_Recharge']} {$ppp_expire['owner_name']}</p>
					                    		</a>
					                    	{/foreach}	
					                  		</li>
					                  	</ul>
					                </li>
					                <!--<li class="footer" style="border-top:solid 1px #eee;">
					                {if $pppoe_expire}	
					                	<a href="{$_url}prepaid/pppoe-expire">{$_L['View_All']}</a>
					                {else}
					                	<a href="#">{$_L['No_Data']}</a>
					                {/if}	
					                </li>-->
					            </ul>
							</li>

							<li class="dropdown messages-menu">
					            <a title="HOTSPOT EXPIRE (MEMBER)" href="#" class="dropdown-toggle" data-toggle="dropdown">
					              <i class="fa fa-signal"></i>
					              <span class="label label-danger">{count($hotspot_expire)}</span>
					            </a>
					           	<ul class="dropdown-menu">
					              	<li style="text-decoration: underline;" class="header">Hotspot Expire</li>
					              	<li>					                
					                	<ul class="menu">
					                  		<li>
					                  		{foreach $hotspot_expire as $hs_expire}	
					                    		<a href="{$_url}prepaid/recharge-user/{$hs_expire['customer_id']}" title="RECHARGE USER">
					                      			<div class="pull-left">
					                        			<i style="font-size: 30px" class="ion ion-flash"></i>
					                      			</div>					                      			
					                      			<h4 style="margin: 0 0 0 35px;font-size: 13px">
					                        			{$hs_expire['username']} <span style="font-size: 12px">({$hs_expire['expiration']} | {$hs_expire['time']})</span>
					                      			</h4>
					                      			<p style="margin: 0 0 0 35px;">{$_L['Last_Recharge']} {$hs_expire['owner_name']}</p>
					                    		</a>
					                    	{/foreach}	
					                  		</li>
					                  	</ul>
					                </li>
					                <!--<li class="footer" style="border-top:solid 1px #eee;">
					                {if $hotspot_expire}	
					                	<a href="{$_url}prepaid/hotspot-expire">{$_L['View_All']}</a>
					                {else}
					                	<a href="#">{$_L['No_Data']}</a>
					                {/if}	
					                </li>-->
					            </ul>
							</li>

							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								{if $_admin['profile_img'] eq ''}
									<img src="{$_theme}/images/admin/admin_default.png" class="user-image" >
								{else}
									<img src="{$_theme}/images/admin/{$_admin['profile_img']}" class="user-image" >
								{/if}
									<span class="hidden-xs">{$_admin['username']}</span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
									{if $_admin['profile_img'] eq ''}	
										<img src="{$_theme}/images/admin/admin_default.png" class="img-circle" >
									{else}
										<img src="{$_theme}/images/admin/{$_admin['profile_img']}" class="img-circle" >
									{/if}
										<p>
											{$_admin['username']}
											<small style="text-transform: uppercase;">{$_admin['user_type']}</small>
										</p>
										<li class="user-footer">
											<div class="pull-left">
												<a href="{$_url}settings/users-edit/{$_admin['id']}" class="btn btn-default btn-flat">Profile</a>
											</div>
											<div class="pull-right">
												<a href="{$_url}logout" class="btn btn-default btn-flat">Sign out</a>
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
						{if $_admin['profile_img'] eq ''}		
							<img {if $_system_menu eq 'edit-profile'} style="border:solid 1px #999999"{/if} src="{$_theme}/images/admin/admin_default.png" class="img-circle" >
						{else}
							<img {if $_system_menu eq 'edit-profile'} style="border:solid 1px #999999"{/if} src="{$_theme}/images/admin/{$_admin['profile_img']}" class="img-circle" >
						{/if}
						</div>
						<div class="pull-left info">
							<p><a {if $_system_menu eq 'edit-profile'} style="text-decoration: underline;color:#ffffff"{/if} href="{$_url}settings/users-edit/{$_admin['id']}" title="PROFILE">{$_admin['username']}</a></p>
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
					{if $_admin['user_type'] eq 'Admin'}
						<li class="treeview">
							<a href="#">
								<i class="fa fa-user-secret"></i>
								<span style="color:red">{$_L['Tools']}</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'mikrotik'} class="active" {/if} ><a href="#" data-toggle="modal" data-target="#select-router"><i class="fa fa-circle-o"></i> {$_L['Change_Routers']}</a></li>
								<li {if $_system_menu eq 'mikrotik'} class="active" {/if} ><a href="{$_url}home-dashboard"><i class="fa fa-circle-o"></i> {$_L['First_Page']}</a></li>
							</ul>
						</li>
					{/if}
					{if $_admin['user_type'] eq 'Admin' && $usermanager eq 'Yes'}
						<li {if $_system_menu eq 'user-manager'} class="active" {/if}>
							<a href="{$_url}mikrotik/usm-customers">
								<i class="fa fa-users"></i> <span>User Manager</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">U</small>
								</span>
							</a>
						</li>
					{/if}												
						<li {if $_system_menu eq 'dashboard'} class="active" {/if}>
							<a href="{$_url}dashboard">
								<i class="fa fa-home"></i> <span>Dashboard</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">O</small>
								</span>
							</a>
						</li>
						<li {if $_system_menu eq 'sosial'} class="active" {/if}>
							<a href="{$_url}sosial/list">								
								<i class="fa fa-facebook-square"></i> <span>Social Media</span>								
								<span class="pull-right-container">									
								<small class="label pull-right bg-green">BETA</small>								
								</span>							</a>						
						</li>	
						<li {if $_system_menu eq 'manage-voucher'} class="active" {/if}>
							<a href="{$_url}manage-voucher/voucher">								
								<i class="fa fa-credit-card"></i> <span>{$_L['Voucher']}</span>								
								<span class="pull-right-container">									
								<small class="label pull-right bg-green">V</small>								
								</span>							</a>						
						</li>				
						<li {if $index eq 1} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-user-plus"></i>
								<span>{$_L['Member']}</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'hotspot-members'} class="active" {/if} ><a href="{$_url}customers/hotspot"><i class="fa fa-circle-o"></i>{$_L['Hotspot_Member']}</a></li>
								<li {if $_system_menu eq 'pppoe-members'} class="active" {/if} ><a href="{$_url}customers/pppoe"><i class="fa fa-circle-o"></i>{$_L['PPPOE_Member']}</a></li>
							</ul>
						</li>
					{if $_admin['user_type'] eq 'Admin' || $_admin['permission']|strstr:"_profile"}	
						<li {if $index eq 2} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-paper-plane"></i>
								<span>{$_L['Profiles']}</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'bandwidth'} class="active" {/if} ><a href="{$_url}bandwidth/list"><i class="fa fa-circle-o"></i>Bandwidth</a></li>
								<li {if $_system_menu eq 'hotspot-plans'} class="active" {/if} ><a href="{$_url}services/hotspot"><i class="fa fa-circle-o"></i>{$_L['HS_Profiles']}</a></li>
								<li {if $_system_menu eq 'pppoe-plans'} class="active" {/if} ><a href="{$_url}services/pppoe"><i class="fa fa-circle-o"></i>{$_L['PPPOE_Profiles']}</a></li>
								<li {if $_system_menu eq 'ip-pool'} class="active" {/if} ><a href="{$_url}pool/list"><i class="fa fa-circle-o"></i>{$_L['IP_Pool']}</a></li>								
							</ul>
						</li>
					{/if}
					{if $_admin['user_type'] eq 'Admin' || $_admin['permission']|strstr:"_hotspot_"}							
						<li {if $index eq 3} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-signal"></i>
								<span>API Hotspot</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
							{if $_admin['user_type'] eq 'Admin'}
								<li {if $_system_menu eq 'server-profile'} class="active" {/if}><a href="{$_url}mikrotik/server-profile"><i class="fa fa-circle-o"></i>Server Profile</a></li>
								<li {if $_system_menu eq 'hotspot-server'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-server"><i class="fa fa-circle-o"></i>Hotspot Server</a></li>						
								<li {if $_system_menu eq 'hotspot-users'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-list"><i class="fa fa-circle-o"></i>Hotspot Users</a></li>
								<li {if $_system_menu eq 'hotspot-log'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-log"><i class="fa fa-circle-o"></i>Hotspot Logs</a></li>
								<li {if $_system_menu eq 'dhcp-lease'} class="active" {/if}><a href="{$_url}mikrotik/dynamic-lease"><i class="fa fa-circle-o"></i>DHCP Lease</a></li>
								<li {if $_system_menu eq 'ip-binding'} class="active" {/if}><a href="{$_url}mikrotik/binding-list"><i class="fa fa-circle-o"></i>IP Binding</a></li>
								<li {if $_system_menu eq 'ip-host'} class="active" {/if}><a href="{$_url}mikrotik/ip-hosts-list"><i class="fa fa-circle-o"></i>IP Hosts</a></li>
								<li {if $_system_menu eq 'walled-garden'} class="active" {/if}><a href="{$_url}mikrotik/walled-list"><i class="fa fa-circle-o"></i>Walled Garden</a></li>
							{else if $_admin['permission']|strstr:"_manage"}
								<li {if $_system_menu eq 'hotspot-list'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-list"><i class="fa fa-circle-o"></i>Hotspot Users</a></li>
								<li {if $_system_menu eq 'hotspot-online'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-online"><i class="fa fa-circle-o"></i>Hotspot Online</a></li>
								<li {if $_system_menu eq 'hotspot-expire'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-expire"><i class="fa fa-circle-o"></i>Hotspot Expire</a></li>
								<li {if $_system_menu eq 'ip-binding'} class="active" {/if}><a href="{$_url}mikrotik/binding-list"><i class="fa fa-circle-o"></i>IP Binding</a></li>
							{else}	
								<li {if $_system_menu eq 'hotspot-list'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-list"><i class="fa fa-circle-o"></i>Hotspot Users</a></li>
								<li {if $_system_menu eq 'hotspot-online'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-online"><i class="fa fa-circle-o"></i>Hotspot Online</a></li>
								<li {if $_system_menu eq 'hotspot-expire'} class="active" {/if}><a href="{$_url}mikrotik/hotspot-expire"><i class="fa fa-circle-o"></i>Hotspot Expire</a></li>
							{/if}
							</ul>
						</li>
					{/if}
					{if $_admin['user_type'] eq 'Admin' || $_admin['permission']|strstr:"_pppoe_"}	
						<li {if $index eq 4} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-plug"></i>
								<span>API PPPOE</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'pppoe-server'} class="active" {/if}><a href="{$_url}mikrotik/pppoe-server"><i class="fa fa-circle-o"></i>PPPOE Server</a></li>
								<li {if $_system_menu eq 'pppoe-users'} class="active" {/if}><a href="{$_url}mikrotik/pppoe-list"><i class="fa fa-circle-o"></i>PPPOE Users</a></li>
								<li {if $_system_menu eq 'pppoe-online'} class="active" {/if}><a href="{$_url}mikrotik/pppoe-online"><i class="fa fa-circle-o"></i>PPPOE Online</a></li>
								<li {if $_system_menu eq 'pppoe-expire'} class="active" {/if}><a href="{$_url}mikrotik/pppoe-expire"><i class="fa fa-circle-o"></i>PPPOE Expire</a></li>
								<li {if $_system_menu eq 'pppoe-log'} class="active" {/if}><a href="{$_url}mikrotik/pppoe-log"><i class="fa fa-circle-o"></i>PPPOE Logs</a></li>								
							</ul>
						</li>
					{/if}						
					{if $_admin['user_type'] eq 'Admin'}
						<li {if $index eq 5} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-tasks"></i>
								<span>API {$_L['System']}</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'resource'} class="active" {/if}><a href="{$_url}mikrotik/resource"><i class="fa fa-circle-o"></i>Resource</a></li>
								<li {if $_system_menu eq 'interface'} class="active" {/if}><a href="{$_url}mikrotik/interface"><i class="fa fa-circle-o"></i>Interface</a></li>
								<li {if $_system_menu eq 'script'} class="active" {/if}><a href="{$_url}mikrotik/script-list"><i class="fa fa-circle-o"></i>Script</a></li>
								<li {if $_system_menu eq 'scheduler'} class="active" {/if}><a href="{$_url}mikrotik/scheduler-list"><i class="fa fa-circle-o"></i>Scheduler</a></li>
								<li {if $_system_menu eq 'netwatch'} class="active" {/if}><a href="{$_url}mikrotik/netwatch-list"><i class="fa fa-circle-o"></i>Netwatch</a></li>
								<li {if $_system_menu eq 'mikrotik-log'} class="active" {/if}><a href="{$_url}mikrotik/mikrotik-log"><i class="fa fa-circle-o"></i>Logs</a></li>
								<li {if $_system_menu eq 'backup-router'} class="active" {/if}><a href="{$_url}mikrotik/backup-restore"><i class="fa fa-circle-o"></i>Backup/Restore</a></li>							
							</ul>
						</li>
					{/if}
						<li {if $index eq 6} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-file-text-o"></i>
								<span>{$_L['Reports']}</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'report-daily'}class="active"{/if}><a href="#report-daily" data-toggle="modal" data-target="#report-daily"><i class="fa fa-circle-o"></i>{$_L['Daily_Report']}</a></li>
								<li {if $_system_menu eq 'report-period'}class="active"{/if}><a href="#report-period" data-toggle="modal" data-target="#report-period"><i class="fa fa-circle-o"></i>{$_L['Period_Reports']}</a></li>
							{if $_admin['user_type'] eq 'Admin'}	
								<li {if $_system_menu eq 'reset-reports'}class="active"{/if}><a href="{$_url}reports/clear-reports" onClick="return confirm('{$_L['Remove_Alert']}')"><i class="fa fa-circle-o"></i>{$_L['Clear_Reports']}</a></li>
							{/if}							
							</ul>
						</li>
						<li {if $_system_menu eq 'developer'} class="active" {/if}>
							<a href="{$_url}developer">								
								<i class="fa fa-connectdevelop"></i> <span>Developer</span>								
								<span class="pull-right-container">									
								<small class="label pull-right bg-red">LOCK</small>								
								</span>							</a>						
						</li>
					{if $_admin['user_type'] neq 'Admin'}		
						<li {if $_system_menu eq 'user-manager'} class="active" {/if}>
							<a href="{$_url}user-manager/c-login">
								<i class="fa fa-unlock-alt"></i> <span>User Manager</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">new</small>
								</span>
							</a>
						</li>
					{/if}
						<li style="padding-bottom: 20px">
							<p>
								<span></span>
								<span class="pull-right-container">									
								</span>
							</p>
						</li>
					</ul>
				</section>
			</aside>