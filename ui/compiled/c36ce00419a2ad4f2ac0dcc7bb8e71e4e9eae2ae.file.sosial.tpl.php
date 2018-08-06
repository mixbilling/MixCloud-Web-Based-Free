<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:27:27
         compiled from "ui\theme\default\sosial.tpl" */ ?>
<?php /*%%SmartyHeaderCode:235405b6884ffb6c7b0-82634017%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c36ce00419a2ad4f2ac0dcc7bb8e71e4e9eae2ae' => 
    array (
      0 => 'ui\\theme\\default\\sosial.tpl',
      1 => 1532017970,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '235405b6884ffb6c7b0-82634017',
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
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6884ffc2fce9_49444161',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6884ffc2fce9_49444161')) {function content_5b6884ffc2fce9_49444161($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>		
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["Remove_Alert"];?>
')){
						document.getElementById("sosial").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
sosial/remove-selected");
						document.forms['sosial'].submit();
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
								<div class="panel-heading">Manage Member Social Media</div>
								<div class="panel-body">									
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
 <span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="#" onclick="remove();" title="REMOVE SELECTED SOCIAL MEDIA"><i class="ion ion-trash-a"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Selected'];?>
</a></li>													
											</ul>
										</div>						
									</div>									
									<br>
									<hr>									
									<div class="adv-table table-responsive">
										<form id="sosial" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Picture</th>
														<th>User</th>
														<th>Gender</th>
														<th>Link</th>
														<th>Date Create</th>
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
														<td><center><img src="<?php echo $_smarty_tpl->tpl_vars['ds']->value['picture'];?>
" class="user-image" ></center></td>
														<td><b><?php echo $_smarty_tpl->tpl_vars['ds']->value['f_name'];?>
 <?php echo $_smarty_tpl->tpl_vars['ds']->value['l_name'];?>
</b><br><?php echo $_smarty_tpl->tpl_vars['ds']->value['email_id'];?>
</td>
														<td><b><?php echo $_smarty_tpl->tpl_vars['ds']->value['gender'];?>
</b><br><?php echo $_smarty_tpl->tpl_vars['ds']->value['oauth_pro'];?>
</td>
														<td><a href="<?php echo $_smarty_tpl->tpl_vars['ds']->value['url'];?>
" title="Link Profile" target="_blank">Link Profile <?php echo $_smarty_tpl->tpl_vars['ds']->value['f_name'];?>
</a></td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['created_date'];?>
</td>
														<td>
														<?php if ($_smarty_tpl->tpl_vars['ds']->value['owner_name']==$_smarty_tpl->tpl_vars['_admin']->value['username']||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
															<a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
sosial/delete/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="REMOVE THIS SOCIAL MEDIA" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
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
			
			

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>