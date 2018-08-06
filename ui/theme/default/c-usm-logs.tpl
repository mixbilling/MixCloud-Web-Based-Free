{include file="sections/header.tpl"}

			<script>
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("usm_logs").setAttribute("action", "{$_url}user-manager/remove-selected-logs");
						document.forms['usm_logs'].submit();
					}
				}					
			</script>

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Log Sessions</div>	
								{include file="sections/navbar-c-usermanager.tpl"}
								<div class="panel-body">
									<button onclick="remove();" style="width:170px;margin-top:4px;" class="btn btn-danger waves-effect" title="REMOVE SELECTED"><i class="ion ion-android-delete"> </i> Remove Selected</button>								
									<hr/>
									<div class="adv-table table-responsive">
										<form id="usm_logs" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="c-usm-logs">
												<thead>
													<tr style="font-size:13px;">
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>User</th>
														<th>Customer</th>
														<th>Station ID</th>
														<th>User IP</th>
														<th>Host IP</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

{include file="sections/footer.tpl"}