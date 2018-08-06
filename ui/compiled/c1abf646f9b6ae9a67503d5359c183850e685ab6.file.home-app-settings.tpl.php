<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:28:12
         compiled from "ui\theme\default\home-app-settings.tpl" */ ?>
<?php /*%%SmartyHeaderCode:87755b68a14c1f7fe7-84648998%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c1abf646f9b6ae9a67503d5359c183850e685ab6' => 
    array (
      0 => 'ui\\theme\\default\\home-app-settings.tpl',
      1 => 1530282984,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '87755b68a14c1f7fe7-84648998',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_L' => 0,
    '_url' => 0,
    '_c' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a14c2a7c99_11567458',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a14c2a7c99_11567458')) {function content_5b68a14c2a7c99_11567458($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['General_Settings'];?>
</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/app-post" >
										<ul class="nav nav-tabs">
											<li class="active"><a style="max-width:170px;text-align:center" data-toggle="tab" href="#basic-info"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Basic_Info'];?>
</a></li>
											<li><a style="max-width:170px;text-align:center" data-toggle="tab" href="#online-payment"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Bank_Transfer'];?>
</a></li>
											<li><a style="max-width:170px;text-align:center" data-toggle="tab" href="#voucher-report"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Voucher_Report'];?>
</a></li>
										</ul>									
										<div class="tab-content">
											<div id="basic-info" class="tab-pane fade in active">
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['App_Name'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="company" name="company" placeholder="HIJAUNET.ID" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['CompanyName'];?>
">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Address'];?>
</label>
													<div class="col-md-6">
														<textarea class="form-control" id="address" name="address" rows="3" placeholder="Jl.Ledjend Suprapto No.64, Sidoharjo, Pacitan"><?php echo $_smarty_tpl->tpl_vars['_c']->value['address'];?>
</textarea>
														<span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['address_help'];?>
</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone_Number'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="phone" name="phone" placeholder="0877 0229 9005" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['phone'];?>
">
													</div>
												</div>											
											</div>
											<div id="online-payment" class="tab-pane fade">
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Bank_Name'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="bank_name" name="bank_name" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['bank_name'];?>
" placeholder="Bank BRI">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Acc_Name'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="acc_name" name="acc_name" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['acc_name'];?>
" placeholder="HijauNet">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Acc_Number'];?>
</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="acc_number" name="acc_number" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['acc_number'];?>
" placeholder="xxxx xxxx xxxx xxx">
													</div>
												</div>
											</div>
											<div id="voucher-report" class="tab-pane fade">
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Report_Method'];?>
</label>
													<div class="col-md-6">
														<select id="voucher_report" name="voucher_report" class="form-control" required>
															<option value="on-login" id="on-login" name="on-login" <?php if ($_smarty_tpl->tpl_vars['_c']->value['voucher_report']=='on-login'){?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['On_Login'];?>
</option>
															<option value="on-create" id="on-create" name="on-create" <?php if ($_smarty_tpl->tpl_vars['_c']->value['voucher_report']=='on-create'){?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['On_Create'];?>
</option>
														</select>
													</div>
												</div>											
											</div>
										<div  style="margin-bottom:-15px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save_Changes'];?>
</button> Or <a onclick="window.history.back()" href="#back"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Back'];?>
</a>
										</div>									
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