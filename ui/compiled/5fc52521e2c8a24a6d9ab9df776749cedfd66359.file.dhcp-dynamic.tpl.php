<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:36:29
         compiled from "ui\theme\default\dhcp-dynamic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:319445b68952d2fbd96-47677354%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5fc52521e2c8a24a6d9ab9df776749cedfd66359' => 
    array (
      0 => 'ui\\theme\\default\\dhcp-dynamic.tpl',
      1 => 1530203221,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '319445b68952d2fbd96-47677354',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'dhcp_dynamic' => 0,
    'dynamic_ip' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68952d3bb439_16827025',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68952d3bb439_16827025')) {function content_5b68952d3bb439_16827025($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function mac_static() {
					document.getElementById("dynamic_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/mac-static-selected");
					document.forms['dynamic_lease'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("dynamic_lease").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-dynamic");
						document.forms['dynamic_lease'].submit();
					}	
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
								<div class="panel-heading">DHCP Dynamic</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Lease</li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/dynamic-lease" title="DYNAMIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Dynamic Lease</a></li>	
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/static-lease" title="STATIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Static Lease</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="mac_static();"  href="#mac-static" title="MAC STATIC SELECTED"><i class="ion ion-ios-sunny"></i> Mac Static Selected</a></li>	
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>								
									<hr>								
									<div class="adv-table table-responsive">
										<form id="dynamic_lease" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>IP Address</th>
														<th>MAC Address</th>
														<th>Hostname</th>
														<th>Bound</th>
														<th>Make Static</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['dynamic_ip'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['dynamic_ip']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dhcp_dynamic']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['dynamic_ip']->key => $_smarty_tpl->tpl_vars['dynamic_ip']->value){
$_smarty_tpl->tpl_vars['dynamic_ip']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['.id'];?>
">
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['mac-address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['host-name'];?>
</td>
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['status'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='bound'){?>
														<td>Bound</td>
													<?php }else{ ?>
														<td>Waiting</td>
													<?php }?>
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/make-static-lease&id=<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['.id'];?>
" onClick="return confirm('MAKE STATIC THIS ADDRESS ?')" title="MAKE STATIC THIS ADDRESS"><span style="width:80px" class="btn btn-success btn-sm ">Make Static</span></a>
														</td>
														<td>										
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-dynamic-lease&id=<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['dynamic_ip']->value['.id'];?>
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