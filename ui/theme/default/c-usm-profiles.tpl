{include file="sections/header.tpl"}

			<script>
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("usm_profile").setAttribute("action", "{$_url}user-manager/remove-selected-profiles");
						document.forms['usm_profile'].submit();
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
								<div class="panel-heading">Profiles List</div>	
								{include file="sections/navbar-c-usermanager.tpl"}
								<div class="panel-body">
									<div class="group">
											<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
												<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
													<li style="margin-left:8px;color:red"class="dropdown-title">Add/Create</li>
													<li><a href="#usm-profiles-add" data-toggle="modal" data-target="#usm-profiles-add" title="ADD NEW PROFILE"><i class="ion ion-ios-sunny"></i> New Profile</a></li>
													<li style="margin-left:8px;color:red"class="dropdown-title">Action</li>
													<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>											
												</ul>
											</div>
									</div>								
									<hr/>
									<div class="adv-table table-responsive">
										<form name="usm_profile" id="usm_profile" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr style="font-size:13px;">
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Owner</th>													
														<th>Validity</th>
														<th>Shared</th>													
														<th>Start At</th>
														<th>Price</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $profiles as $profile}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$profile['.id']}">
														</td>
														<td>{$profile['name']}</td>													
														<td>{$profile['owner']}</td>
													{if $profile['validity'] eq '0s'}	
														<td>Unlimited</td>
													{else}
														<td>{$profile['validity']}</td>
													{/if}	
														
													{if $profile['override-shared-users'] eq 'off'}
														<td>{$profile['override-shared-users']}</td>
													{else}
														<td>{$profile['override-shared-users']} Devices</td>
													{/if}	
														<td>{$profile['starts-at']}</td>
														<td>{$profile['price']}</td>
														<td>
															<a href="{$_url}user-manager/c-profiles-edit&id={$profile['.id']}" id="{$profile['.id']}" title="EDIT THIS PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}user-manager/c-profiles-remove&id={$profile['.id']}&name={$profile['name']}" id="{$profile['.id']}" title="REMOVE THIS PROFILE" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
				
		<!--modal usm-profiles-add -->
			<div class="modal fade" id="usm-profiles-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Profile</h4>
						</div>
						<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}user-manager/c-profiles-add" >
							<div class="form-group">
								<label class="col-md-2 control-label">Name</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="name" name="name" placeholder="profile name" required>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">	
								<div class="form-group">
									<label class="col-md-2 control-label">Owner</label>
									<div class="col-md-6">
										<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="select owner" required>
										<option></option>
											{if {$c_permissions} neq 'owner'}
												<option value="{$owner_name}" name=>{$owner_name}</option>
											{/if}								
											{foreach $usm_customers as $owner}
												<option value="{$owner['login']}" name=>{$owner['login']}</option>
											{/foreach}
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">	
								<div class="form-group">
									<label class="col-md-2 control-label">Validity</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="validity_time" name="validity_time" placeholder="validity time" required>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">	
								<div class="form-group">
									<label class="col-md-2 control-label">Validity Unit</label>
									<div class="col-md-6">
										<select class="form-control" id="validity_unit" name="validity_unit">
											<option value="h">HOURS</option>
											<option value="d">DAYS</option>
											<option value="w">WEEKS</option>								
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">		
								<div class="form-group">
									<label class="col-md-2 control-label">Start At</label>
									<div class="col-md-6">
										<select id="starts_at" name="starts_at" class="form-control">										
											<option value="logon" selected>ON LOGIN</option>
											<option value="now">NOW</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">		
								<div class="form-group">
									<label class="col-md-2 control-label">Shared Users</label>
									<div class="col-md-6">
										<select id="shared_users" name="shared_users" class="form-control">
											<option value="off" selected>OFF</option>									
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">		
								<div class="form-group">
									<label class="col-md-2 control-label">Plan Price</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="price" name="price" placeholder="plan price" value="0.00">
									</div>
								</div>
							</div>
							<div  style="margin-bottom:-10px" class="form-group"></div>	
							<hr>
							<div>									
								<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Profile</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		<!--modal usm-profiles-add -->				

{include file="sections/footer.tpl"}