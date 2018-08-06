<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:39:54
         compiled from "ui\theme\default\usm-customers.tpl" */ ?>
<?php /*%%SmartyHeaderCode:205195b68a40a4cb494-73072292%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ccadf87d5e4f8ce386b1e2bc3624f6bdb0fa1a45' => 
    array (
      0 => 'ui\\theme\\default\\usm-customers.tpl',
      1 => 1530202552,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '205195b68a40a4cb494-73072292',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'usm_customers' => 0,
    'customers' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a40a5b5ac9_86240203',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a40a5b5ac9_86240203')) {function content_5b68a40a5b5ac9_86240203($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("customers").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-customers");
					document.forms['customers'].submit();
				}
				function disable() {
					document.getElementById("customers").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-customers");
					document.forms['customers'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("customers").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-customers");
						document.forms['customers'].submit();
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
								<div class="panel-heading">Customers List</div>	
								<?php echo $_smarty_tpl->getSubTemplate ("sections/navbar-usermanager.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-customers-add" data-toggle="modal" data-target="#usm-customers-add" title="ADD NEW CUSTOMER"><i class="ion ion-ios-sunny"></i> New Customer</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="customers" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>													
														<th>Customer</th>
														<th>Password</th>
														<th>Permission</th>
														<th>Parent</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['customers'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['customers']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['usm_customers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['customers']->key => $_smarty_tpl->tpl_vars['customers']->value){
$_smarty_tpl->tpl_vars['customers']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
">
														</td>													
														<td><?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
</td>
														<td>••••••</td>
														<td><?php echo $_smarty_tpl->tpl_vars['customers']->value['permissions'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['customers']->value['parent'];?>
</td>
														
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['customers']->value['disabled'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='true'){?>													
														<td>
														<?php if ($_smarty_tpl->tpl_vars['customers']->value['permissions']!='owner'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers-enable&id=<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
" title="ENABLE THIS CUSTOMER"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														<?php }?>
														</td>													
													<?php }else{ ?>
														<td>
														<?php if ($_smarty_tpl->tpl_vars['customers']->value['permissions']!='owner'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers-disable&id=<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
" title="DISABLE THIS CUSTOMER"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
														<?php }?>
														</td>
													<?php }?>												
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers-edit&id=<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
" title="EDIT THIS CUSTOMER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														<?php if ($_smarty_tpl->tpl_vars['customers']->value['permissions']!='owner'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers-remove&id=<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['customers']->value['.id'];?>
" title="REMOVE THIS CUSTOMER" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
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
				
		<!--modal usm-customers-add -->
			<div class="modal fade" id="usm-customers-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Customer</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-customers-add" >
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Username</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="login" name="login" placeholder="customer username" required>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Password</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="password" name="password" placeholder="customer password" required>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Permissions</label>
									<div class="col-md-6">
									<?php if ($_smarty_tpl->tpl_vars['usm_customers']->value==''){?>
										<select id="permissions" name="permissions" class="form-control">
											<option value="owner">OWNER</option>									
											<option value="full">FULL</option>
											<option value="read-write">READ WRITE</option>
											<option value="read-only">READ ONLY</option>
										</select>
									<?php }else{ ?>
										<select id="permissions" name="permissions" class="form-control">								
											<option value="full" selected>FULL</option>
											<option value="read-write">READ WRITE</option>
											<option value="read-only">READ ONLY</option>
										</select>
									<?php }?>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Backup Allowed</label>
									<div class="col-md-6">
										<select id="backup_allowed" name="backup_allowed" class="form-control">
											<option value="yes" selected>YES</option>								
											<option value="no">NO</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Parent</label>
									<div class="col-md-6">
										<select id="parent" name="parent" class="form-control select2" style="width: 100%" data-placeholder="- select parent -" required>
											<option></option>
										<?php  $_smarty_tpl->tpl_vars['customers'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['customers']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['usm_customers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['customers']->key => $_smarty_tpl->tpl_vars['customers']->value){
$_smarty_tpl->tpl_vars['customers']->_loop = true;
?>																
											<option type="text" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
"><?php echo $_smarty_tpl->tpl_vars['customers']->value['login'];?>
</option>	
										<?php } ?>	
										</select>
									</div>
								</div>					
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Customer</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-customers-add -->				

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>