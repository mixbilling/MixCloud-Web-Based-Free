<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:34:41
         compiled from "ui\theme\default\hotspot-server.tpl" */ ?>
<?php /*%%SmartyHeaderCode:233645b6894c10d83f4-55018529%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1bef1b2fd5cdb7027b1a9aec13b9a272dfa6e6d2' => 
    array (
      0 => 'ui\\theme\\default\\hotspot-server.tpl',
      1 => 1530203076,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '233645b6894c10d83f4-55018529',
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
    'interface_list' => 0,
    'interface' => 0,
    'pool_list' => 0,
    'pool' => 0,
    'profile_list' => 0,
    'profile' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6894c1218943_78398827',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6894c1218943_78398827')) {function content_5b6894c1218943_78398827($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("hotspot_server").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-hotspot_server");
					document.forms['hotspot_server'].submit();
				}
				function disable() {
					document.getElementById("hotspot_server").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-hotspot_server");
					document.forms['hotspot_server'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("hotspot_server").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-hotspot_server");
						document.forms['hotspot_server'].submit();
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
								<div class="panel-heading">Hotspot Server</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-server" data-toggle="modal" data-target="#add-server" title="ADD NEW HOTSPOT SERVER"><i class="ion ion-ios-sunny"></i> New Hotspot Server</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="hotspot_server" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th  class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Interface</th>
														<th>Address Pool</th>
														<th>Server Profile</th>
														<th>IP Address</th>													
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
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['name'];?>
 - <?php echo $_smarty_tpl->tpl_vars['server']->value['addresses-per-mac'];?>
 MAC</td>												
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['interface'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['address-pool'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['profile'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['server']->value['ip-of-dns-name'];?>
</td>													
														<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['server']->value['disabled'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='true'){?>
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-server-enable&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="ENABLE THIS HOTSPOT SERVER"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>
														
														<?php }else{ ?>
														
														<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-server-disable&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="DISABLE THIS HOTSPOT SERVER"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>													
														</td>
														
														<?php }?>
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-server-edit&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="EDIT THIS HOTSPOT SERVER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-server-remove&id=<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['server']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['server']->value['.id'];?>
" title="REMOVE THIS HOTSPOT SERVER" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
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
							<h4 class="modal-title" id="myModalLabel">Add Hotspot Server</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/add-hotspot-server" >
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Server Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="hotspot-server name">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Interface</label>
										<div class="col-md-6">
											<select class="form-control select2" style="width: 100%" data-placeholder="- select interface -" name="interface" required>
											<option>- select interface -</option>
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
								<div class="form-group">
									<label class="col-md-2 control-label">Address Pool</label>
									<div class="col-md-6">
										<select id="pool" name="pool" class="form-control" required>
											<option value="">- select address pool -</option>
										<?php  $_smarty_tpl->tpl_vars['pool'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['pool']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pool_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['pool']->key => $_smarty_tpl->tpl_vars['pool']->value){
$_smarty_tpl->tpl_vars['pool']->_loop = true;
?>
											<option value="<?php echo $_smarty_tpl->tpl_vars['pool']->value['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['pool']->value['name'];?>
</option>
										<?php } ?>	
										</select>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Server Profile</label>
									<div class="col-md-6">
										<select id="profile" name="profile" class="form-control" required>
											<option value="">- select profile -</option>
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
								<div class="form-group">
									<label class="col-md-2 control-label">Address Per MAC</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="address_per_mac" name="address_per_mac" placeholder="address-per-mac" value="2">
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