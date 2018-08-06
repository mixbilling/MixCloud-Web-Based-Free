<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:40:49
         compiled from "ui\theme\default\sections\home-footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:277075b68a4419cd2e2-42039384%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd5e209388da6a885009e488933ce2f100938f268' => 
    array (
      0 => 'ui\\theme\\default\\sections\\home-footer.tpl',
      1 => 1530198678,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '277075b68a4419cd2e2-42039384',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_theme' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a4419f0564_70215903',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a4419f0564_70215903')) {function content_5b68a4419f0564_70215903($_smarty_tpl) {?>			<footer class="main-footer" style="position:fixed;bottom:0;width: 100%">
				<strong>Copyright <?php echo date('Y');?>
 &copy; <a href="https://hijaunet.id/">Mix.Cloud</a></strong>
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>

		<?php echo $_smarty_tpl->getSubTemplate ("sections/primary-modal.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/jquery/jquery.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/fastclick/fastclick.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/js/adminlte.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/js/demo.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/js/custom.js"></script>
		<!--dynamic table-->
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/dataTables.custom.js"></script>
	</body>
</html>
<?php }} ?>