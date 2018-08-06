<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:04:14
         compiled from "ui\theme\default\ip-binding.tpl" */ ?>
<?php /*%%SmartyHeaderCode:293515b688d9eac56a9-28256445%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e8fcf9d294bc1cb546900f15726715409865d4b5' => 
    array (
      0 => 'ui\\theme\\default\\ip-binding.tpl',
      1 => 1530202966,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '293515b688d9eac56a9-28256445',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'ip_binding' => 0,
    'binding' => 0,
    'server' => 0,
    'hs_server' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b688d9eb908d2_36136381',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b688d9eb908d2_36136381')) {function content_5b688d9eb908d2_36136381($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("hs_users").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-binding");
					document.forms['hs_users'].submit();
				}
				function disable() {
					document.getElementById("hs_users").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-binding");
					document.forms['hs_users'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("hs_users").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-binding");
						document.forms['hs_users'].submit();
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
								<div class="panel-heading">IP Binding</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-binding" data-toggle="modal" data-target="#add-binding" title="ADD NEW IP BINDING"><i class="ion ion-ios-sunny"></i> New Binding</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="binding" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>IP Address</th>
														<th>MAC Address</th>
														<th>To address</th>
														<th>Type</th>
														<th style="max-width:150px">Comment</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['binding'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['binding']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ip_binding']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['binding']->key => $_smarty_tpl->tpl_vars['binding']->value){
$_smarty_tpl->tpl_vars['binding']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
">
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['binding']->value['address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['binding']->value['mac-address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['binding']->value['to-address'];?>
</td>
													<?php if (!$_smarty_tpl->tpl_vars['binding']->value['type']){?>	
														<td>regular</td>
													<?php }else{ ?>
														<td><?php echo $_smarty_tpl->tpl_vars['binding']->value['type'];?>
</td>
													<?php }?>	
														<td><?php echo $_smarty_tpl->tpl_vars['binding']->value['comment'];?>
</td>
														
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['binding']->value['disabled'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='true'){?>
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-binding&id=<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" title="ENABLE THIS BINDING"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>
													<?php }else{ ?>
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-binding&id=<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" title="DISABLE THIS BINDING"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
														</td>
													<?php }?>													
														<td>													
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/edit-binding&id=<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" title="EDIT THIS BINDING" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm cdelete fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-binding&id=<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['binding']->value['.id'];?>
" title="REMOVE THIS BINDING" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
	
			<!--modal add binding -->
			<div class="modal fade" id="add-binding" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add IP Binding</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/add-binding" >
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Add Mac Address</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="mac_address" name="mac_address" placeholder="D4:AA:2C:B3:F1:E1">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Add IP Address</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="address" name="address" placeholder="192.168.1.1">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Server</label>
										<div class="col-md-6">
											<select id="server" name="server" class="form-control" required>
												<option value="all">ALL</option>
											<?php  $_smarty_tpl->tpl_vars['hs_server'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['hs_server']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['server']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['hs_server']->key => $_smarty_tpl->tpl_vars['hs_server']->value){
$_smarty_tpl->tpl_vars['hs_server']->_loop = true;
?>
												<option value="<?php echo $_smarty_tpl->tpl_vars['hs_server']->value['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['hs_server']->value['name'];?>
</option>
											<?php } ?>	
											</select>
										</div>
									</div>	
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Binding Type</label>
										<div class="col-md-6">
											<select id="type" name="type" class="form-control" required>
												<option value="" selected>- select binding type -</option>
												<option value="bypassed">BYPASSED</option>
												<option value="regular">REGULAR</option>
												<option value="blocked">BLOCKED</option>
											</select>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Comment</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="comment" name="comment" placeholder="comment">
									</div>
								</div>									
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add IP Binding</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
			<!--modal add binding -->
	
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>