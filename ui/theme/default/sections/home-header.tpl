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
		<div class="wrapper">
			<header class="main-header">
				<a href="{$_url}home-dashboard" class="logo">
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
					
					<button data-toggle="modal" data-target="#select-router" style="height:38px;margin-left:15px;margin-top: 5px" class="btn btn-danger waves-effect waves-light active" type="button"><a style="color:#ffffff;" href="#"><i class="ion ion-shuffle"></i> <span id="text-select-router"> {$_L['Select_Routers']}</span></a></button> 

					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
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
												<a href="{$_url}home-settings/users-edit/{$_admin['id']}" class="btn btn-default btn-flat">Profile</a>
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
							<img src="{$_theme}/images/admin/admin_default.png" class="img-circle" >
						{else}
							<img src="{$_theme}/images/admin/{$_admin['profile_img']}" class="img-circle" >
						{/if}	
						</div>
						<div class="pull-left info">
							<p><a href="{$_url}home-settings/users-edit/{$_admin['id']}" title="PROFILE">{$_admin['username']}</a></p>
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
						<li {if $_system_menu eq 'dashboard'} class="active" {/if}>
							<a href="{$_url}home-dashboard">
								<i class="fa fa-home"></i> <span>Dashboard</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">new</small>
								</span>
							</a>
						</li>
						<li>
							<a href="#" data-toggle="modal" data-target="#select-router">
								<i class="fa fa-sign-in"></i> <span>{$_L['Select_Routers']}</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-green">new</small>
								</span>
							</a>
						</li>
						<li {if $index eq 'home-app-settings'} class="active treeview menu-open" {else} class="treeview" {/if}>
							<a href="#">
								<i class="fa fa-cogs"></i>
								<span>{$_L['Settings']}</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>            
							</a>
							<ul class="treeview-menu">
								<li {if $_system_menu eq 'general'} class="active" {/if} ><a href="{$_url}home-settings/app"><i class="fa fa-circle-o"></i>{$_L['General_Settings']}</a></li>
								<li {if $_system_menu eq 'localisation'} class="active" {/if} ><a href="{$_url}home-settings/localisation"><i class="fa fa-circle-o"></i>{$_L['Localisation']}</a></li>
								<li {if $_system_menu eq 'invoice'} class="active" {/if} ><a href="{$_url}home-settings/invoice-logo"><i class="fa fa-circle-o"></i>{$_L['Invoice_Logo']}</a></li>
								<li {if $_system_menu eq 'users'} class="active" {/if} ><a href="{$_url}home-settings/users"><i class="fa fa-circle-o"></i>{$_L['Administrator_Users']}</a></li>
								<li {if $_system_menu eq 'routers'} class="active" {/if} ><a href="{$_url}home-routers/list"><i class="fa fa-circle-o"></i>{$_L['Routers']}</a></li>
								<li {if $_system_menu eq 'database'} class="active" {/if} ><a href="{$_url}home-settings/dbstatus"><i class="fa fa-circle-o"></i>Database</a></li>
							</ul>
						</li>
						<li {if $_system_menu eq 'licence'} class="active" {/if}>
							<a href="{$_url}home-licence/details">
								<i class="fa fa-expeditedssl"></i> <span>{$_L['Licence']}</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-red">lock</small>
								</span>
							</a>
						</li>        
					</ul>
				</section>
			</aside>
