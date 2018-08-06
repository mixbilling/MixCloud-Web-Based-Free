{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("static_lease").setAttribute("action", "{$_url}mikrotik/enable-selected-static");
					document.forms['static_lease'].submit();
				}
				function disable() {
					document.getElementById("static_lease").setAttribute("action", "{$_url}mikrotik/disable-selected-static");
					document.forms['static_lease'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("static_lease").setAttribute("action", "{$_url}mikrotik/remove-selected-static");
						document.forms['static_lease'].submit();
					}	
				}
				function deny() {
					document.getElementById("static_lease").setAttribute("action", "{$_url}mikrotik/deny-selected-static");
					document.forms['static_lease'].submit();
				}
				function allow() {
					document.getElementById("static_lease").setAttribute("action", "{$_url}mikrotik/allow-selected-static");
					document.forms['static_lease'].submit();
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
								<div class="panel-heading">DHCP Static</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:1px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Lease</li>
												<li><a href="{$_url}mikrotik/dynamic-lease" title="DYNAMIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Dynamic Lease</a></li>	
												<li><a href="{$_url}mikrotik/static-lease" title="STATIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Static Lease</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="allow();"  href="#allow" title="ALLOW SELECTED"> <i class="ion ion-ios-sunny"></i> Allow Selected</a></li>												
												<li><a onclick="deny();"  href="#deny" title="DENY SELECTED"><i class="ion ion-ios-sunny"></i> Deny Selected</a></li>												
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>					
									<hr>									
									<div class="adv-table table-responsive">
										<form id="static_lease" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>IP Address</th>
														<th>MAC Address</th>
														<th>Hostname</th>
														<th>Bound</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $dhcp_static as $static_ip}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$static_ip['.id']}">
														</td>
														<td>{$static_ip['address']}</td>
														<td>{$static_ip['mac-address']}</td>
														<td>{$static_ip['host-name']}</td>
													{if {$static_ip['status']} eq 'bound' }
														<td>Bound</td>
													{else}
														<td>Waiting</td>
													{/if}											
														<td>
													{if {$static_ip['disabled']} eq 'true' }
															<a href="{$_url}mikrotik/enable-static-lease&id={$static_ip['.id']}&mac={$static_ip['mac-address']}" id="{$static_ip['.id']}" title="ENABLE THIS DHCP LEASE"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
													{else}													
															<a href="{$_url}mikrotik/disable-static-lease&id={$static_ip['.id']}&mac={$static_ip['mac-address']}" id="{$static_ip['.id']}" title="DISABLE THIS DHCP LEASE"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
													{/if}
													{if {$static_ip['blocked']} eq 'false' }
															<a href="{$_url}mikrotik/block-static&id={$static_ip['.id']}&mac={$static_ip['mac-address']}" id="{$static_ip['.id']}" title="DENY THIS ADDRESS" style="width:65px;" class="btn btn-success btn-sm cdelete">Allow</a>
													{else}
															<a href="{$_url}mikrotik/unblock-static&id={$static_ip['.id']}&mac={$static_ip['mac-address']}" id="{$static_ip['.id']}" title="ALLOW THIS ADDRESS" style="width:65px;" class="btn btn-danger btn-sm cdelete">Deny</a>
													{/if}
														</td>
														<td>
															<a href="{$_url}mikrotik/dhcp-static-edit&id={$static_ip['.id']}&mac={$static_ip['mac-address']}" id="{$static_ip['.id']}" title="EDIT THIS ADDRESS" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>	
															<a href="{$_url}mikrotik/remove-static-lease&id={$static_ip['.id']}&mac={$static_ip['mac-address']}" id="{$static_ip['.id']}" onClick="return confirm('{$_L['API_Remove_Alert']}')" title="REMOVE THIS ADDRESS" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
														</td>
													</tr>
												{/foreach}
												</tbody>
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
