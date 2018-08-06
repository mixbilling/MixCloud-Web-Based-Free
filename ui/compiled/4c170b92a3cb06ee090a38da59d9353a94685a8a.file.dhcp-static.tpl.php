<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:00:21
         compiled from "ui\theme\default\dhcp-static.tpl" */ ?>
<?php /*%%SmartyHeaderCode:73435b688cb5c85623-41239803%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4c170b92a3cb06ee090a38da59d9353a94685a8a' => 
    array (
      0 => 'ui\\theme\\default\\dhcp-static.tpl',
      1 => 1530203210,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '73435b688cb5c85623-41239803',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'dhcp_static' => 0,
    'static_ip' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b688cb5d7b7d6_79642833',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b688cb5d7b7d6_79642833')) {function content_5b688cb5d7b7d6_79642833($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("static_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-static");
					document.forms['static_lease'].submit();
				}
				function disable() {
					document.getElementById("static_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-static");
					document.forms['static_lease'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("static_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-static");
						document.forms['static_lease'].submit();
					}	
				}
				function deny() {
					document.getElementById("static_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/deny-selected-static");
					document.forms['static_lease'].submit();
				}
				function allow() {
					document.getElementById("static_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/allow-selected-static");
					document.forms['static_lease'].submit();
				}					
			</script>

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">DHCP Static</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:1px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Lease</li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/dynamic-lease" title="DYNAMIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Dynamic Lease</a></li>	
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/static-lease" title="STATIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Static Lease</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="allow();"  href="#allow" title="ALLOW SELECTED"> <i class="ion ion-ios-sunny"></i> Allow Selected</a></li>												
												<li><a onclick="deny();"  href="#deny" title="DENY SELECTED"><i class="ion ion-ios-sunny"></i> Deny Selected</a></li>												
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>					
									<hr>									
									<div class="adv-table table-responsive">
										<form id="static_lease" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>IP Address</th>
														<th>MAC Address</th>
														<th>Hostname</th>
														<th>Bound</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['static_ip'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['static_ip']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dhcp_static']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['static_ip']->key => $_smarty_tpl->tpl_vars['static_ip']->value){
$_smarty_tpl->tpl_vars['static_ip']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
">
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['static_ip']->value['address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['static_ip']->value['host-name'];?>
</td>
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['static_ip']->value['status'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='bound'){?>
														<td>Bound</td>
													<?php }else{ ?>
														<td>Waiting</td>
													<?php }?>											
														<td>
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['static_ip']->value['disabled'];?>
<?php $_tmp2=ob_get_clean();?><?php if ($_tmp2=='true'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-static-lease&id=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
" title="ENABLE THIS DHCP LEASE"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
													<?php }else{ ?>													
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-static-lease&id=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
" title="DISABLE THIS DHCP LEASE"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
													<?php }?>
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['static_ip']->value['blocked'];?>
<?php $_tmp3=ob_get_clean();?><?php if ($_tmp3=='false'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/block-static&id=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
" title="DENY THIS ADDRESS" style="width:65px;" class="btn btn-success btn-sm cdelete">Allow</a>
													<?php }else{ ?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/unblock-static&id=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
" title="ALLOW THIS ADDRESS" style="width:65px;" class="btn btn-danger btn-sm cdelete">Deny</a>
													<?php }?>
														</td>
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/dhcp-static-edit&id=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
" title="EDIT THIS ADDRESS" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>	
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-static-lease&id=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['static_ip']->value['.id'];?>
" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
')" title="REMOVE THIS ADDRESS" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
														</td>
													</tr>
												<?php } ?>
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>