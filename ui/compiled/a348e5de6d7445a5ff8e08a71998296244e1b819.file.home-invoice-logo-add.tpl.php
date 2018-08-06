<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:10:45
         compiled from "ui\theme\default\home-invoice-logo-add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:99705b68811516c871-34694163%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a348e5de6d7445a5ff8e08a71998296244e1b819' => 
    array (
      0 => 'ui\\theme\\default\\home-invoice-logo-add.tpl',
      1 => 1530198980,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99705b68811516c871-34694163',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notify' => 0,
    '_L' => 0,
    '_url' => 0,
    '_theme' => 0,
    '_c' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6881153220d8_71088326',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6881153220d8_71088326')) {function content_5b6881153220d8_71088326($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/home-header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<?php if (isset($_smarty_tpl->tpl_vars['notify']->value)){?>
							<?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

						<?php }?>
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice_Logo'];?>
</div>
								<div class="panel-body">
									<form action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
home-settings/invoice-logo-post" method="post" name="postform" enctype="multipart/form-data" >					
										<div class="form-group">								
											<div>
												<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
												<button style="border-radius:0;width:250px;margin-top:8px;height:30px;padding-bottom:2px;" class="btn btn-success btn-xs" type="submit" name="upload-image"><i class="fa fa-upload"></i> Upload Image</button>
											</div>
										</div>
									</form>		
									<hr/>
									<div class="form-group">
										<label style="padding-left: 0" class="col-md-12 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice_Image_Size'];?>
<br></label>
										<br>
									</div>
									<hr>
									<img style="max-width:100%;" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/images/<?php echo $_smarty_tpl->tpl_vars['_c']->value['show-logo'];?>
">
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					

<?php echo $_smarty_tpl->getSubTemplate ("sections/home-footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>