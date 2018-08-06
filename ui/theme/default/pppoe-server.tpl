{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("pppoe_server").setAttribute("action", "{$_url}mikrotik/enable-selected-pppoe_server");
					document.forms['pppoe_server'].submit();
				}
				function disable() {
					document.getElementById("pppoe_server").setAttribute("action", "{$_url}mikrotik/disable-selected-pppoe_server");
					document.forms['pppoe_server'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("pppoe_server").setAttribute("action", "{$_url}mikrotik/remove-selected-pppoe_server");
						document.forms['pppoe_server'].submit();
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
								<div class="panel-heading">PPPOE Server</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-info waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-server" data-toggle="modal" data-target="#add-server" title="ADD NEW PPPOE SERVER"><i class="ion ion-ios-sunny"></i> New PPPOE Server</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="pppoe_server" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Service Name</th>
														<th>Interface</th>
														<th>Max MTU</th>
														<th>Max MRU</th>
														<th>Authentication</th>													
														<th>Default Profile</th>
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
														<td>{$server['service-name']}</td>												
														<td>{$server['interface']}</td>
														<td>{$server['max-mtu']}</td>
														<td>{$server['max-mru']}</td>
														<td>{$server['authentication']}</td>
														<td>{$server['default-profile']}</td>
														{if {$server['disabled']} eq 'true' }
														<td>
														<a href="{$_url}mikrotik/pppoe-server-enable&id={$server['.id']}&name={$server['service-name']}" id="{$server['.id']}" title="ENABLE THIS PPPOE SERVER"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>
														
														{else}
														
														<td>
														<a href="{$_url}mikrotik/pppoe-server-disable&id={$server['.id']}&name={$server['service-name']}" id="{$server['.id']}" title="DISABLE THIS PPPOE SERVER"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>													
														</td>
														
														{/if}
														<td>
															<a href="{$_url}mikrotik/pppoe-server-edit&id={$server['.id']}&name={$server['service-name']}" id="{$server['.id']}" title="EDIT THIS PPPOE SERVER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}mikrotik/pppoe-server-remove&id={$server['.id']}&name={$server['service-name']}" id="{$server['.id']}" title="REMOVE THIS PPPOE SERVER" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
							<h4 class="modal-title" id="myModalLabel">Add PPPOE Server</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-pppoe-server" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Server Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="pppoe-server name">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Max Session</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="max_session" name="max_session" placeholder="max-session, default is empty">
										</div>
									</div>
								</div>								
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Default Profile</label>
										<div class="col-md-6">
											<select class="form-control select2" name="interface" style="width: 100%" data-placeholder="- select profile -" required>
												<option></option>
											{foreach $profile_list as $profile}
												<option value="{$profile['name']}">{$profile['name']}</option>
											{/foreach}	
											</select>
										</div>
									</div>	
								</div>								
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Interface</label>
										<div class="col-md-6">
											<select class="form-control select2" name="interface" style="width: 100%" data-placeholder="- select interface -" required>
											<option></option>
												{foreach $interface_list as $interface}
													<option value="{$interface['name']}" name=>{$interface['name']}</option>
												{/foreach}
											</select>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Max MTU</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="max_mtu" name="max_mtu" placeholder="max-mtu, default is 1480" value="1480">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Max MRU</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="max_mru" name="max_mru" placeholder="max-mru, default is 1480" value="1480">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">KeepAlive TimeOut</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="keepalive" name="keepalive" placeholder="keepalive-timeout, default is 10" value="10">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">One Session Per Host</label>
										<div class="col-md-6">
											<select id="host_session" name="host_session" class="form-control">
												<option id="no" value="no">NO</option>
												<option id="yes" value="yes">YES</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Authentication</label>
									<div style="padding-left:30px;" class="col-md-3">
										<input type="checkbox" name="auth[]" value="pap" checked> PAP<br>
										<input type="checkbox" name="auth[]" value="chap" checked> CHAP<br>
									</div>	
									<div style="padding-left:30px;" class="col-md-3">	
										<input type="checkbox" name="auth[]" value="mschap1" checked> MSChap1<br>
										<input type="checkbox" name="auth[]" value="mschap2" checked> MSChap2<br>
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
