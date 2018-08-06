<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:10:46
         compiled from "ui\theme\default\home-users.tpl" */ ?>
<?php /*%%SmartyHeaderCode:164465b68811649d340-15460050%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5cdf0b4720fc9eb9621c2ab452eb52da684aa49f' => 
    array (
      0 => 'ui\\theme\\default\\home-users.tpl',
      1 => 1530199086,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '164465b68811649d340-15460050',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_L' => 0,
    'd' => 0,
    'ds' => 0,
    '_url' => 0,
    '_admin' => 0,
    'r' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6881166990b9_36733190',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6881166990b9_36733190')) {function content_5b6881166990b9_36733190($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage_Administrator'];?>
</div>
								<div class="panel-body">
									<a class="btn btn-success waves-effect" href="#add-administrator" data-toggle="modal" data-target="#add-administrator" title="ADD NEW ADMIN USER OR SALES USER"><i class="ion ion-android-add"> </i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Administrator'];?>
</a>
									<hr/>
									<div class="adv-table table-responsive">								
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-0">
											<thead>
												<tr>	
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Full_Name'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Advance_Permission'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Last_Login'];?>
</th>
													<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
												</tr>
											</thead>
											<tbody>
											<?php  $_smarty_tpl->tpl_vars['ds'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ds']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['d']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->key => $_smarty_tpl->tpl_vars['ds']->value){
$_smarty_tpl->tpl_vars['ds']->_loop = true;
?>
												<tr>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['fullname'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['username'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['user_type'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['router_name'];?>
</td>
												<?php if ($_smarty_tpl->tpl_vars['ds']->value['permission']=='Full Administrator'||$_smarty_tpl->tpl_vars['ds']->value['permission']=='Default Permission'){?>	
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['permission'];?>
</td>
												<?php }else{ ?>
													<td><a href="#" title="<?php echo strtoupper($_smarty_tpl->tpl_vars['ds']->value['permission']);?>
"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Custom'];?>
</a></td>
												<?php }?>	
													<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['last_login'];?>
</td>
													<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/users-edit/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="EDIT THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														<?php if (($_smarty_tpl->tpl_vars['_admin']->value['username'])!=($_smarty_tpl->tpl_vars['ds']->value['username'])){?>
															<a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/users-delete/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="REMOVE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
														<?php }?>
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
					
			<!--modal add admin -->
				<div class="modal fade" id="add-administrator" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_New_Administrator'];?>
</h4>
							</div>
							<div class="modal-body">
								<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/users-post" enctype="multipart/form-data">
									<div class="tabbable"> <!-- Only required for left/right tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#account" data-toggle="tab"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</a></li>
											<li><a href="#permission" data-toggle="tab"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Advance_Permission'];?>
</a></li>
											<li><a href="#photo" data-toggle="tab"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Photo'];?>
</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="account">
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="username" name="username" placeholder="username">
														</div>
													</div>
												</div>
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="fullname" name="fullname" placeholder="fullname">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['User_Type'];?>
</label>
													<div class="col-md-6">
														<select name="user_type" id="user_type" class="form-control">
															<option id="router_select" selected>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_User_Type'];?>
 -</option>
															<option id="admin" name="admin" value="Admin"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Full_Administrator'];?>
</option>
															<option id="sales" name="sales" value="Sales"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Sales'];?>
</option>
														</select>
													</div>
												</div>
												<div style="display:none;" class="form-group" id="router_name">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</label>
													<div class="col-md-6">
														<select id="router_name" name="router_name" class="form-control">
															<option value="" selected>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
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
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Password'];?>
</label>
														<div class="col-md-6">
															<input type="password" class="form-control" id="password" name="password" placeholder="password">
														</div>
													</div>
												</div>
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Confirm_Password'];?>
</label>
														<div class="col-md-6">
															<input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="repeat password">
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="permission">
												<div style="display:none;" class="form-group" id="full_admin_label">
													<label style="text-align:center" class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Admin_Permission_Note'];?>
</label>
												</div>												
												<div style="display:none;" class="form-group" id="permission_label">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Permission_Note'];?>
</label>
												</div>
												<div style="display:none;" class="form-group" id="permission1">							
													<div class="col-sm-6">	
														<input id="hotspot_manage" type="checkbox" name="permission[]" value="api_hotspot_manage"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Hotspot_Manage'];?>
<br>
														<input id="hotspot_view" type="checkbox" name="permission[]" value="api_hotspot_view"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Hotspot_View'];?>
<br>
														<input id="pppoe_manage" type="checkbox" name="permission[]" value="api_pppoe_manage"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['API_PPPOE_Manage'];?>

													</div>	
													<div class="col-sm-6">	
														<input id="pppoe_view" type="checkbox" name="permission[]" value="api_pppoe_view"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['API_PPPOE_View'];?>
<br>
														<input type="checkbox" name="permission[]" value="create_own_profile"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Allow_Create_Profile'];?>

													</div>
												</div>												
											</div>
											<div class="tab-pane" id="photo">
												<div class="form-group">
													<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Photo_Image_Size'];?>
<br></label>
													<div style="margin-top:10px" class="col-md-6">					
														<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
													</div>
												</div>											
											</div>										
										</div>
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Create_Account'];?>
</button>
										</div>										
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
			<!--modal add admin -->	

<script>
$('#hotspot_manage').change(function() {
    $('#hotspot_view').attr('disabled',this.checked)
});

$('#pppoe_manage').change(function() {
    $('#pppoe_view').attr('disabled',this.checked)
});
</script>			

<?php echo $_smarty_tpl->getSubTemplate ("sections/home-footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>