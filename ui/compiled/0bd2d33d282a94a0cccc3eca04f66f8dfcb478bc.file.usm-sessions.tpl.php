<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:24:30
         compiled from "ui\theme\default\usm-sessions.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6075b68925e6f30b4-57812245%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0bd2d33d282a94a0cccc3eca04f66f8dfcb478bc' => 
    array (
      0 => 'ui\\theme\\default\\usm-sessions.tpl',
      1 => 1524750074,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6075b68925e6f30b4-57812245',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'notify' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68925e750cc0_24751542',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68925e750cc0_24751542')) {function content_5b68925e750cc0_24751542($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("usm_session").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-session");
						document.forms['usm_session'].submit();
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
								<div class="panel-heading">Sessions List</div>	
								<?php echo $_smarty_tpl->getSubTemplate ("sections/navbar-usermanager.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

								<div class="panel-body">
									<button onclick="remove();" style="width:170px;margin-top:4px;" class="btn btn-danger waves-effect" title="REMOVE SELECTED"><i class="ion ion-android-delete"> </i> Remove Selected</button>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="usm_session" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="usm-sessions">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Customer</th>
														<th>User</th>													
														<th>Station ID</th>
														<th>User IP</th>
														<th>Host IP</th>
														<th>From Time</th>
														<th>Till Time</th>
														<th>Uptime</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
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