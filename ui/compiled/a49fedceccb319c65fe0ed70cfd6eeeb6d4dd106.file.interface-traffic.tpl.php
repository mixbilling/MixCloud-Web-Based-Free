<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 01:25:04
         compiled from "ui\theme\default\interface-traffic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:60375b6892802dbe44-86465507%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a49fedceccb319c65fe0ed70cfd6eeeb6d4dd106' => 
    array (
      0 => 'ui\\theme\\default\\interface-traffic.tpl',
      1 => 1525247984,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '60375b6892802dbe44-86465507',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'iface_name' => 0,
    '_theme' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b689280339a64_43280712',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689280339a64_43280712')) {function content_5b689280339a64_43280712($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<section class="panel">
								<header class="panel-heading">
									<b>TRAFFIC &nbsp;&nbsp;&nbsp;</b> <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp; <?php echo $_smarty_tpl->tpl_vars['iface_name']->value;?>

								</header>				
								<div class="panel-body">
									<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/plugins/highchart/js/graph.js" defer></script>
									<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/plugins/highchart/js/highcharts.js" defer></script>
									<div class="row">
										<div class="col-sm-9">
											<div id="graph" style="min-width:200px;height:300px;margin:0 auto"></div>
										</div>
										<div class="col-sm-3">
											<input name="interface" id="interface" type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['iface_name']->value;?>
">
											<div class="mini-stat bgfafafa clearfix" style="text-align: center">
												<span class="mini-stat-icon pink"><i style="font-size:50px;color:#2196F3" class="fa fa-cloud-upload"></i></span>
												<div class="mini-stat-info">
													<span><div id="graph-byte-tx"></div></span>
													TX /BYTE
												</div>
											</div>
											<hr>
											<div class="mini-stat bgfafafa clearfix" style="text-align: center">
												<span class="mini-stat-icon orange"><i style="font-size:50px;color:#FF0000" class="fa fa-cloud-download"></i></span>
												<div class="mini-stat-info">
													<span><div id="graph-byte-rx"></div></span>
													RX /BYTE
												</div>
											</div>			
										</div>
									</div>
									<hr>
									<div class="btn-group">
										<button onclick="window.history.back();" style="width:90px;" class="btn btn-success waves-effect waves-light" style="background-color: #008B8B ;border:1px solid #008B8B;" class="btn btn-success"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> BACK</button>
									</div>
								</div>					
							</section>	
						</div>
					</div>	
				</section>
			</div>							

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>