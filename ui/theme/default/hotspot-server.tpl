{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("hotspot_server").setAttribute("action", "{$_url}mikrotik/enable-selected-hotspot_server");
					document.forms['hotspot_server'].submit();
				}
				function disable() {
					document.getElementById("hotspot_server").setAttribute("action", "{$_url}mikrotik/disable-selected-hotspot_server");
					document.forms['hotspot_server'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("hotspot_server").setAttribute("action", "{$_url}mikrotik/remove-selected-hotspot_server");
						document.forms['hotspot_server'].submit();
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
								<div class="panel-heading">Hotspot Server</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-server" data-toggle="modal" data-target="#add-server" title="ADD NEW HOTSPOT SERVER"><i class="ion ion-ios-sunny"></i> New Hotspot Server</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="hotspot_server" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th  class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Interface</th>
														<th>Address Pool</th>
														<th>Server Profile</th>
														<th>IP Address</th>													
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $server_list as $server}
													<tr>
														<td align="center">
															<input type="checkbox" name="checked[]" value="{$server['.id']}">
														</td>
														<td>{$server['name']} - {$server['addresses-per-mac']} MAC</td>												
														<td>{$server['interface']}</td>
														<td>{$server['address-pool']}</td>
														<td>{$server['profile']}</td>
														<td>{$server['ip-of-dns-name']}</td>													
														{if {$server['disabled']} eq 'true' }
														<td>
														<a href="{$_url}mikrotik/hotspot-server-enable&id={$server['.id']}&name={$server['name']}" id="{$server['.id']}" title="ENABLE THIS HOTSPOT SERVER"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>
														
														{else}
														
														<td>
														<a href="{$_url}mikrotik/hotspot-server-disable&id={$server['.id']}&name={$server['name']}" id="{$server['.id']}" title="DISABLE THIS HOTSPOT SERVER"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>													
														</td>
														
														{/if}
														<td>
															<a href="{$_url}mikrotik/hotspot-server-edit&id={$server['.id']}&name={$server['name']}" id="{$server['.id']}" title="EDIT THIS HOTSPOT SERVER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}mikrotik/hotspot-server-remove&id={$server['.id']}&name={$server['name']}" id="{$server['.id']}" title="REMOVE THIS HOTSPOT SERVER" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
			
			<div>
		<!--modal add server -->
			<div class="modal fade" id="add-server" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Hotspot Server</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-hotspot-server" >
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Server Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="hotspot-server name">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Interface</label>
										<div class="col-md-6">
											<select class="form-control select2" style="width: 100%" data-placeholder="- select interface -" name="interface" required>
											<option>- select interface -</option>
												{foreach $interface_list as $interface}
													<option value="{$interface['name']}" name=>{$interface['name']}</option>
												{/foreach}
											</select>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Address Pool</label>
									<div class="col-md-6">
										<select id="pool" name="pool" class="form-control" required>
											<option value="">- select address pool -</option>
										{foreach $pool_list as $pool}
											<option value="{$pool['name']}">{$pool['name']}</option>
										{/foreach}	
										</select>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Server Profile</label>
									<div class="col-md-6">
										<select id="profile" name="profile" class="form-control" required>
											<option value="">- select profile -</option>
										{foreach $profile_list as $profile}
											<option value="{$profile['name']}">{$profile['name']}</option>
										{/foreach}	
										</select>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Address Per MAC</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="address_per_mac" name="address_per_mac" placeholder="address-per-mac" value="2">
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Server</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add server -->
			</div>

{include file="sections/footer.tpl"}
