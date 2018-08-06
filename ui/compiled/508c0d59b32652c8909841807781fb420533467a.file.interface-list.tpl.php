<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:57:15
         compiled from "ui\theme\default\interface-list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:41015b689a0b9e29e2-97810327%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '508c0d59b32652c8909841807781fb420533467a' => 
    array (
      0 => 'ui\\theme\\default\\interface-list.tpl',
      1 => 1530203019,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '41015b689a0b9e29e2-97810327',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'interface' => 0,
    'iface' => 0,
    '_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689a0ba5f9f0_95799397',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689a0ba5f9f0_95799397')) {function content_5b689a0ba5f9f0_95799397($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Interface List</div>	
								<div class="panel-body">
									<div class="adv-table table-responsive">								
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
											<thead>
												<tr>
													<th>Id</th>
													<th>Name</th>
													<th>Default Name</th>
													<th>Type</th>
													<th>MAC Address</th>
													<th>Slave</th>
													<th>TX Bytes</th>
													<th>RX Bytes</th>
													<th>Graph</th>
												</tr>
											</thead>
											<tbody>
											<?php  $_smarty_tpl->tpl_vars['iface'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['iface']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['interface']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['iface']->key => $_smarty_tpl->tpl_vars['iface']->value){
$_smarty_tpl->tpl_vars['iface']->_loop = true;
?>
												<tr>
													<td><?php echo $_smarty_tpl->tpl_vars['iface']->value['.id'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['iface']->value['name'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['iface']->value['default-name'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['iface']->value['type'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['iface']->value['mac-address'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['iface']->value['slave'];?>
</td>
													<td><?php echo formatBytes($_smarty_tpl->tpl_vars['iface']->value['tx-byte']);?>
</td>
													<td><?php echo formatBytes($_smarty_tpl->tpl_vars['iface']->value['rx-byte']);?>
</td>																										
													<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/interface-traffic&interface=<?php echo $_smarty_tpl->tpl_vars['iface']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['iface']->value['name'];?>
" title="See Traffic for this Interface" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-bar-chart" aria-hidden="true"</a>
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

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>