{include file="sections/header.tpl"}

			<script>
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("usm_profile_limit").setAttribute("action", "{$_url}mikrotik/remove-selected-profile-limit");
						document.forms['usm_profile_limit'].submit();
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
								<div class="panel-heading">Profiles Limitation List</div>	
								{include file="sections/navbar-usermanager.tpl"}
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-profiles-limit-add" data-toggle="modal" data-target="#usm-profiles-limit-add" title="ADD NEW PROFILE LIMITATION"><i class="ion ion-ios-sunny"></i> New Profile Limit</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>											
											</ul>
										</div>
									</div>								
									<hr>
									<div class="adv-table table-responsive">
										<form name="usm_profile_limit" id="usm_profile_limit" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Profile</th>
														<th>Limitation</th>													
														<th>From Time</th>
														<th>Till Time</th>													
														<th>Week Days</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $profiles_limit as $profile}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$profile['.id']}">
														</td>												
														<td>{$profile['profile']}</td>													
														<td>{$profile['limitation']}</td>													
														<td>{$profile['from-time']}</td>
														<td>{$profile['till-time']}</td>
														<td>{$profile['weekdays']}</td>									
														<td>
															<a href="{$_url}mikrotik/usm-profiles-limit-edit&id={$profile['.id']}" id="{$profile['.id']}" title="EDIT THIS PROFILE LIMITATION" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}mikrotik/usm-profiles-limit-remove&id={$profile['.id']}" id="{$profile['.id']}" title="REMOVE THIS PROFILE LIMITATION" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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

		<!--modal usm-profiles-limit-add -->
			<div class="modal fade" id="usm-profiles-limit-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Limitation Profile</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-profiles-limit-add" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Profile</label>
										<div class="col-md-6">
											<select id="profile" name="profile" class="form-control" required>										
												<option value="" selected>- select profile -</option>
											{foreach $usm_profiles as $profiles}	
												<option value="{$profiles['name']}">{$profiles['name']}</option>
											{/foreach}	
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">								
									<div class="form-group">
										<label class="col-md-2 control-label">Limitation</label>
										<div class="col-md-6">
											<select id="limitation" name="limitation" class="form-control" required>										
												<option value="" selected>- select limitation -</option>
											{foreach $usm_limitation as $limitation}	
												<option value="{$limitation['name']}">{$limitation['name']}</option>
											{/foreach}	
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label">From Time</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="from_time" name="from_time" value="00:00:00" required>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Till Time</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="till_time" name="till_time" value="23:59:59" required>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Select Day Priod</label>
									<div class="col-md-3 col-sm-6">	
										<div class="col-md-4">
											<input type="checkbox" name="priod[]" value="sunday"> Sunday<br>
											<input type="checkbox" name="priod[]" value="monday"> Monday<br>
											<input type="checkbox" name="priod[]" value="tuesday"> Tuesday<br>
											<input type="checkbox" name="priod[]" value="wednesday"> Wednesday
										</div>
									</div>
									<div class="col-md-3 col-sm-6">		
										<div class="col-md-2">	
											<input type="checkbox" name="priod[]" value="thursday"> Thursday<br>
											<input type="checkbox" name="priod[]" value="friday"> Friday<br>
											<input type="checkbox" name="priod[]" value="saturday"> Saturday
										</div>
									</div>
								</div>
								<hr/>
								<div>									
									<button  class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Profile Limit</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-profiles-limit-add -->					

{include file="sections/footer.tpl"}