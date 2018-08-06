<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:36:18
         compiled from "ui\theme\default\hotspot-list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:265445b689522877b87-49538052%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cc538bfd62cd8120aaa1ec8afea4b6002aeb77a1' => 
    array (
      0 => 'ui\\theme\\default\\hotspot-list.tpl',
      1 => 1530972596,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '265445b689522877b87-49538052',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    '_admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689522a4c7f0_56653652',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689522a4c7f0_56653652')) {function content_5b689522a4c7f0_56653652($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function enable() {
					document.getElementById("hs_users").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/enable-selected-hs_users");
					document.forms['hs_users'].submit();
				}
				function disable() {
					document.getElementById("hs_users").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/disable-selected-hs_users");
					document.forms['hs_users'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("hs_users").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-hs_users");
						document.forms['hs_users'].submit();
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
								<div class="panel-heading">Hotspot Users</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">User List</li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-list" title="ALL HOTSPOT USER"><i class="ion ion-ios-sunny"></i> Hotspot List</a></li>	
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-online" title="HOTSPOT ONLINE"><i class="ion ion-ios-sunny"></i> Hotspot Online</a></li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/hotspot-expire" title="HOTSPOT EXPIRE"><i class="ion ion-ios-sunny"></i> Hotspot Expire</a></li>
											<?php if (!strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"_view")||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											<?php }?>	
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="hs_users" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="hotspot-list">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Username</th>
														<th>Profile</th>
														<th>Uptime</th>
														<th>Limit Uptime</th>
														<th>DL</th>
														<th>UP</th>
														<th>Limit Data</th>
														<th>Status</th>
														<th style="max-width:150px">Comment</th>
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