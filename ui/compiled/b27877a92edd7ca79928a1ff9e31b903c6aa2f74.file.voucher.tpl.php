<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:28:51
         compiled from "ui\theme\default\voucher.tpl" */ ?>
<?php /*%%SmartyHeaderCode:110635b68a173a1b0b1-00483906%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b27877a92edd7ca79928a1ff9e31b903c6aa2f74' => 
    array (
      0 => 'ui\\theme\\default\\voucher.tpl',
      1 => 1533582224,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '110635b68a173a1b0b1-00483906',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    '_c' => 0,
    '_admin' => 0,
    'o' => 0,
    'os' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a173bff736_62708860',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a173bff736_62708860')) {function content_5b68a173bff736_62708860($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function print() {
					document.getElementById("voucher").setAttribute("target", "_blank");
					document.getElementById("voucher").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/selected-voucher-print");						
					document.forms['voucher'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["Remove_Alert"];?>
')){
						document.getElementById("voucher").removeAttribute("target", "_blank");
						document.getElementById("voucher").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/remove-selected");
						document.forms['voucher'].submit();
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
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage_Vouchers'];?>
</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="#add-voucher" data-toggle="modal" data-target="#add-voucher" title="GENERATE NEW VOUCHER"><i class="ion ion-plus"> </i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_Voucher'];?>
</a></li>
												<li><a href="#print-voucher" data-toggle="modal" data-target="#print-voucher" title="PRINT ALL NEW VOUCHER" target="_blank"><i class="ion ion-android-print"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Voucher'];?>
</a></li>	
												<li><a href="#print-prefix" data-toggle="modal" data-target="#print-prefix" title="PRINT VOUCHER BASED ON PREFIX"><i class="ion ion-android-print"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Prefix'];?>
</a></li>
												<li><a href="#print-selected" onclick="print();" title="PRINT SELECTED VOUCHER"><i class="ion ion-android-print"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Selected'];?>
</a></li>
												<li><a href="#remove-selected" onclick="remove();" title="REMOVE SELECTED VOUCHER"><i class="ion ion-trash-a"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Selected'];?>
</a></li>													
											</ul>
										</div>						
									</div>
									<br>
									<br>
									Note :
									<ul>
										<li><?php echo $_smarty_tpl->tpl_vars['_L']->value['Note_1'];?>
</li>
									<?php if ($_smarty_tpl->tpl_vars['_c']->value['voucher_report']=='on-create'){?>
										<li><a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
');" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/delete-new-voucher" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Note_2'];?>
"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_New_Voucher'];?>
</a> , <?php echo $_smarty_tpl->tpl_vars['_L']->value['Note_2'];?>
</li>
										<li><a onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
');" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/delete-old-voucher" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Note_3'];?>
"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Old_Voucher'];?>
</a> , <?php echo $_smarty_tpl->tpl_vars['_L']->value['Note_3'];?>
</li>
									<?php }?>	
									</ul>
									<hr>
									<div class="adv-table table-responsive">
										<form id="voucher" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/selected-voucher-print" >
											<table  class="display table table-bordered table-bordered" id="voucher-list">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Id</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Owner'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Plan_Name'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Code_Voucher'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Password'];?>
</th>
														<th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Created_Date'];?>
</th>
														<th style="max-width:130px">Status - <?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
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
				
			<div>
		<!--modal add voucher -->
			<div class="modal fade" id="add-voucher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Generate_Vouchers'];?>
</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/voucher-post" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label style="margin-top:-4px;" class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>
										<div style="margin-top:3px;" class="col-md-6">
											<input type="radio" id="Hot" name="type" value="Hotspot"> HOTSPOT
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
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
								</div>					
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Routers'];?>
</label>
										<div class="col-md-6">
											<select id="server" name="server" class="form-control">
												<option value=''>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
 -</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Service_Plan'];?>
</label>
										<div class="col-md-6">
											<select class="form-control select2" name="plan" id="plan" style="width: 100%" data-placeholder="- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Plans'];?>
 -" required>
												<option value=''>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Plans'];?>
 -</option>
											</select>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Login_Method'];?>
</label>
									<div class="col-md-6">
										<select id="loginmethod" name="loginmethod" class="form-control">
											<option value="" selected>- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Login_Method'];?>
 -</option>
											<option value="voucher_code" name="voucher_code"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Voucher_Code'];?>
</option>
											<option value="username_and_password" name="username_and_password"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username_and_Password'];?>
</option>
										</select>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Voucher_Prefix'];?>
</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="userprefix" placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Insert_Voucher_Prefix'];?>
">
										</div>
									</div>
								</div>					
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Number_of_Vouchers'];?>
</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="numbervoucher" value="1">
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Length_Code'];?>
</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="lengthcode" value="6">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">			
									<div class="form-group">
										<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Code_Combination'];?>
</label>
										<div class="col-md-6">
											<select id="combination" name="combination" class="form-control">
												<option value="type1" selected><?php echo $_smarty_tpl->tpl_vars['_L']->value['Uppercase_Numbers'];?>
</option>
												<option value="type2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Lowercase_Numbers'];?>
</option>
												<option value="type3"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Uppercase'];?>
</option>
												<option value="type4"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Lowercase'];?>
</option>											</select>
										</div>
									</div>
								</div>						
								<div  style="margin-bottom:-10px" class="form-group"></div>	
								<hr>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" type="submit">Generate</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add voucher -->	
			<div>
				
			<div>
		<!--modal print-prefix -->
			<div class="modal fade" id="print-prefix" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Based_Prefix'];?>
</h4>
						</div>
						<div class="modal-body">
							<form target="_blank" id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/prefix-voucher-print" >
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
								<div class="form-group">
									<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Voucher_Prefix'];?>
</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="voucher_prefix" placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Voucher_Prefix_which_to_be_Print'];?>
">
									</div>
								</div>					
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" type="submit" name="prefix"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Voucher'];?>
</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal print-prefix -->	
			<div>

			<div>
		<!--modal print-voucher -->
			<div class="modal fade" id="print-voucher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Voucher'];?>
</h4>
						</div>
						<div class="modal-body">
							<form target="_blank" id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
manage-voucher/print-voucher" >
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
								<div class="form-group">
									<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>
									<div class="col-md-6">
										<select class="form-control" id="type" name="type" required>
											<option value="" selected="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Type'];?>
 -</option>
											<option value="Hotspot">HOTSPOT</option>
											<option value="PPPOE">PPPOE</option>
										</select>
									</div>
								</div>				
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" type="submit" name="print-voucher"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Print_Voucher'];?>
</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal print-voucher -->	
			<div>					

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>