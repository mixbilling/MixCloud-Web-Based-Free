<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:40:02
         compiled from "ui\theme\default\home-licence.tpl" */ ?>
<?php /*%%SmartyHeaderCode:54375b68a4127bf061-09067057%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9629eece7af88e9d18d0748e028f0abe690d274b' => 
    array (
      0 => 'ui\\theme\\default\\home-licence.tpl',
      1 => 1530199108,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '54375b68a4127bf061-09067057',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    'u' => 0,
    'ul' => 0,
    '_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a4128304f4_36153332',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a4128304f4_36153332')) {function content_5b68a4128304f4_36153332($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-8">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Licence_Information'];?>
</div>							
								<div class="panel">								
									<div style="border:none" class="panel-body">	
										<table class="table text-left">
										<?php  $_smarty_tpl->tpl_vars['ul'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ul']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['u']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ul']->key => $_smarty_tpl->tpl_vars['ul']->value){
$_smarty_tpl->tpl_vars['ul']->_loop = true;
?>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Email</td>
												<td><?php echo $_smarty_tpl->tpl_vars['ul']->value['email'];?>
</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Request ID</td>
												<td><?php echo $_smarty_tpl->tpl_vars['ul']->value['request_id'];?>
</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Hardware ID</td>
												<td><?php echo $_smarty_tpl->tpl_vars['ul']->value['hardware_id'];?>
</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Software Key</td>
												<td><?php echo $_smarty_tpl->tpl_vars['ul']->value['software_key'];?>
</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Activation Date</td>
												<td><?php echo $_smarty_tpl->tpl_vars['ul']->value['activation_date'];?>
</td>
											</tr>										
										<?php } ?>		
										</table>
											<hr style="margin-top:0">
											<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-licence/remove-licence" title="Remove Licence" onclick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Licence_Warning'];?>
')" class="btn btn-success waves-effect waves-light"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Licence'];?>
</a>									
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

<?php echo $_smarty_tpl->getSubTemplate ("sections/home-footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>