<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:57:19
         compiled from "ui\theme\default\script.tpl" */ ?>
<?php /*%%SmartyHeaderCode:101135b689a0f098784-85566829%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5bc80ead7943c2043f1e0945c81d61cb915325a9' => 
    array (
      0 => 'ui\\theme\\default\\script.tpl',
      1 => 1530202581,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '101135b689a0f098784-85566829',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
    'notify' => 0,
    'script' => 0,
    'scripts' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689a0f14c2a1_83882480',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689a0f14c2a1_83882480')) {function content_5b689a0f14c2a1_83882480($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<script>				
				function run() {
					document.getElementById("script").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/run-selected-script");
					document.forms['script'].submit();
				}
				function remove() {
					if(confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value["API_Remove_Alert"];?>
')){
						document.getElementById("script").setAttribute("action", "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-selected-script");
						document.forms['script'].submit();
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
								<div class="panel-heading">Script List</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Option_Menu'];?>
<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-script" data-toggle="modal" data-target="#add-script" title="ADD NEW SCRIPT"><i class="ion ion-ios-sunny"></i> New Script</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="run();"  href="#enable" title="RUN SELECTED"><i class="ion ion-ios-sunny"></i> Run Selected</a></li>	
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>	
									<hr>
									<div class="adv-table table-responsive">
										<form id="script" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Owner</th>
														<th>Last Started</th>
														<th>Run Count</th>
														<th>Action</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												<?php  $_smarty_tpl->tpl_vars['scripts'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['scripts']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['script']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['scripts']->key => $_smarty_tpl->tpl_vars['scripts']->value){
$_smarty_tpl->tpl_vars['scripts']->_loop = true;
?>
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
">
														</td>
														<td><?php echo $_smarty_tpl->tpl_vars['scripts']->value['name'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['scripts']->value['owner'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['scripts']->value['last-started'];?>
</td>
														<td><?php echo $_smarty_tpl->tpl_vars['scripts']->value['run-count'];?>
</td>											
														<td>
															<a style="width:65px" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/run-script&id=<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['scripts']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
" title="RUN THIS SCRIPT" class="btn btn-success btn-sm cdelete">Run Script</a>
														</td>	
														<td>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/edit-script&id=<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['scripts']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
" title="EDIT THIS SCRIPT" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-script&id=<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['scripts']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['scripts']->value['.id'];?>
" title="REMOVE THIS SCRIPT" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
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
				
		<!--modal add script -->
			<div class="modal fade" id="add-script" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Script</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/add-script" >
								<div class="form-group">
									<label class="col-md-2 control-label">Script Name</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="name" name="name" placeholder="script name" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Script Source</label>
									<div class="col-md-6">
										<textarea rows="5" name="source" id="source"  class="form-control" placeholder="write your script"></textarea>
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Script</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add script -->			

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>