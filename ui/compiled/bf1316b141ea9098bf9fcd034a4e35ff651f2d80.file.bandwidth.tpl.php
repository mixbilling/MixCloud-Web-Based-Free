<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:43:11
         compiled from "ui\theme\default\bandwidth.tpl" */ ?>
<?php /*%%SmartyHeaderCode:313535b6896bf84b460-57689312%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bf1316b141ea9098bf9fcd034a4e35ff651f2d80' => 
    array (
      0 => 'ui\\theme\\default\\bandwidth.tpl',
      1 => 1530203460,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '313535b6896bf84b460-57689312',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'notify' => 0,
    'd' => 0,
    'ds' => 0,
    '_admin' => 0,
    'o' => 0,
    'os' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6896bf9ed442_00568159',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6896bf9ed442_00568159')) {function content_5b6896bf9ed442_00568159($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>		
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["Remove_Alert"];?>
')){
						document.getElementById("bandwidth").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
bandwidth/remove-selected");
						document.forms['bandwidth'].submit();
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
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Bandwidth_Plans'];?>
</div>
								<div class="panel-body">									
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
 <span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="#add-bandwidth" data-toggle="modal" data-target="#add-bandwidth" title="ADD NEW BANDWIDTH"><i class="ion ion-plus"> </i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Bandwidth'];?>
</a>
												<li><a href="#" onclick="remove();" title="REMOVE SELECTED BANDWIDTH"><i class="ion ion-trash-a"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Selected'];?>
</a></li>													
											</ul>
										</div>						
									</div>									
									<br>
									<hr>									
									<div class="adv-table table-responsive">
										<form id="bandwidth" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['BW_Name'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Rate_Download'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Rate_Upload'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Owner'];?>
</th>
														<th class="text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
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
														<td class="text-center">
														<?php if ($_smarty_tpl->tpl_vars['ds']->value['owner_name']==$_smarty_tpl->tpl_vars['_admin']->value['username']||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
">
														<?php }else{ ?>
															<input disabled type="checkbox">
														<?php }?>	
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['name_bw'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['rate_down'];?>
 <?php echo $_smarty_tpl->tpl_vars['ds']->value['rate_down_unit'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['rate_up'];?>
 <?php echo $_smarty_tpl->tpl_vars['ds']->value['rate_up_unit'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['owner_name'];?>
</td>
														<td>
														<?php if ($_smarty_tpl->tpl_vars['ds']->value['owner_name']==$_smarty_tpl->tpl_vars['_admin']->value['username']||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
bandwidth/edit/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="EDIT THIS BANDWIDTH" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>												
															<a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
bandwidth/delete/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="REMOVE THIS BANDWIDTH" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
														<?php }else{ ?>
															<a href="#" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-ban disabled" aria-hidden="true"></a>
														<?php }?>
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
			
			<!--modal add bandwidth -->
				<div class="modal fade" id="add-bandwidth" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
					<div  class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Bandwidth'];?>
</h4>
							</div>
							<div class="modal-body">				
								<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
bandwidth/add-post">
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name"  placeholder="bandwidth-name">
										</div>
									</div>
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
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label class="col-md-2 control-label">Download</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="rate_down" name="rate_down" placeholder="download-rate, example 512">
											</div>
										</div>
									</div>						
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">Unit</label>
											<div class="col-md-6">
												<select class="form-control" id="rate_down_unit" name="rate_down_unit">
													<option value="Kbps">Kbps</option>
													<option value="Mbps">Mbps</option>
												</select>
											</div>
										</div>
									</div>						
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">Upload</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="rate_up" name="rate_up" placeholder="upload-rate, example 128">
											</div>
										</div>
									</div>							
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">Unit</label>
											<div class="col-md-6">
												<select class="form-control" id="rate_up_unit" name="rate_up_unit">
													<option value="Kbps">Kbps</option>
													<option value="Mbps">Mbps</option>
												</select>
											</div>
										</div>
									</div>
									<div  style="margin-bottom:-10px" class="form-group"></div>	
									<hr>
									<div>
										<button class="btn btn-success waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Bandwidth'];?>
</button>
									</div>	
								</form>
							</div>
						</div>
					</div>
				</div>	
			<!--modal add bandwidth -->

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>