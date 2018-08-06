{include file="sections/header.tpl"}

			<script>
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("hs_expire").setAttribute("action", "{$_url}mikrotik/remove-selected-hs_expire");
						document.forms['hs_expire'].submit();
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
								<div class="panel-heading">{$_L['Hotspot_Expire']}</div>
								<div class="panel-body">	
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">User List</li>
												<li><a href="{$_url}mikrotik/hotspot-list" title="ALL HOTSPOT USER"><i class="ion ion-ios-sunny"></i> Hotspot List</a></li>	
												<li><a href="{$_url}mikrotik/hotspot-online" title="HOTSPOT ONLINE"><i class="ion ion-ios-sunny"></i> Hotspot Online</a></li>
												<li><a href="{$_url}mikrotik/hotspot-expire" title="HOTSPOT EXPIRE"><i class="ion ion-ios-sunny"></i> Hotspot Expire</a></li>
											{if !$_admin['permission']|strstr:"_view" || $_admin['user_type'] eq 'Admin'}
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="Remove Selected"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											{/if}	
											</ul>
										</div>
									</div>								
									<hr>		
									<div class="adv-table table-responsive">
										<form id="hs_expire" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="hotspot-expire">
												<thead>
													<tr>
														<th  class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Username</th>
														<th>Profile</th>
														<th>Uptime</th>
														<th>Time Left</th>
														<th>Limit Data</th>
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
