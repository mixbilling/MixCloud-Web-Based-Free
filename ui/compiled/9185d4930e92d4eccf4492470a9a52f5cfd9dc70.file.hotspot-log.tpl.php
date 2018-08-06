<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:36:25
         compiled from "ui\theme\default\hotspot-log.tpl" */ ?>
<?php /*%%SmartyHeaderCode:201885b68952998abc1-50928412%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9185d4930e92d4eccf4492470a9a52f5cfd9dc70' => 
    array (
      0 => 'ui\\theme\\default\\hotspot-log.tpl',
      1 => 1531233658,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '201885b68952998abc1-50928412',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    'hotspot_log' => 0,
    'hlogs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689529a463f5_66634333',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689529a463f5_66634333')) {function content_5b689529a463f5_66634333($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Hotspot Logs</div>
								<div class="panel-body">
									<div class="adv-table table-responsive">
										<form id="walled" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th>Time</th>
														<th>Topics</th>
														<th>Message</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['hlogs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['hlogs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['hotspot_log']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['hlogs']->key => $_smarty_tpl->tpl_vars['hlogs']->value){
$_smarty_tpl->tpl_vars['hlogs']->_loop = true;
?>
													<tr>
														<td align="center"><?php echo $_smarty_tpl->tpl_vars['hlogs']->value['time'];?>
</td>
														<td align="center"><?php echo $_smarty_tpl->tpl_vars['hlogs']->value['topics'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['hlogs']->value['message'];?>
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

			

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>