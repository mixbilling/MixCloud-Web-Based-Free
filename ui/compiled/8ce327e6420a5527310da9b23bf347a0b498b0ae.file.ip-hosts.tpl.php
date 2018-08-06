<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:04:54
         compiled from "ui\theme\default\ip-hosts.tpl" */ ?>
<?php /*%%SmartyHeaderCode:46755b688dc6461ba7-52127130%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8ce327e6420a5527310da9b23bf347a0b498b0ae' => 
    array (
      0 => 'ui\\theme\\default\\ip-hosts.tpl',
      1 => 1530202944,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '46755b688dc6461ba7-52127130',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'notify' => 0,
    'ip_hosts' => 0,
    'hosts' => 0,
    'server' => 0,
    'hs_server' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b688dc65250d2_87245263',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b688dc65250d2_87245263')) {function content_5b688dc65250d2_87245263($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("hosts").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-hosts");
						document.forms['hosts'].submit();
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
								<div class="panel-heading">IP Host</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-binding" data-toggle="modal" data-target="#add-binding" title="ADD NEW IP BINDING"><i class="ion ion-ios-sunny"></i> New Binding</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>											
											</ul>
										</div>
									</div>							
									<hr>
									<div class="adv-table table-responsive">
										<form id="hosts" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>IP Address</th>
														<th>MAC Address</th>
														<th>To address</th>
														<th>Uptime</th>
														<th>Found By</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['hosts'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['hosts']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ip_hosts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['hosts']->key => $_smarty_tpl->tpl_vars['hosts']->value){
$_smarty_tpl->tpl_vars['hosts']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['hosts']->value['.id'];?>
">
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['hosts']->value['address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['hosts']->value['mac-address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['hosts']->value['to-address'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['hosts']->value['uptime'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['hosts']->value['found-by'];?>
</td>
														
													<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['hosts']->value['bypassed'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='true'){?>
														<td>
															<a disabled href="#" title="Status Bind : Bypassed" style="width:80px;" class="btn btn-success btn-sm cdelete">Bypassed</a>	
														</td>
													<?php }else{ ?>
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/ip-hosts-binding&id=<?php echo $_smarty_tpl->tpl_vars['hosts']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['hosts']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['hosts']->value['.id'];?>
" title="MAKE BINDING THIS HOST" style="width:80px;" class="btn btn-success btn-sm cdelete">Bind This</a>											
														</td>
													<?php }?>													
														<td>												
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/ip-hosts-remove&id=<?php echo $_smarty_tpl->tpl_vars['hosts']->value['.id'];?>
&mac=<?php echo $_smarty_tpl->tpl_vars['hosts']->value['mac-address'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['hosts']->value['.id'];?>
" title="REMOVE THIS HOST IP" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
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