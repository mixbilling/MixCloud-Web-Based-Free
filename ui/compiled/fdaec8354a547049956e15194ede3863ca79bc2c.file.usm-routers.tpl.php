<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:16:33
         compiled from "ui\theme\default\usm-routers.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12995b689081c4d1c7-31167873%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fdaec8354a547049956e15194ede3863ca79bc2c' => 
    array (
      0 => 'ui\\theme\\default\\usm-routers.tpl',
      1 => 1530202431,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12995b689081c4d1c7-31167873',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'usm_routers' => 0,
    'routers' => 0,
    'usm_customers' => 0,
    'customers' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689081d2fb02_64399081',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689081d2fb02_64399081')) {function content_5b689081d2fb02_64399081($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("routers").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-routers");
					document.forms['routers'].submit();
				}
				function disable() {
					document.getElementById("routers").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-routers");
					document.forms['routers'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("routers").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-routers");
						document.forms['routers'].submit();
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
								<div class="panel-heading">Routers List</div>	
								<?php echo $_smarty_tpl->getSubTemplate ("sections/navbar-usermanager.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-routers-add" data-toggle="modal" data-target="#usm-routers-add" title="ADD NEW ROUTER"><i class="ion ion-ios-sunny"></i> New Router</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLED SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="routers" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>IP Address</th>
														<th>Shared Secret</th>
														<th>Customer</th>
														<th>Log</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['routers'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['routers']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['usm_routers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['routers']->key => $_smarty_tpl->tpl_vars['routers']->value){
$_smarty_tpl->tpl_vars['routers']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
">
														</td>													
														<td><?php echo $_smarty_tpl->tpl_vars['routers']->value['name'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['routers']->value['ip-address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['routers']->value['shared-secret'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['routers']->value['customer'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['routers']->value['log'];?>
</td>
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['routers']->value['disabled'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='true'){?>													
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-routers-enable&id=<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['routers']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
" title="Enable This Router ?"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>													
													<?php }else{ ?>
														<td>													
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-routers-disable&id=<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['routers']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
" title="Disable This Router ?"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
														</td>
													<?php }?>												
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-routers-edit&id=<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['routers']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
" title="EDIT THIS ROUTER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														<?php if ($_smarty_tpl->tpl_vars['routers']->value['permissions']!='owner'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-routers-remove&id=<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['routers']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['routers']->value['.id'];?>
" title="REMOVE THIS ROUTER" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
														<?php }?>	
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

		<!--modal usm-routers-add -->
			<div class="modal fade" id="usm-routers-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Router</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-routers-add" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="router name, example : RB750" required>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">IP Address</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="ip_address" name="ip_address" placeholder="ip address, example : 192.168.1.1" required>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Shared Secret</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="shared_secret" name="shared_secret" placeholder="shared secret" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Customer</label>
									<div class="col-md-6">
										<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="select customer" required>
										<option></option>
											<?php  $_smarty_tpl->tpl_vars['customers'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['customers']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['usm_customers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['customers']->key => $_smarty_tpl->tpl_vars['customers']->value){
$_smarty_tpl->tpl_vars['customers']->_loop = true;
?>
												<option value="<?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
" name=><?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
</option>
											<?php } ?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Log Events</label>
									<div class="col-md-4">
										<div class="col-md-3 col-sm-6">	
											<input type="checkbox" name="log[]" value="auth-ok"> Authorization success<br>
											<input type="checkbox" name="log[]" value="auth-fail"> Authorization failure
										</div>	
										<div class="col-md-3 col-sm-6">		
											<input type="checkbox" name="log[]" value="acct-ok"> Accounting success<br>
											<input type="checkbox" name="log[]" value="acct-fail"> Accounting failure
										</div>	
									</div>	
								</div>					
								<div class="form-group">
									<label class="col-md-2 control-label">Disabled</label>
									<div class="col-md-6">
										<select id="disabled" name="disabled" class="form-control">										
											<option value="yes">YES</option>
											<option value="no" selected>NO</option>
										</select>
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Router</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-routers-add -->					
				
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>