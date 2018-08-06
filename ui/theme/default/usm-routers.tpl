{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("routers").setAttribute("action", "{$_url}mikrotik/enable-selected-routers");
					document.forms['routers'].submit();
				}
				function disable() {
					document.getElementById("routers").setAttribute("action", "{$_url}mikrotik/disable-selected-routers");
					document.forms['routers'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("routers").setAttribute("action", "{$_url}mikrotik/remove-selected-routers");
						document.forms['routers'].submit();
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
								<div class="panel-heading">Routers List</div>	
								{include file="sections/navbar-usermanager.tpl"}
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-routers-add" data-toggle="modal" data-target="#usm-routers-add" title="ADD NEW ROUTER"><i class="ion ion-ios-sunny"></i> New Router</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLED SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="routers" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>IP Address</th>
														<th>Shared Secret</th>
														<th>Customer</th>
														<th>Log</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $usm_routers as $routers}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$routers['.id']}">
														</td>													
														<td>{$routers['name']}</td>
														<td>{$routers['ip-address']}</td>
														<td>{$routers['shared-secret']}</td>
														<td>{$routers['customer']}</td>
														<td>{$routers['log']}</td>
													{if {$routers['disabled']} eq 'true' }													
														<td>
														<a href="{$_url}mikrotik/usm-routers-enable&id={$routers['.id']}&name={$routers['name']}" id="{$routers['.id']}" title="Enable This Router ?"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>													
													{else}
														<td>													
														<a href="{$_url}mikrotik/usm-routers-disable&id={$routers['.id']}&name={$routers['name']}" id="{$routers['.id']}" title="Disable This Router ?"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
														</td>
													{/if}												
														<td>
															<a href="{$_url}mikrotik/usm-routers-edit&id={$routers['.id']}&name={$routers['name']}" id="{$routers['.id']}" title="EDIT THIS ROUTER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														{if $routers['permissions'] neq 'owner'}
															<a href="{$_url}mikrotik/usm-routers-remove&id={$routers['.id']}&name={$routers['name']}" id="{$routers['.id']}" title="REMOVE THIS ROUTER" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
														{/if}	
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

		<!--modal usm-routers-add -->
			<div class="modal fade" id="usm-routers-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Router</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-routers-add" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="router name, example : RB750" required>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">IP Address</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="ip_address" name="ip_address" placeholder="ip address, example : 192.168.1.1" required>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Shared Secret</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="shared_secret" name="shared_secret" placeholder="shared secret" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Customer</label>
									<div class="col-md-6">
										<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="select customer" required>
										<option></option>
											{foreach $usm_customers as $customers}
												<option value="{$customers['login']}" name=>{$customers['login']}</option>
											{/foreach}
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Log Events</label>
									<div class="col-md-4">
										<div class="col-md-3 col-sm-6">	
											<input type="checkbox" name="log[]" value="auth-ok"> Authorization success<br>
											<input type="checkbox" name="log[]" value="auth-fail"> Authorization failure
										</div>	
										<div class="col-md-3 col-sm-6">		
											<input type="checkbox" name="log[]" value="acct-ok"> Accounting success<br>
											<input type="checkbox" name="log[]" value="acct-fail"> Accounting failure
										</div>	
									</div>	
								</div>					
								<div class="form-group">
									<label class="col-md-2 control-label">Disabled</label>
									<div class="col-md-6">
										<select id="disabled" name="disabled" class="form-control">										
											<option value="yes">YES</option>
											<option value="no" selected>NO</option>
										</select>
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Router</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-routers-add -->					
				
{include file="sections/footer.tpl"}