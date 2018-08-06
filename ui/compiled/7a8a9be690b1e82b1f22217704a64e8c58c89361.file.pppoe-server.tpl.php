<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:09:15
         compiled from "ui\theme\default\pppoe-server.tpl" */ ?>
<?php /*%%SmartyHeaderCode:153705b689cdb77a1a8-20426438%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a8a9be690b1e82b1f22217704a64e8c58c89361' => 
    array (
      0 => 'ui\\theme\\default\\pppoe-server.tpl',
      1 => 1530202796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '153705b689cdb77a1a8-20426438',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'server_list' => 0,
    'server' => 0,
    'profile_list' => 0,
    'profile' => 0,
    'interface_list' => 0,
    'interface' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689cdb878069_27194820',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689cdb878069_27194820')) {function content_5b689cdb878069_27194820($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("pppoe_server").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-pppoe_server");
					document.forms['pppoe_server'].submit();
				}
				function disable() {
					document.getElementById("pppoe_server").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-pppoe_server");
					document.forms['pppoe_server'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("pppoe_server").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-pppoe_server");
						document.forms['pppoe_server'].submit();
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
								<div class="panel-heading">PPPOE Server</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-info waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-server" data-toggle="modal" data-target="#add-server" title="ADD NEW PPPOE SERVER"><i class="ion ion-ios-sunny"></i> New PPPOE Server</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="pppoe_server" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Service Name</th>
														<th>Interface</th>
														<th>Max MTU</th>
														<th>Max MRU</th>
														<th>Authentication</th>													
														<th>Default Profile</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['server'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['server']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['server_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['server']->key => $_smarty_tpl->tpl_vars['server']->value){
$_smarty_tpl->tpl_vars['server']->_loop = true;
?>
													<tr>
														<td align="center">
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
">
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['service-name'];?>
</td>												
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['interface'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['max-mtu'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['max-mru'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['authentication'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['default-profile'];?>
</td>
														<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['server']->value['disabled'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='true'){?>
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-server-enable&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['service-name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="ENABLE THIS PPPOE SERVER"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>
														
														<?php }else{ ?>
														
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-server-disable&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['service-name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="DISABLE THIS PPPOE SERVER"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>													
														</td>
														
														<?php }?>
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-server-edit&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['service-name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="EDIT THIS PPPOE SERVER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-server-remove&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['service-name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="REMOVE THIS PPPOE SERVER" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
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
			
			<div>
		<!--modal add server -->
			<div class="modal fade" id="add-server" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add PPPOE Server</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/add-pppoe-server" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Server Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="pppoe-server name">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Max Session</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="max_session" name="max_session" placeholder="max-session, default is empty">
										</div>
									</div>
								</div>								
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Default Profile</label>
										<div class="col-md-6">
											<select class="form-control select2" name="interface" style="width: 100%" data-placeholder="- select profile -" required>
												<option></option>
											<?php  $_smarty_tpl->tpl_vars['profile'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['profile']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['profile_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['profile']->key => $_smarty_tpl->tpl_vars['profile']->value){
$_smarty_tpl->tpl_vars['profile']->_loop = true;
?>
												<option value="<?php echo $_smarty_tpl->tpl_vars['profile']->value['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['profile']->value['name'];?>
</option>
											<?php } ?>	
											</select>
										</div>
									</div>	
								</div>								
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Interface</label>
										<div class="col-md-6">
											<select class="form-control select2" name="interface" style="width: 100%" data-placeholder="- select interface -" required>
											<option></option>
												<?php  $_smarty_tpl->tpl_vars['interface'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['interface']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['interface_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['interface']->key => $_smarty_tpl->tpl_vars['interface']->value){
$_smarty_tpl->tpl_vars['interface']->_loop = true;
?>
													<option value="<?php echo $_smarty_tpl->tpl_vars['interface']->value['name'];?>
" name=><?php echo $_smarty_tpl->tpl_vars['interface']->value['name'];?>
</option>
												<?php } ?>
											</select>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Max MTU</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="max_mtu" name="max_mtu" placeholder="max-mtu, default is 1480" value="1480">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Max MRU</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="max_mru" name="max_mru" placeholder="max-mru, default is 1480" value="1480">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">KeepAlive TimeOut</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="keepalive" name="keepalive" placeholder="keepalive-timeout, default is 10" value="10">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">One Session Per Host</label>
										<div class="col-md-6">
											<select id="host_session" name="host_session" class="form-control">
												<option id="no" value="no">NO</option>
												<option id="yes" value="yes">YES</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Authentication</label>
									<div style="padding-left:30px;" class="col-md-3">
										<input type="checkbox" name="auth[]" value="pap" checked> PAP<br>
										<input type="checkbox" name="auth[]" value="chap" checked> CHAP<br>
									</div>	
									<div style="padding-left:30px;" class="col-md-3">	
										<input type="checkbox" name="auth[]" value="mschap1" checked> MSChap1<br>
										<input type="checkbox" name="auth[]" value="mschap2" checked> MSChap2<br>
									</div>
								</div>									
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Server</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add server -->
			</div>

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>