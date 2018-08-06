{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("pppoe").setAttribute("action", "{$_url}mikrotik/enable-selected-pppoe");
					document.forms['pppoe'].submit();
				}
				function disable() {
					document.getElementById("pppoe").setAttribute("action", "{$_url}mikrotik/disable-selected-pppoe");
					document.forms['pppoe'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("pppoe").setAttribute("action", "{$_url}mikrotik/remove-selected-pppoe");
						document.forms['pppoe'].submit();
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
								<div class="panel-heading">PPPOE Users</div>	
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">User List</li>
												<li><a href="{$_url}mikrotik/pppoe-list" title="ALL PPPOE USER"><i class="ion ion-ios-sunny"></i> PPPOE List</a></li>	
												<li><a href="{$_url}mikrotik/pppoe-online" title="PPPOE ONLINE"><i class="ion ion-ios-sunny"></i> PPPOE Online</a></li>
												<li><a href="{$_url}mikrotik/pppoe-expire" title="PPPOE EXPIRE"><i class="ion ion-ios-sunny"></i> PPPOE Expire</a></li>
											{if !$_admin['permission']|strstr:"_view" || $_admin['user_type'] eq 'Admin'}	
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											{/if}	
											</ul>
										</div>
									</div>										
									<hr>
									<div class="adv-table table-responsive">
										<form id="pppoe" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="pppoe-list">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Username</th>
														<th>Address</th>
														<th>Service</th>
														<th>Profile</th>
														<th>Last Logged Out</th>
														<th>Status</th>
														<th style="max-width:150px">Comment</th>
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