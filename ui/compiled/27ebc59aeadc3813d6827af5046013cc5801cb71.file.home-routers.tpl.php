<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:13:01
         compiled from "ui\theme\default\home-routers.tpl" */ ?>
<?php /*%%SmartyHeaderCode:39025b68819d3fbf31-83083947%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '27ebc59aeadc3813d6827af5046013cc5801cb71' => 
    array (
      0 => 'ui\\theme\\default\\home-routers.tpl',
      1 => 1530199101,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '39025b68819d3fbf31-83083947',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_L' => 0,
    'd' => 0,
    'ds' => 0,
    '_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68819d4cee66_26134795',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68819d4cee66_26134795')) {function content_5b68819d4cee66_26134795($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</div>
								<div class="panel-body">
									<a class="btn btn-success waves-effect" href="#add-router" data-toggle="modal" data-target="#add-router" title="ADD NEW MIKROTIK ROUTER"><i class="ion ion-android-add"> </i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Router'];?>
</a>
									<hr/>
									<div class="adv-table table-responsive">
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-0">
											<thead>
												<tr>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Name'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['IP_Address'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Port'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Secret'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Hotspot_Domain'];?>
</th>
													<th>UserManager</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
												</tr>
											</thead>
											<tbody>
											<?php  $_smarty_tpl->tpl_vars['ds'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ds']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['d']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->key => $_smarty_tpl->tpl_vars['ds']->value){
$_smarty_tpl->tpl_vars['ds']->_loop = true;
?>
												<tr>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['name'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['ip_address'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['port'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['username'];?>
</td>
													<td>••••••</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['hotspot_domain'];?>
</td>
												<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['ds']->value['usermanager'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1=='Yes'){?>
													<td>YES</td>
												<?php }else{ ?>
													<td>NO</td>
												<?php }?>
													<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-routers/edit/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="EDIT THIS MIKROTIK ROUTER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														<a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-routers/delete/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="REMOVE THIS MIKROTIK ROUTER" id="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
													</td>
												</tr>
											<?php } ?>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					
					
			<!--modal add router -->
				<div class="modal fade" id="add-router" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
					<div  class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Router'];?>
</h4>
							</div>
							<div class="modal-body">
								<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-routers/add-post" >
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="example : RB750">
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['IP_Address'];?>
</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="ip_address" name="ip_address" placeholder="192.168.1.1 or example.com">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Port'];?>
</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="port" name="port" placeholder="your api port">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="username" name="username" placeholder="router username">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Secret'];?>
</label>
											<div class="col-md-6">
												<input type="password" class="form-control" id="password" name="password" placeholder="router password">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Hotspot_Domain'];?>
</label>
										<div class="col-md-6">
											<input class="form-control" id="hotspot_domain" name="hotspot_domain" placeholder="hotspot url without http://">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">User Manager</label>
										<div class="col-md-6">
											<select id="usermanager" name="usermanager" class="form-control" required>
												<option value="" selected><?php echo $_smarty_tpl->tpl_vars['_L']->value['Is_This_As_Usermanager'];?>
</option>
												<option value="Yes" name="userman_router"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Yes'];?>
</option>
												<option value="No" name="hotspot_router"><?php echo $_smarty_tpl->tpl_vars['_L']->value['No'];?>
</option>
											</select>
										</div>
									</div>
									<hr/>
									<div>									
										<button class="btn btn-success waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['add_Router'];?>
</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
			<!--modal add router -->					

<?php echo $_smarty_tpl->getSubTemplate ("sections/home-footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>