{include file="sections/header.tpl"}

			<script>
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("usm_session").setAttribute("action", "{$_url}mikrotik/remove-selected-session");
						document.forms['usm_session'].submit();
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
								<div class="panel-heading">Sessions List</div>	
								{include file="sections/navbar-usermanager.tpl"}
								<div class="panel-body">
									<button onclick="remove();" style="width:170px;margin-top:4px;" class="btn btn-danger waves-effect" title="REMOVE SELECTED"><i class="ion ion-android-delete"> </i> Remove Selected</button>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="usm_session" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="usm-sessions">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Customer</th>
														<th>User</th>													
														<th>Station ID</th>
														<th>User IP</th>
														<th>Host IP</th>
														<th>From Time</th>
														<th>Till Time</th>
														<th>Uptime</th>
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
