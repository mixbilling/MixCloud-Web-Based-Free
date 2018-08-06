<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:09:29
         compiled from "ui\theme\default\pppoe.tpl" */ ?>
<?php /*%%SmartyHeaderCode:242695b689ce9d51811-81842692%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e076330201711d62d4e2a5ce6365487ef03bbbf' => 
    array (
      0 => 'ui\\theme\\default\\pppoe.tpl',
      1 => 1530202875,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '242695b689ce9d51811-81842692',
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
    '_c' => 0,
    'paginator' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689ce9e5f0d2_45552255',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689ce9e5f0d2_45552255')) {function content_5b689ce9e5f0d2_45552255($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>		
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["Remove_Alert"];?>
')){
						document.getElementById("pppoe").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/remove-selected-pppoe");
						document.forms['pppoe'].submit();
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
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['PPPOE_Plans'];?>
</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/pppoe-add" title="ADD NEW PPPOE PROFILE"><i class="ion ion-plus"> </i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Plan'];?>
</a>
												<li><a href="#" onclick="remove();" title="REMOVE SELECTED PPPOE PROFILE"><i class="ion ion-trash-a"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Selected'];?>
</a></li>													
											</ul>
										</div>						
									</div>									
									<br>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="pppoe" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Name'];?>
</th>
														<th>Bandwidth</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Price'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Validity'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['IP_Pool'];?>
</th>
														<th>Local Address</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Owner'];?>
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
														<td align="center">													
															<?php if ($_smarty_tpl->tpl_vars['ds']->value['owner_name']==$_smarty_tpl->tpl_vars['_admin']->value['username']||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
																<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
">
															<?php }else{ ?>	
																<input disabled type="checkbox">
															<?php }?>
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['name_plan'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['name_bw'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['price'],2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</td>
													<?php if ($_smarty_tpl->tpl_vars['ds']->value['validity']!=0){?>	
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['validity'];?>
 <?php if ($_smarty_tpl->tpl_vars['ds']->value['validity_unit']=='H'){?> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Hours'];?>
 <?php }elseif($_smarty_tpl->tpl_vars['ds']->value['validity_unit']=='D'){?> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Days'];?>
 <?php }else{ ?> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Months'];?>
<?php }?></td>
													<?php }else{ ?>
														<td>Unlimited</td>
													<?php }?>	
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['pool'];?>
</td>
													<?php if ($_smarty_tpl->tpl_vars['ds']->value['local_address']==''){?>	
														<td>Default</td>
													<?php }else{ ?>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['local_address'];?>
</td>
													<?php }?>	
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['routers'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['ds']->value['owner_name'];?>
</td>
														<td>
														<?php if ($_smarty_tpl->tpl_vars['ds']->value['owner_name']==$_smarty_tpl->tpl_vars['_admin']->value['username']||$_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/pppoe-edit/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="EDIT THIS PPPOE PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>										
															<a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
')" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
services/pppoe-delete/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" title="REMOVE THIS PPPOE PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
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
								<?php echo $_smarty_tpl->tpl_vars['paginator']->value['contents'];?>

								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>