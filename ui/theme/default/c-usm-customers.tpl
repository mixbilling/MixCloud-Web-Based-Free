{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("customers").setAttribute("action", "{$_url}user-manager/enable-selected-customers");
					document.forms['customers'].submit();
				}
				function disable() {
					document.getElementById("customers").setAttribute("action", "{$_url}user-manager/disable-selected-customers");
					document.forms['customers'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("customers").setAttribute("action", "{$_url}user-manager/remove-selected-customers");
						document.forms['customers'].submit();
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
								<div class="panel-heading">Customers List</div>							
								{include file="sections/navbar-c-usermanager.tpl"}							
								<div class="panel-body">								
								{if {$c_permissions} eq 'owner' || {$c_permissions} eq 'full'}							
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-customers-add" data-toggle="modal" data-target="#usm-customers-add" title="ADD NEW CUSTOMER"><i class="ion ion-ios-sunny"></i> New Customer</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>
								{/if}
									<hr>								
									<div class="adv-table table-responsive">
										<form id="customers" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr style="font-size:13px;">
													{if {$c_permissions} eq 'owner' || {$c_permissions} eq 'full'}	
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
													{else}
														<th>Id</th>
													{/if}	
														<th>Customer</th>
														<th>Password</th>
														<th>Permission</th>
														<th>Parent</th>
													{if {$c_permissions} eq 'owner' || {$c_permissions} eq 'full'}
														<th>Status</th>
													{/if}
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $usm_customers as $customers}
													<tr>
													{if {$c_permissions} eq 'owner' || {$c_permissions} eq 'full'}
														<td align="center">
														{if $customers['permissions'] neq 'owner'}
															{if $customers['login'] neq {$username} }
																<input type="checkbox" name="checked[]" value="{$customers['.id']}">
															{/if}
														{/if}													
														</td>
													{else}
														<td>{$customers['.id']}</td>
													{/if}
														<td>{$customers['login']}</td>
														<td>{$customers['password']}</td>
														<td>{$customers['permissions']}</td>
														<td>{$customers['parent']}</td>
													{if {$c_permissions} eq 'owner' || {$c_permissions} eq 'full'}
														{if {$customers['disabled']} eq 'true' }													
															<td>
														{if $customers['permissions'] neq 'owner'}
															<a href="{$_url}user-manager/c-customers-enable&id={$customers['.id']}&name={$customers['login']}" id="{$customers['.id']}" title="ENABLE THIS CUSTOMER"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														{/if}
														</td>													
														{else}
														<td>
														{if $customers['permissions'] neq 'owner'}
															{if $customers['login'] neq {$username} }
																<a href="{$_url}user-manager/c-customers-disable&id={$customers['.id']}&name={$customers['login']}" id="{$customers['.id']}" title="DISABLE THIS CUSTOMER"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
															{/if}	
														{/if}
													{/if}
														</td>
													{/if}
														<td>													
															<a href="{$_url}user-manager/c-customers-edit&id={$customers['.id']}&name={$customers['login']}" id="{$customers['.id']}" title="EDIT THIS CUSTOMER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														{if $customers['permissions'] neq 'owner'}
															{if $customers['login'] neq {$username} }
																<a href="{$_url}user-manager/c-customers-delete&id={$customers['.id']}&name={$customers['login']}" id="{$customers['.id']}" title="REMOVE THIS CUSTOMER" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
															{/if}
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
				
		<!--modal usm-customers-add -->
			<div class="modal fade" id="usm-customers-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Customer</h4>
						</div>
						<div class="modal-body">				
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}user-manager/c-customers-add" >
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Username</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="login" name="login" placeholder="customer username" required>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label">Password</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="password" name="password" placeholder="customer password" required>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Permissions</label>
									<div class="col-md-6">
									{if $usm_customers eq ''}
										<select id="permissions" name="permissions" class="form-control">
											<option value="owner">OWNER</option>									
											<option value="full">FULL</option>
											<option value="read-write">READ WRITE</option>
											<option value="read-only">READ ONLY</option>
										</select>
									{else}
										<select id="permissions" name="permissions" class="form-control">								
											<option value="full" selected>FULL</option>
											<option value="read-write">READ WRITE</option>
											<option value="read-only">READ ONLY</option>
										</select>
									{/if}
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Backup Allowed</label>
									<div class="col-md-6">
										<select id="backup_allowed" name="backup_allowed" class="form-control">
											<option value="yes" selected>Yes</option>								
											<option value="no">No</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Parent</label>
									<div class="col-md-6">
										<select id="parent" name="parent" class="form-control" required>
											<option value="" selected>- select parent -</option>
										{foreach $usm_customers as $customers}																
											<option type="text" class="form-control" value="{$customers['login']}">{$customers['login']}</option>	
										{/foreach}	
										</select>
									</div>
								</div>
								<hr>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Customer</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-customers-add -->				

{include file="sections/footer.tpl"}