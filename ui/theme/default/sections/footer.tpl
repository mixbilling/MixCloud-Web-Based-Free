			<footer class="main-footer" style="position:fixed;bottom:0;width: 100%;z-index: 5">
				<strong>Copyright {date('Y')} &copy; <a href="https://hijaunet.id/">Mix.Cloud</a></strong>
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>
		{include file="sections/primary-modal.tpl"}
		<script src="{$_theme}/assets/jquery/jquery.min.js"></script>
		<script src="{$_theme}/assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="{$_theme}/assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<script src="{$_theme}/assets/plugins/select2/js/select2.full.min.js"></script>
		<script src="{$_theme}/assets/dist/js/custom.js"></script>				
		<script src="{$_theme}/assets/fastclick/fastclick.js"></script>
		<script src="{$_theme}/assets/plugins/datepicker/js/bootstrap-datepicker.min.js"></script>
		<!--dynamic table-->
		<script type="text/javascript" src="{$_theme}/assets/datatables/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="{$_theme}/assets/datatables/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="{$_theme}/assets/datatables/js/ip-address.js"></script>
		<script type="text/javascript" src="{$_theme}/assets/datatables/js/dataTables.custom.js"></script>
		<!--admin-lte-->
		<script src="{$_theme}/assets/dist/js/adminlte.min.js"></script>
		<script src="{$_theme}/assets/dist/js/demo.js"></script>
		<!-- fix search input select2 in modal -->
		<script>
			$.fn.modal.Constructor.prototype.enforceFocus = function() {};
		</script>
		<script type="text/javascript">
			//datatables sorting numbers         
			jQuery.extend( jQuery.fn.dataTableExt.oSort,{
			    "num-html-pre": function ( a ){
			        var x = String(a).replace( /<[\s\S]*?>/g, "" );
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
			var recharge = "{$_L['Recharge']}";
			function json_remove_db() {
				alert('{$_L['Remove_Alert']}');
			}
			function json_remove_api() {
				alert('{$_L['API_Remove_Alert']}');
			}
			function json_remove_recharge() {
				alert('{$_L['Recharge_Alert']}');
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
		{if isset($xfooter)}
			{$xfooter}
		{/if}

	</body>
</html>