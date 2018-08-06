<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:12:56
         compiled from "ui\theme\default\home-routers-edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15225b6881984cdc87-38438021%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '919f5cc79b098c80f160e310e031ac73cdaf5793' => 
    array (
      0 => 'ui\\theme\\default\\home-routers-edit.tpl',
      1 => 1530199094,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15225b6881984cdc87-38438021',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'd' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6881986f8803_78163657',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6881986f8803_78163657')) {function content_5b6881986f8803_78163657($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit_Router'];?>
</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-routers/edit-post" > 
										<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['name'];?>
" readonly>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['IP_Address'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="ip_address" name="ip_address" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['ip_address'];?>
">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Port'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="port" name="port" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['port'];?>
">
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="username" name="username" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Secret'];?>
</label>
												<div class="col-md-6">
													<input type="password" class="form-control" id="password" name="password" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['password'];?>
">
												</div>
											</div>
										</div>		
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Hotspot_Domain'];?>
</label>
											<div class="col-md-6">
												<input class="form-control" id="hotspot_domain" name="hotspot_domain" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['hotspot_domain'];?>
" placeholder="hotspot url without http://">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">User Manager</label>
											<div class="col-md-6">
												<select id="usermanager" name="usermanager" class="form-control" required>
												<?php if ($_smarty_tpl->tpl_vars['d']->value['usermanager']=='Yes'){?>
													<option value="<?php echo $_smarty_tpl->tpl_vars['d']->value['usermanager'];?>
" selected>Current : <?php echo $_smarty_tpl->tpl_vars['_L']->value['Yes'];?>
</option>
												<?php }else{ ?>
													<option value="<?php echo $_smarty_tpl->tpl_vars['d']->value['usermanager'];?>
" selected>Current : <?php echo $_smarty_tpl->tpl_vars['_L']->value['No'];?>
</option>
												<?php }?>	
													<option value="Yes" name="userman_router"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Yes'];?>
</option>
													<option value="No" name="hotspot_router"><?php echo $_smarty_tpl->tpl_vars['_L']->value['No'];?>
</option>
												</select>
											</div>
										</div>					
										<div  style="margin-bottom:-15px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save_Changes'];?>
</button> Or <a onclick="window.history.back()" href="#back"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancel'];?>
</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					

<?php echo $_smarty_tpl->getSubTemplate ("sections/home-footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>