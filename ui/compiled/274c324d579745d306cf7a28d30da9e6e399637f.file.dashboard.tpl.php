<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:28:48
         compiled from "ui\theme\default\dashboard.tpl" */ ?>
<?php /*%%SmartyHeaderCode:93075b68a170c06973-45283680%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '274c324d579745d306cf7a28d30da9e6e399637f' => 
    array (
      0 => 'ui\\theme\\default\\dashboard.tpl',
      1 => 1530278928,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '93075b68a170c06973-45283680',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_L' => 0,
    '_c' => 0,
    'iday' => 0,
    'imonth' => 0,
    'pppoe_online' => 0,
    '_admin' => 0,
    '_url' => 0,
    'hotspot_online' => 0,
    'pppoe_member' => 0,
    'hotspot_member' => 0,
    'total_voucher' => 0,
    'total_admin' => 0,
    'platform' => 0,
    'cpu_count' => 0,
    'cpu_load' => 0,
    'free_memory' => 0,
    'free_hdd' => 0,
    'sr' => 0,
    'srs' => 0,
    'r_name' => 0,
    'dlog' => 0,
    'dlogs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a170d71e43_86771957',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a170d71e43_86771957')) {function content_5b68a170d71e43_86771957($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>						
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-aqua"><i style="font-size:45px;color:white" class="ion ion-cash"></i></span>				
								<div style="border-top: 3px solid #00c0ef;" class="info-box-content">
									<span class="info-box-text"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Income_Today'];?>
</span>
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number"><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['iday']->value,0,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</span>
									<hr style="margin-top:5px;margin-bottom:5px">
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="#report-daily" data-toggle="modal" data-target="#report-daily"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_Reports'];?>
</a></span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-red"><i style="font-size:45px;color:white" class="fa fa-bank"></i></span>				
								<div style="border-top: 3px solid #dd4b39;" class="info-box-content">
									<span class="info-box-text"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Income_This_Month'];?>
</span>
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number"><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['imonth']->value,0,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</span>
									<hr style="margin-top:5px;margin-bottom:5px">
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="#report-period" data-toggle="modal" data-target="#report-period"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_Reports'];?>
</a></span>							
								</div>							
							</div>
						</div>
						<!-- fix for small devices only -->
						<div class="clearfix visible-sm-block"></div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-green"><i style="font-size:45px;color:white" class="fa  fa-chain"></i></span>				
								<div style="border-top: 3px solid #00a65a;" class="info-box-content">
									<span class="info-box-text">PPPOE ONLINE</span>
								<?php if ($_smarty_tpl->tpl_vars['pppoe_online']->value==''){?>	
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">0 Users</span>
								<?php }else{ ?>
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number"><?php echo $_smarty_tpl->tpl_vars['pppoe_online']->value;?>
 Users</span>
								<?php }?>
									<hr style="margin-top:5px;margin-bottom:5px">
								<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'||strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"api_")){?>
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-online"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_All'];?>
</a></span>
								<?php }else{ ?>
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
dashboard"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_All'];?>
</a></span>
								<?php }?>		
								</div>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-yellow"><i style="font-size:45px;color:white" class="fa fa-wifi"></i></span>				
								<div style="border-top: 3px solid #f39c12;" class="info-box-content">
									<span class="info-box-text">HOTSPOT ONLINE</span>
								<?php if ($_smarty_tpl->tpl_vars['hotspot_online']->value==''){?>	
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">0 Users</span>
								<?php }else{ ?>
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number"><?php echo $_smarty_tpl->tpl_vars['hotspot_online']->value;?>
 Users</span>
								<?php }?>
									<hr style="margin-top:5px;margin-bottom:5px">
								<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'||strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"api_")){?>
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-online"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_All'];?>
</a></span>
								<?php }else{ ?>
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
dashboard"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View_All'];?>
</a></span>
								<?php }?>						
								</div>
							</div>
						</div>
					</div>
						
					<div class="row">
						<div class="col-md-7">
							<div id="information" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats table-responsive">
								<div style="border-bottom:none;background-color:transparent;margin-bottom:-20px" class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Member_And_Voucher'];?>
</div>
								<div class="panel-body">
									<div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/pppoe" title="TOTAL PPPOE MEMBER"> <i style="font-size:4.5em" class="fa fa-chain text-orange" aria-hidden="true"></i></p>
											<p style="font-weight: bold">PPPOE [<?php echo $_smarty_tpl->tpl_vars['pppoe_member']->value;?>
]</a></p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/hotspot" title="TOTAL HOTSPOT MEMBER"> <i style="font-size:4.5em" class="fa fa-sellsy text-green" aria-hidden="true"></i></p>
											<p style="font-weight: bold">Hotspot [<?php echo $_smarty_tpl->tpl_vars['hotspot_member']->value;?>
]</a></p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/voucher" title="TOTAL VOUCHER"> <i style="font-size:4.5em" class="fa fa-credit-card text-red" aria-hidden="true"></i></p>
											<p style="font-weight: bold">Voucher [<?php echo $_smarty_tpl->tpl_vars['total_voucher']->value;?>
]</a></p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="#" title="TOTAL ADMIN"><i style="font-size:4.5em" class="fa fa-user-secret text-aqua" aria-hidden="true"></i></p>
											<p style="font-weight: bold">Admin [<?php echo $_smarty_tpl->tpl_vars['total_admin']->value;?>
]</a></p>
										</div>
									</div>
								</div>		
								<div style="border-bottom:none;background-color:transparent;margin-bottom:-20px" class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['platform']->value;?>
</div>
								<div class="panel-body">
									<div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="fa fa-ioxhost text-aqua" aria-hidden="true"></i>
											<p style="font-weight: bold"> CPU <?php echo $_smarty_tpl->tpl_vars['cpu_count']->value;?>
</p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="fa fa-heartbeat text-red" aria-hidden="true"></i>
											<p style="font-weight: bold"> Load <?php echo $_smarty_tpl->tpl_vars['cpu_load']->value;?>
%</p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="ion ion-ios-speedometer text-green" aria-hidden="true"></i>
											<p style="font-weight: bold">RAM <?php echo $_smarty_tpl->tpl_vars['free_memory']->value;?>
%</p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="fa fa-hdd-o text-orange" aria-hidden="true"></i></p> <p style="font-weight: bold">HDD <?php echo $_smarty_tpl->tpl_vars['free_hdd']->value;?>
%</p>
										</div>
									</div>
								</div>	
								
								<table style="border-collapse:separate;margin-top:10px" class="display table">
									<thead>
										<tr>												
											<th style="text-align:left;color:#555;background-color:#eeeeee;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Name'];?>
</th>
											<th style="text-align:left;color:#555;background-color:#eeeeee;">IP Address (DNS)</th>
											<th style="text-align:left;color:#555;background-color:#eeeeee;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Hotspot_Domain'];?>
</th>
										</tr>
									</thead>
									<tbody>
								<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>	
									<?php  $_smarty_tpl->tpl_vars['srs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['srs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sr']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['srs']->key => $_smarty_tpl->tpl_vars['srs']->value){
$_smarty_tpl->tpl_vars['srs']->_loop = true;
?>
										<tr>												
											<td><?php echo $_smarty_tpl->tpl_vars['srs']->value['name'];?>
</td>
											<td><?php echo $_smarty_tpl->tpl_vars['srs']->value['ip_address'];?>
</td>
											<td><?php echo $_smarty_tpl->tpl_vars['srs']->value['hotspot_domain'];?>
</td>
										</tr>
									</tbody>
									<?php } ?>
								<?php }else{ ?>
										<tr>
											<td><?php echo $_smarty_tpl->tpl_vars['r_name']->value['name'];?>
</td>
											<td><?php echo $_smarty_tpl->tpl_vars['r_name']->value['ip_address'];?>
</td>
											<td><?php echo $_smarty_tpl->tpl_vars['r_name']->value['hotspot_domain'];?>
</td>
										</tr>
								<?php }?>				
								</table>
							</div>									
						</div>
						
						<div class="col-md-7">
							<div id="activity" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats activities">
								<div style="border-bottom:none;background-color:transparent;" class="panel-heading"><center><?php echo $_smarty_tpl->tpl_vars['_L']->value['Activity_Log'];?>
 <?php if (($_smarty_tpl->tpl_vars['_admin']->value['user_type'])=='Admin'){?>| <a href=<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
clear-log title="RESET ALL LOG RECORD" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Clear_Log'];?>
</a><?php }?></center></div>
								<div class="panel-body">
									<ul class="list-unstyled">
									<?php  $_smarty_tpl->tpl_vars['dlogs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['dlogs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dlog']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['dlogs']->key => $_smarty_tpl->tpl_vars['dlogs']->value){
$_smarty_tpl->tpl_vars['dlogs']->_loop = true;
?>
										<li class="primary">
											<span class="point"></span>
											<span class="time small text-muted"><?php echo time_elapsed_string($_smarty_tpl->tpl_vars['dlogs']->value['date'],true);?>
</span>
											<p><?php echo $_smarty_tpl->tpl_vars['dlogs']->value['description'];?>
</p>
										</li>
									<?php } ?>
									</ul>
								</div>
							</div>							
						</div>						
					</div>
				</section>
			</div>						

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>