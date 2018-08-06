<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:40:49
         compiled from "ui\theme\default\sections\primary-modal.tpl" */ ?>
<?php /*%%SmartyHeaderCode:162165b68a441a03de3-30881875%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd8bd88f5ba2614fd536cd452da47a4d1f5a02c34' => 
    array (
      0 => 'ui\\theme\\default\\sections\\primary-modal.tpl',
      1 => 1524850346,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '162165b68a441a03de3-30881875',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    '_admin' => 0,
    'user' => 0,
    'users' => 0,
    'mdate' => 0,
    'api' => 0,
    'mikrotik' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a441a88b07_78690588',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a441a88b07_78690588')) {function content_5b68a441a88b07_78690588($_smarty_tpl) {?>	<div>
	<!--modal report-daily -->
		<div class="modal fade" id="report-daily" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
			<div  class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Daily_Report'];?>
</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
reports/daily-view" >
							<div class="form-group">
								<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>
								<div class="col-md-6">
									<select class="form-control" id="stype" name="stype">
										<option value="" selected="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Transactions'];?>
 -</option>
										<option value="Hotspot">HOTSPOT</option>
										<option value="PPPOE">PPPOE</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Owner'];?>
</label>
								<div class="col-md-6">
									<select class="form-control select2" style="width: 100%" data-placeholder="- <?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Owners'];?>
 -" name="owner_id" name="owner_id">										
										<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
											<option value="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Owners'];?>
 -</option>
										<?php }?>	
										<?php  $_smarty_tpl->tpl_vars['users'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['users']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['user']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['users']->key => $_smarty_tpl->tpl_vars['users']->value){
$_smarty_tpl->tpl_vars['users']->_loop = true;
?>
											<option value="<?php echo $_smarty_tpl->tpl_vars['users']->value['id'];?>
" name="owner_id"><?php echo $_smarty_tpl->tpl_vars['users']->value['username'];?>
</option>
										<?php } ?>
									</select>
								</div>
							</div>					
							<hr/>
							<div>									
								<button style="width:140px" class="btn btn-primary waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Daily_Report'];?>
</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	
	<!--modal report-daily -->
	</div>	
	
	<div>
	<!--modal report-period -->
		<div class="modal fade" id="report-period" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
			<div  class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Period_Reports'];?>
</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
reports/period-view" >
			              	<div class="form-group">
			                	<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['From_Date'];?>
</label>
			                	<div style="padding-left:15px;padding-right: 15px" class="input-group date">
			                  		<div class="input-group-addon">
			                    		<i class="fa fa-calendar"></i>
			                  		</div>
			                  		<input type="text" class="form-control pull-right" id="datepicker1" value="" name="fdate">
			                	</div>
			              	</div>
			              	<div class="form-group">
			                	<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['To_Date'];?>
</label>
			                	<div style="padding-left:15px;padding-right: 15px" class="input-group date">
			                  		<div class="input-group-addon">
			                    		<i class="fa fa-calendar"></i>
			                  		</div>
			                  		<input type="text" class="form-control pull-right" id="datepicker2" value="<?php echo $_smarty_tpl->tpl_vars['mdate']->value;?>
" name="tdate">
			                	</div>
			              	</div>
							<div class="form-group">
								<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>
								<div class="col-md-6">
									<select class="form-control" id="stype" name="stype">
										<option value="" selected="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Transactions'];?>
 -</option>
										<option value="Hotspot">HOTSPOT</option>
										<option value="PPPOE">PPPOE</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Owner'];?>
</label>
								<div class="col-md-6">
									<select class="form-control select2" style="width: 100%" data-placeholder="- <?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Owners'];?>
 -" name="owner_id" name="owner_id">										
										<?php if ($_smarty_tpl->tpl_vars['_admin']->value['user_type']=='Admin'){?>
											<option value="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Owners'];?>
 -</option>
										<?php }?>	
										<?php  $_smarty_tpl->tpl_vars['users'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['users']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['user']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['users']->key => $_smarty_tpl->tpl_vars['users']->value){
$_smarty_tpl->tpl_vars['users']->_loop = true;
?>
											<option value="<?php echo $_smarty_tpl->tpl_vars['users']->value['id'];?>
" name="owner_id"><?php echo $_smarty_tpl->tpl_vars['users']->value['username'];?>
</option>
										<?php } ?>
									</select>
								</div>
							</div>				
							<hr/>
							<div>									
								<button style="width:140px" class="btn btn-primary waves-effect waves-light" type="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Period_Reports'];?>
</button>
							</div>
						</form>
					</div>
				</div>
			</div>				
		</div>
	<!--modal report-period -->	
	</div>
				
	<div>
	<!--modal select router-->			
		<div class="modal fade" id="select-router" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
			<div style="max-width:350px;" class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 style="font-size:16px;" class="modal-title" id="myModalLabel"><?php echo $_smarty_tpl->tpl_vars['_L']->value['All_Routers'];?>
</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
dashboard" >
							<div class="form-group">											
								<div style="width:100%;" class="col-md-6 text-center">
									<select class="form-control" name="router" style="width: 100%" data-placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
" onchange="this.form.submit()" required>
										<option value="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Routers'];?>
 -</option>											
										<?php  $_smarty_tpl->tpl_vars['mikrotik'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['mikrotik']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['api']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['mikrotik']->key => $_smarty_tpl->tpl_vars['mikrotik']->value){
$_smarty_tpl->tpl_vars['mikrotik']->_loop = true;
?>
											<option value="<?php echo $_smarty_tpl->tpl_vars['mikrotik']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['mikrotik']->value['name'];?>
</option>
										<?php } ?>
									</select>
								</div>
							</div>
						</form>
					</div>	
				</div>
			</div>
		</div>
	<!--modal select router-->	
	</div>
			<?php }} ?>