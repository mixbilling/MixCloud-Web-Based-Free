<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:40:49
         compiled from "ui\theme\default\home-dashboard.tpl" */ ?>
<?php /*%%SmartyHeaderCode:118295b68a4417fc4f5-03760757%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43c34b82d3e8af79bee7c7209b90515add2cdea0' => 
    array (
      0 => 'ui\\theme\\default\\home-dashboard.tpl',
      1 => 1531017120,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '118295b68a4417fc4f5-03760757',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    'webserver' => 0,
    'php' => 0,
    'signature' => 0,
    'version' => 0,
    'routers_count' => 0,
    '_L' => 0,
    '_c' => 0,
    'api' => 0,
    'mikrotik' => 0,
    '_url' => 0,
    '_admin' => 0,
    'dlog' => 0,
    'dlogs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a4418cb5a8_63813643',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a4418cb5a8_63813643')) {function content_5b68a4418cb5a8_63813643($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-aqua"><i class="fa fa-building"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #00c0ef;">
									<span class="info-box-text">WEB SERVER</span>
									<span class="info-box-number"><?php echo $_smarty_tpl->tpl_vars['webserver']->value;?>
</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-red"><i class="fa fa-code"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #dd4b39;">
									<span class="info-box-text">PHP ENGINE</span>
									<span class="info-box-number">PHP <?php echo $_smarty_tpl->tpl_vars['php']->value;?>
</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
						<div class="clearfix visible-sm-block"></div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-green"><i class="fa fa-outdent"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #00a65a;">
									<span class="info-box-text">DATABASE</span>
									<span class="info-box-number"><?php echo $_smarty_tpl->tpl_vars['signature']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['version']->value;?>
</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-yellow"><i class="fa fa-random"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #f39c12;">
									<span class="info-box-text">ROUTERS</span>
									<span class="info-box-number">[<?php echo $_smarty_tpl->tpl_vars['routers_count']->value;?>
] MikroTik</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7">
							<div id="information" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats table-responsive">
								<div style="border-bottom:none;background-color:transparent;font-weight: bold" class="panel-heading"><center><?php echo $_smarty_tpl->tpl_vars['_L']->value['Basic_Info'];?>
</center></div>
								<div class="panel-body">
									<table class="table text-left">
										<tr><td><i class="ion ion-ios-home-outline" aria-hidden="true"></i></td><td> <?php echo $_smarty_tpl->tpl_vars['_L']->value['App_Name'];?>
</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['_c']->value['CompanyName'];?>
</td></tr>
										<tr><td><i class="ion ion-ios-location-outline" aria-hidden="true"></i></td><td> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Address'];?>
</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['_c']->value['address'];?>
</td></tr>
										<tr><td><i class="ion ion-ios-telephone-outline" aria-hidden="true"></i></td><td> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone_Number'];?>
</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['_c']->value['phone'];?>
</td></tr>
										<tr><td><i class="ion ion-ios-time-outline" aria-hidden="true"></i></td><td> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Timezone'];?>
</td><td></td><td><?php echo $_smarty_tpl->tpl_vars['_c']->value['timezone'];?>
</td></tr>
									</table>
									<hr>	
									<table style="border-collapse: separate;" class="display table">
										<thead>
											<tr>
												<th style="color:#555;background-color:#eeeeee;">ID</th>
												<th style="text-align:left;color:#555;background-color:#eeeeee;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Name'];?>
</th>
												<th style="text-align:left;color:#555;background-color:#eeeeee;">IP Address (DDNS)</th>
												<th style="color:#555;background-color:#eeeeee;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
											</tr>
										</thead>
										<tbody>	
										<?php  $_smarty_tpl->tpl_vars['mikrotik'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['mikrotik']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['api']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['mikrotik']->key => $_smarty_tpl->tpl_vars['mikrotik']->value){
$_smarty_tpl->tpl_vars['mikrotik']->_loop = true;
?>
											<tr>
												<td><?php echo $_smarty_tpl->tpl_vars['mikrotik']->value['id'];?>
</td>
												<td><?php echo $_smarty_tpl->tpl_vars['mikrotik']->value['name'];?>
</td>
												<td><?php echo $_smarty_tpl->tpl_vars['mikrotik']->value['ip_address'];?>
</td>
												<td align="center">
													<form type="hidden" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
dashboard" >
														<button title="OPEN THIS MIKROTIK (API ACCESS)" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-sign-in active" aria-hidden="true" value="<?php echo $_smarty_tpl->tpl_vars['mikrotik']->value['id'];?>
" name="router" type="submit"></button>											
													</form>
												</td>
											</tr>
										<?php } ?>
										</tbody>
									</table>	
								</div>
							</div>
						</div>
						
						<div class="col-md-7">
							<div id="activity" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats activities">
								<div style="border-bottom:none;background-color:transparent;font-weight: bold" class="panel-heading"><center><?php echo $_smarty_tpl->tpl_vars['_L']->value['Activity_Log'];?>
 <?php if (($_smarty_tpl->tpl_vars['_admin']->value['user_type'])=='Admin'){?>| <a href=<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-clear-log title="RESET ALL LOG RECORD" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
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
											<span class="point"><hr style="margin-top: 0;margin-bottom: 0"></span>
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

<?php echo $_smarty_tpl->getSubTemplate ("sections/home-footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>