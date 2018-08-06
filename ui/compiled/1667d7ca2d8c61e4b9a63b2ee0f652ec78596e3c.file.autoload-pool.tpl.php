<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:42:54
         compiled from "ui\theme\default\autoload-pool.tpl" */ ?>
<?php /*%%SmartyHeaderCode:28805b6896ae19c583-35844619%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1667d7ca2d8c61e4b9a63b2ee0f652ec78596e3c' => 
    array (
      0 => 'ui\\theme\\default\\autoload-pool.tpl',
      1 => 1522568004,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28805b6896ae19c583-35844619',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    'd' => 0,
    'ds' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b6896ae1fe024_01888691',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6896ae1fe024_01888691')) {function content_5b6896ae1fe024_01888691($_smarty_tpl) {?><option value="">- <?php echo $_smarty_tpl->tpl_vars['_L']->value['Select_Pools'];?>
 -</option>
<?php  $_smarty_tpl->tpl_vars['ds'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ds']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['d']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->key => $_smarty_tpl->tpl_vars['ds']->value){
$_smarty_tpl->tpl_vars['ds']->_loop = true;
?>
	<option value="<?php echo $_smarty_tpl->tpl_vars['ds']->value['pool_name'];?>
"><?php echo $_smarty_tpl->tpl_vars['ds']->value['pool_name'];?>
 -> <?php echo $_smarty_tpl->tpl_vars['ds']->value['range_ip'];?>
</option>
<?php } ?><?php }} ?>