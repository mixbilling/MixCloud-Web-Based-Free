<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:32:14
         compiled from "ui\theme\default\backup-restore-router.tpl" */ ?>
<?php /*%%SmartyHeaderCode:252605b68942ebc7982-03228850%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e3e044c62bdad459fd0d2a69d389a487db8e48ef' => 
    array (
      0 => 'ui\\theme\\default\\backup-restore-router.tpl',
      1 => 1530203477,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '252605b68942ebc7982-03228850',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_url' => 0,
    'backup_file' => 0,
    'file' => 0,
    '_L' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68942ec5c0b3_18126994',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68942ec5c0b3_18126994')) {function content_5b68942ec5c0b3_18126994($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Backup/Restore Router Configuration</div>							
								<div style="min-height:320px" class="panel-body">								
									<form  action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/restore-from-file" method="post" name="postform" enctype="multipart/form-data" >					
										<div class="form-group">								
											<div>
												<input required style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
												<button title="RESTORE ROUTER CONFIGURATION FROM BACKUP FILE" style="border-radius:0;width:125px;margin-top:8px;height:30px;" class="btn btn-success btn-xs" type="submit" name="restore-from-file"><i class="fa fa-upload"></i> Restore</button>
												<a title="BACKUP ROUTER CONFIGURATION" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/create-backup-file" style="border-radius:0;width:125px;height:30px;margin-top:8px;padding-top:4px;" class="btn btn-success btn-xs"><i class="fa fa-download"></i> Backup</a>											
											</div>
										</div>									
									</form>									
									<hr>
									<div class="adv-table table-responsive">
										<table  class="display table table-bordered table-bordered" id="dynamic-table">
											<thead>
												<tr style="font-size:13px;">
													<th>Name</th>
													<th>Type</th>
													<th>Size</th>
													<th>Creation Time</th>
													<th>Manage</th>
												</tr>
											</thead>
											<tbody>
											<?php  $_smarty_tpl->tpl_vars['file'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['file']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['backup_file']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['file']->key => $_smarty_tpl->tpl_vars['file']->value){
$_smarty_tpl->tpl_vars['file']->_loop = true;
?>
												<tr>
													<td><?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['file']->value['type'];?>
</td>													
													<td><?php echo $_smarty_tpl->tpl_vars['file']->value['size'];?>
</td>
													<td><?php echo $_smarty_tpl->tpl_vars['file']->value['creation-time'];?>
</td>
													<td>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/restore-backup-file&id=<?php echo $_smarty_tpl->tpl_vars['file']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['file']->value['.id'];?>
" title="RESTORE FROM THIS BACKUP" onClick="return confirm('RESTORE FROM THIS BACKUP : <?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
 ?')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-upload" aria-hidden="true"></a>
														<a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
mikrotik/remove-backup-file&id=<?php echo $_smarty_tpl->tpl_vars['file']->value['.id'];?>
&name=<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['file']->value['.id'];?>
" title="REMOVE THIS BACKUP : <?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
 ?" onClick="return confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>	
													</td>
												</tr>
											<?php } ?>
											</tbody>
										</table>
									</div>
									<hr>
									Note : *** Only ".backup" file type will be restored, not support for .RSC file type									
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>