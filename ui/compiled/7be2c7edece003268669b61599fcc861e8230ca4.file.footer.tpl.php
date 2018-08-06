<?php /* Smarty version Smarty-3.1.13, created on 2018-08-07 02:39:54
         compiled from "ui\theme\default\sections\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:305785b68a40a93ffa2-94270604%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7be2c7edece003268669b61599fcc861e8230ca4' => 
    array (
      0 => 'ui\\theme\\default\\sections\\footer.tpl',
      1 => 1530200128,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '305785b68a40a93ffa2-94270604',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_theme' => 0,
    '_L' => 0,
    'xfooter' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5b68a40a98e1b2_95625209',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68a40a98e1b2_95625209')) {function content_5b68a40a98e1b2_95625209($_smarty_tpl) {?>			<footer class="main-footer" style="position:fixed;bottom:0;width: 100%;z-index: 5">
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
/assets/plugins/select2/js/select2.full.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/js/custom.js"></script>				
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/fastclick/fastclick.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/plugins/datepicker/js/bootstrap-datepicker.min.js"></script>
		<!--dynamic table-->
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/ip-address.js"></script>
		<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/datatables/js/dataTables.custom.js"></script>
		<!--admin-lte-->
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/js/adminlte.min.js"></script>
		<script src="<?php echo $_smarty_tpl->tpl_vars['_theme']->value;?>
/assets/dist/js/demo.js"></script>
		<!-- fix search input select2 in modal -->
		<script>
			$.fn.modal.Constructor.prototype.enforceFocus = function() {};
		</script>
		<script type="text/javascript">
			//datatables sorting numbers         
			jQuery.extend( jQuery.fn.dataTableExt.oSort,{
			    "num-html-pre": function ( a ){
			        var x = String(a).replace( /<[\s\S]*?<?php ?>>/g, "" );
			        return parseFloat( x );
			    },
			    "num-html-asc": function ( a, b ){
			        return ((a < b) ? -1 : ((a > b) ? 1 : 0));
			    },
			    "num-html-desc": function ( a, b ){
			        return ((a < b) ? 1 : ((a > b) ? -1 : 0));
			    }
			});

		    $(document).on('click', '#modal-form-submit', function (e) {
		        $('#modal-form').submit();
		    });
			$(document).on('change', ':file', function() {
				var input = $(this),
					numFiles = input.get(0).files ? input.get(0).files.length : 1,
					label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
				input.trigger('fileselect', [numFiles, label]);
			});
			$(document).ready( function() {
				$(':file').on('fileselect', function(event, numFiles, label) {
					console.log(numFiles);
					console.log(label);
				});
			});
		</script>
		<script>
			function toggle(source) {
			    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
			    for (var i = 0; i < checkboxes.length; i++) {
			        if (checkboxes[i] != source)
			            checkboxes[i].checked = source.checked;
			    }
			}
			var recharge = "<?php echo $_smarty_tpl->tpl_vars['_L']->value['Recharge'];?>
";
			function json_remove_db() {
				alert('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Remove_Alert'];?>
');
			}
			function json_remove_api() {
				alert('<?php echo $_smarty_tpl->tpl_vars['_L']->value['API_Remove_Alert'];?>
');
			}
			function json_remove_recharge() {
				alert('<?php echo $_smarty_tpl->tpl_vars['_L']->value['Recharge_Alert'];?>
');
			}			
		</script>
		<script>
		  	$(function () {
				//Initialize Select2 Elements
				$('.select2').select2()
			    //Date picker
			    $('#datepicker1').datepicker({
			     	autoclose:!0
			    })
			    $('#datepicker2').datepicker({
			     	autoclose:!0
			    })		    			
		  	});
		</script>
		<?php if (isset($_smarty_tpl->tpl_vars['xfooter']->value)){?>
			<?php echo $_smarty_tpl->tpl_vars['xfooter']->value;?>

		<?php }?>

	</body>
</html><?php }} ?>