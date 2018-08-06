<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 00:11:55
         compiled from "ui\theme\default\error.tpl" */ ?>
<?php /*%%SmartyHeaderCode:124505b68815b7f4830-32331262%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '78eddcad5de04b910d2efa60f918594e0f4c7357' => 
    array (
      0 => 'ui\\theme\\default\\error.tpl',
      1 => 1530802013,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '124505b68815b7f4830-32331262',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68815b836ec5_74818377',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68815b836ec5_74818377')) {function content_5b68815b836ec5_74818377($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


			<div class="content-wrapper">
				<section class="content-header">
					<h1>
						No Connection To Router
					</h1>
				</section>
			
				<section class="content">
					<div class="callout callout-success">
						<h4>Tips !</h4>
						<ul>
							<li>Check connection from this server to your router</li>
							<li>Check router info like IP Address, Port or Username and Password</li>
							<li>Be sure you API Port Service not blocking by your firewall</li>
						</ul>
					</div>
				</section>
			</div>

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
			<?php }} ?>