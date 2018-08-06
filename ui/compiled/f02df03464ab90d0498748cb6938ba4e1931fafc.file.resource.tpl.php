<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:57:12
         compiled from "ui\theme\default\resource.tpl" */ ?>
<?php /*%%SmartyHeaderCode:142365b689a08c37a33-69590769%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f02df03464ab90d0498748cb6938ba4e1931fafc' => 
    array (
      0 => 'ui\\theme\\default\\resource.tpl',
      1 => 1531236162,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '142365b689a08c37a33-69590769',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    'notify' => 0,
    '_L' => 0,
    'platform' => 0,
    'cpu_core' => 0,
    'uptime' => 0,
    'cpu_load' => 0,
    'free_memory' => 0,
    'free_disk' => 0,
    'date' => 0,
    'time' => 0,
    'pppoe_online' => 0,
    'pppoe_expire' => 0,
    'hotspot_online' => 0,
    'hotspot_expire' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689a08ccc153_99073458',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689a08ccc153_99073458')) {function content_5b689a08ccc153_99073458($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<!--
 <script type="text/javascript">
    window.onload = setupRefresh;
    function setupRefresh()
    {
        setInterval("refreshBlock();",1000);
    }
    
    function refreshBlock()
    {
       $('#test').load("<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
__refresh-resource");
    }
  </script>
-->

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-8">
							<div class="panel">
								<div class="panel-heading">Device Information</div>							
								<div style="min-height:430px;" class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a href="#reboot-router" data-toggle="modal" data-target="#reboot-router" title="REBOOT ROUTER"><i class="ion ion-ios-sunny"></i> Reboot Router</a></li>	
											</ul>
										</div>
									</div>	
									<hr>								
									<div style="border:none" class="panel-body">	
										<table class="table text-left">
											<tr><td><i class="fa fa-globe" aria-hidden="true"></i></td><td>Platform, Board, ROS Version</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['platform']->value;?>
</td></tr>
											<tr><td><i class="fa fa-microchip" aria-hidden="true"></i></td><td>CPU, Available Core</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['cpu_core']->value;?>
</td></tr>
											<tr><td><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></td><td>Device Uptime</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['uptime']->value;?>
</td></tr>
											<tr><td><i class="fa fa-tachometer" aria-hidden="true"></i></td><td>Device CPU Load</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['cpu_load']->value;?>
</td></tr>
											<tr><td><i class="fa fa-tasks" aria-hidden="true"></i></td><td>Free Memory</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['free_memory']->value;?>
</td></tr>
											<tr><td><i class="fa fa-server" aria-hidden="true"></i></td><td>Free Disk Space</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['free_disk']->value;?>
</td></tr>
											<tr><td><i class="fa fa-calendar" aria-hidden="true"></i></td><td>Date</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['date']->value;?>
</td></tr>
											<tr><td><i class="fa fa-clock-o" aria-hidden="true"></i></td><td>Time</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['time']->value;?>
</td></tr>
											
											
										<?php if ($_smarty_tpl->tpl_vars['pppoe_online']->value==''){?>	
											<tr><td><i class="ion ion-arrow-swap" aria-hidden="true"></i></td><td>PPPOE Online</td><td></td><td>0 Users</td></tr>
										<?php }else{ ?>
											<tr><td><i class="ion ion-arrow-swap" aria-hidden="true"></i></td><td>PPPOE Online</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['pppoe_online']->value;?>
 Users
										<?php }?>
										<!-- <?php if ($_smarty_tpl->tpl_vars['pppoe_expire']->value==''){?>	
											<tr><td><i class="ion ion-lock-combination" aria-hidden="true"></i></td><td>PPPOE Expire</td><td></td><td>0 Users</td></tr>
										<?php }else{ ?>
											<tr><td><i class="ion ion-lock-combination" aria-hidden="true"></i></td><td>PPPOE Expire</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['pppoe_expire']->value;?>
 Users
										<?php }?> -->	
										<?php if ($_smarty_tpl->tpl_vars['hotspot_online']->value==''){?>	
											<tr><td><i class="ion ion-stats-bars" aria-hidden="true"></i></td><td>Hotspot Online</td><td></td><td>0 Users</td></tr>
										<?php }else{ ?>
											<tr><td><i class="ion ion-stats-bars" aria-hidden="true"></i></td><td>Hotspot Online</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['hotspot_online']->value;?>
 Users
										<?php }?>
										<!-- <?php if ($_smarty_tpl->tpl_vars['hotspot_expire']->value==''){?>	
											<tr><td><i class="ion ion-connection-bars" aria-hidden="true"></i></td><td>Hotspot Expire</td><td></td><td>0 Users</td></tr>
										<?php }else{ ?>
											<tr><td><i class="ion ion-connection-bars" aria-hidden="true"></i></td><td>Hotspot Expire</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['hotspot_expire']->value;?>
 Users 
										<?php }?> -->
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						
<!--modal add script -->
			<div class="modal fade" id="reboot-router" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Reboot Router</h4>
						</div>
						<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/reboot-router" >
							<button class="btn btn-success waves-effect waves-light" type="submit" name="reboot">Reboot Router</button>
						</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add script -->
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>