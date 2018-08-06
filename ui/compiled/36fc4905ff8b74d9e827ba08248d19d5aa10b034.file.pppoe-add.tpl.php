<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:42:42
         compiled from "ui\theme\default\pppoe-add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:260685b6896a2310af2-03492141%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '36fc4905ff8b74d9e827ba08248d19d5aa10b034' => 
    array (
      0 => 'ui\\theme\\default\\pppoe-add.tpl',
      1 => 1530202863,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '260685b6896a2310af2-03492141',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_L' => 0,
    '_url' => 0,
    '_admin' => 0,
    'o' => 0,
    'os' => 0,
    'd' => 0,
    'ds' => 0,
    'r' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6896a243d7c2_90836022',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6896a243d7c2_90836022')) {function content_5b6896a243d7c2_90836022($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_PPPOE_Plan'];?>
</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/pppoe-add-post" > 
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name_plan" name="name_plan" placeholder="use different name">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Owner'];?>
</label>
												<div class="col-md-6">
												<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
													<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Owner'];?>
 -" required>						
														<option></option>
													<?php  $_smarty_tpl->tpl_vars['os'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['os']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['o']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['os']->key => $_smarty_tpl->tpl_vars['os']->value){
$_smarty_tpl->tpl_vars['os']->_loop = true;
?>
														<option value="<?php echo $_smarty_tpl->tpl_vars['os']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['os']->value['username'];?>
</option>
													<?php } ?>						
													</select>
												<?php }else{ ?>
													<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Owner'];?>
 -" readonly>
														<option value="<?php echo $_smarty_tpl->tpl_vars['_admin']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['_admin']->value['username'];?>
</option>
													</select>
												<?php }?>	
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Bandwidth</label>
											<div class="col-md-6">
												<select id="id_bw" name="id_bw" class="form-control">
													<option value="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_BW'];?>
 -</option>
													<?php  $_smarty_tpl->tpl_vars['ds'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ds']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['d']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->key => $_smarty_tpl->tpl_vars['ds']->value){
$_smarty_tpl->tpl_vars['ds']->_loop = true;
?>
														<option value="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ds']->value['name_bw'];?>
</option>
													<?php } ?>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Price'];?>
</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="price" name="price" placeholder="plan-price">
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Validity'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="validity" name="validity"  value="0">
													<span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['validity_help'];?>
</span>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">	
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Time_Unit'];?>
</label>
												<div class="col-md-6">
													<select class="form-control" id="validity_unit" name="validity_unit">
														<option value="H"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Hours'];?>
</option>
														<option value="D"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Days'];?>
</option>
														<option value="M"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Months'];?>
</option>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Router_Name'];?>
</label>
											<div class="col-md-6">
												<select id="routers" name="routers" class="form-control">
													<option value=''>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
 -</option>
													<?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['r']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value){
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
														<option value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['name'];?>
</option>
													<?php } ?>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">IP Pool</label>
											<div class="col-md-6">
												<select id="pool_name" name="pool_name" class="form-control">
													<option value=''>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Pool'];?>
 -</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Local Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="local_address" name="local_address" placeholder="first ip address from ip pool network, example : 10.50.50.1" required>
												<span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['local_address_help'];?>
</span>
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

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>