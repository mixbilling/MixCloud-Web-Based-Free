<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:30:34
         compiled from "ui\theme\default\pppoe-online.tpl" */ ?>
<?php /*%%SmartyHeaderCode:238625b6893cadd8108-36069223%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1c8174920a346259646799f932dfb8b63b5343c4' => 
    array (
      0 => 'ui\\theme\\default\\pppoe-online.tpl',
      1 => 1530202811,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '238625b6893cadd8108-36069223',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'notify' => 0,
    '_admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6893cae4d426_88525026',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6893cae4d426_88525026')) {function content_5b6893cae4d426_88525026($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("pppsession").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-pppoe-session");
						document.forms['pppsession'].submit();
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
								<div class="panel-heading">PPPOE Online</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">User List</li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-list" title="ALL PPPOE USER"><i class="ion ion-ios-sunny"></i> PPPOE List</a></li>	
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-online" title="PPPOE ONLINE"><i class="ion ion-ios-sunny"></i> PPPOE Online</a></li>
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/pppoe-expire" title="PPPOE EXPIRE"><i class="ion ion-ios-sunny"></i> PPPOE Expire</a></li>
											<?php if (!strstr($_smarty_tpl->tpl_vars['_admin']->value['permission'],"_view")||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>		
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>	
											<?php }?>	
											</ul>
										</div>
									</div>							
									<hr>
									<div class="adv-table table-responsive">
										<form id="pppsession" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="pppoe-online">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Username</th>
														<th>Service</th>
														<th>Caller-ID</th>
														<th>IP Address</th>
														<th>Uptime</th>
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