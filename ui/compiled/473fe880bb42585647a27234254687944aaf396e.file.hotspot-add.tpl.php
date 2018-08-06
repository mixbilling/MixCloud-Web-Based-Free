<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:39:27
         compiled from "ui\theme\default\hotspot-add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:191845b6887cfb13586-89591377%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '473fe880bb42585647a27234254687944aaf396e' => 
    array (
      0 => 'ui\\theme\\default\\hotspot-add.tpl',
      1 => 1530203130,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '191845b6887cfb13586-89591377',
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
  'unifunc' => 'content_5b6887cfc5b7d9_63646603',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6887cfc5b7d9_63646603')) {function content_5b6887cfc5b7d9_63646603($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Hotspot_Plan'];?>
</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/add-post" >
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name" name="name" placeholder="use different name">
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
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Type'];?>
</label>
											<div style="margin-top:7px;" class="col-md-6">
												<input type="radio" id="Unlimited" name="typebp" value="Unlimited" checked> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Unlimited'];?>
 
												<input style="margin-left:10px;" type="radio" id="Limited" name="typebp" value="Limited"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Limited'];?>
 
											</div>
										</div>
										<div style="display:none;" id="Type">
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Limit_Type'];?>
</label>
												<div style="margin-top:7px;" class="col-md-6">
													<input type="radio" id="Time_Limit" name="limit_type" value="Time_Limit" checked> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Time_Limit'];?>
 
													<input style="margin-left:10px;" type="radio" id="Data_Limit" name="limit_type" value="Data_Limit"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Data_Limit'];?>
 
													<input style="margin-left:10px;" type="radio" id="Both_Limit" name="limit_type" value="Both_Limit"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Both_Limit'];?>
 
												</div>
											</div>
										</div>
										<div style="display:none;" id="TimeLimit">
											<div class="col-md-3 col-sm-6">	
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Time_Limit'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="time_limit" name="time_limit" value="0">
													</div>
												</div>
											</div>	
											<div class="col-md-3 col-sm-6">		
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Time_Unit'];?>
</label>
													<div class="col-md-6">
														<select class="form-control" id="time_unit" name="time_unit">
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
										</div>
										<div style="display:none;" id="DataLimit">
											<div class="col-md-3 col-sm-6">		
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Data_Limit'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="data_limit" name="data_limit" value="0">
													</div>
												</div>
											</div>	
											<div class="col-md-3 col-sm-6">
												<div class="form-group">	
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Data_Unit'];?>
</label>
													<div class="col-md-6">
														<select class="form-control" id="data_unit" name="data_unit">
															<option value="M">MB</option>
															<option value="G">GB</option>
														</select>
													</div>
												</div>
											</div>	
										</div>
										<div class="col-md-3 col-sm-6">	
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
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Price'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="price" name="price" placeholder="plan price">
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Validity'];?>
</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="validity" name="validity" value="0">
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
											<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Shared_Users'];?>
</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="sharedusers" name="sharedusers" value="1">
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
										<div  style="margin-bottom:-10px" class="form-group"></div>	
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