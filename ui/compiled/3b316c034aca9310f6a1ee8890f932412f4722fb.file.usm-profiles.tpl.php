<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:24:18
         compiled from "ui\theme\default\usm-profiles.tpl" */ ?>
<?php /*%%SmartyHeaderCode:103695b6892524e8cd2-06126093%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3b316c034aca9310f6a1ee8890f932412f4722fb' => 
    array (
      0 => 'ui\\theme\\default\\usm-profiles.tpl',
      1 => 1530202473,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '103695b6892524e8cd2-06126093',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'notify' => 0,
    'profiles' => 0,
    'profile' => 0,
    'c_permissions' => 0,
    'owner_name' => 0,
    'usm_customers' => 0,
    'owner' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68925272ede4_59572345',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68925272ede4_59572345')) {function content_5b68925272ede4_59572345($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("usm_profile").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-profiles");
						document.forms['usm_profile'].submit();
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
								<div class="panel-heading">Profiles List</div>	
								<?php echo $_smarty_tpl->getSubTemplate ("sections/navbar-usermanager.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-profiles-add" data-toggle="modal" data-target="#usm-profiles-add" title="ADD NEW PROFILE"><i class="ion ion-ios-sunny"></i> New Profile</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>											
											</ul>
										</div>
									</div>
									<hr>
									<div class="adv-table table-responsive">
										<form name="usm_profile" id="usm_profile" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Owner</th>													
														<th>Validity</th>
														<th>Shared</th>													
														<th>Start At</th>
														<th>Price</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['profile'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['profile']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['profiles']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['profile']->key => $_smarty_tpl->tpl_vars['profile']->value){
$_smarty_tpl->tpl_vars['profile']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['profile']->value['.id'];?>
">
														</td>												
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['name'];?>
</td>													
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['owner'];?>
</td>
													<?php if ($_smarty_tpl->tpl_vars['profile']->value['validity']=='0s'){?>	
														<td>Unlimited</td>
													<?php }else{ ?>
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['validity'];?>
</td>
													<?php }?>	
														
													<?php if ($_smarty_tpl->tpl_vars['profile']->value['override-shared-users']=='off'){?>
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['override-shared-users'];?>
</td>
													<?php }else{ ?>
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['override-shared-users'];?>
 Devices</td>
													<?php }?>	
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['starts-at'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['profile']->value['price'];?>
</td>
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-profiles-edit&id=<?php echo $_smarty_tpl->tpl_vars['profile']->value['.id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['profile']->value['.id'];?>
" title="EDIT THIS PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>													
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/usm-profiles-remove&id=<?php echo $_smarty_tpl->tpl_vars['profile']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['profile']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['profile']->value['.id'];?>
" title="REMOVE THIS PROFILE" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
				
		<!--modal usm-profiles-add -->
			<div class="modal fade" id="usm-profiles-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Profile</h4>
						</div>
						<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
user-manager/c-profiles-add" >
							<div class="form-group">
								<label class="col-md-2 control-label">Name</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="name" name="name" placeholder="profile name" required>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">	
								<div class="form-group">
									<label class="col-md-2 control-label">Owner</label>
									<div class="col-md-6">
										<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="select owner" required>
										<option></option>
											<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['c_permissions']->value;?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1!='owner'){?>
												<option value="<?php echo $_smarty_tpl->tpl_vars['owner_name']->value;?>
" name=><?php echo $_smarty_tpl->tpl_vars['owner_name']->value;?>
</option>
											<?php }?>								
											<?php  $_smarty_tpl->tpl_vars['owner'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['owner']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['usm_customers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['owner']->key => $_smarty_tpl->tpl_vars['owner']->value){
$_smarty_tpl->tpl_vars['owner']->_loop = true;
?>
												<option value="<?php echo $_smarty_tpl->tpl_vars['owner']->value['login'];?>
" name=><?php echo $_smarty_tpl->tpl_vars['owner']->value['login'];?>
</option>
											<?php } ?>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">	
								<div class="form-group">
									<label class="col-md-2 control-label">Validity</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="validity_time" name="validity_time" placeholder="validity time" required>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">	
								<div class="form-group">
									<label class="col-md-2 control-label">Validity Unit</label>
									<div class="col-md-6">
										<select class="form-control" id="validity_unit" name="validity_unit">
											<option value="h">HOURS</option>
											<option value="d">DAYS</option>
											<option value="w">WEEKS</option>								
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">		
								<div class="form-group">
									<label class="col-md-2 control-label">Start At</label>
									<div class="col-md-6">
										<select id="starts_at" name="starts_at" class="form-control">										
											<option value="logon" selected>On Login</option>
											<option value="now">Now</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">		
								<div class="form-group">
									<label class="col-md-2 control-label">Shared Users</label>
									<div class="col-md-6">
										<select id="shared_users" name="shared_users" class="form-control">
											<option value="off" selected>OFF</option>									
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">		
								<div class="form-group">
									<label class="col-md-2 control-label">Plan Price</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="price" name="price" placeholder="plan price" value="0.00">
									</div>
								</div>
							</div>
							<div  style="margin-bottom:-10px" class="form-group"></div>	
							<hr>
							<div>									
								<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Profile</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		<!--modal usm-profiles-add -->				

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>