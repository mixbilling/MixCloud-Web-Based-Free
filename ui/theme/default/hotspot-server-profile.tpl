{include file="sections/header.tpl"}

			<script>				
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("server_profile").setAttribute("action", "{$_url}mikrotik/remove-selected-server-profile");
						document.forms['server_profile'].submit();
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
								<div class="panel-heading">Server Profile</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#server-profile-add" data-toggle="modal" data-target="#server-profile-add" title="ADD NEW SERVER PROFILE"><i class="ion ion-ios-sunny"></i> New Server Profile</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="server_profile" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Address</th>
														<th>DNS Name</th>
														<th>HTML Directory</th>
														<th>Rate Limit</th>
														<th>Login By</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $server_profile as $profile}
													<tr>
														<td align="center">
															<input type="checkbox" name="checked[]" value="{$profile['.id']}">
														</td>
														<td>{$profile['name']}</td>
													{if $profile['hotspot-address'] neq '0.0.0.0'}	
														<td>{$profile['hotspot-address']}</td>
													{else}
														<td>Not Set</td>
													{/if}
													{if $profile['dns-name'] eq ''}	
														<td>Not Set</td>
													{else}
														<td>{$profile['dns-name']}</td>
													{/if}	
														<td>{$profile['html-directory']}</td>
													{if $profile['rate-limit'] eq ''}
														<td>Unlimited</td>
													{else}
														<td>{$profile['rate-limit']}</td>
													{/if}	
														<td>{$profile['login-by']}</td>
														<td>
															<a href="{$_url}mikrotik/server-profile-edit&id={$profile['.id']}&name={$profile['name']}" id="{$profile['.id']}" title="EDIT THIS SERVER PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}mikrotik/server-profile-remove&id={$profile['.id']}&name={$profile['name']}" id="{$profile['.id']}" title="REMOVE THIS SERVER PROFILE" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
			<!--modal server-profile-add -->
				<div class="modal fade" id="server-profile-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
					<div  class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel">Add Server Profile</h4>
							</div>
							<div class="modal-body">
								<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-server profile" >
									<div class="tabbable"> <!-- Only required for left/right tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#general" data-toggle="tab">General</a></li>
											<li><a href="#login" data-toggle="tab">Login</a></li>
											<li><a href="#radius" data-toggle="tab">Radius</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="general">
												<div class="form-group">
													<label class="col-md-2 control-label">Name</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="name" name="name" placeholder="profile name" required>
													</div>
												</div>
												<div class="col-md-3 col-sm-6">
													<div class="form-group">
														<label class="col-md-2 control-label">Hotspot Address</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="address" name="address" placeholder="ip address of hotspot server" required>
														</div>
													</div>
												</div>
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label">DNS Name</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="dns_name" name="dns_name" placeholder="hotspot url/dns name" required>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">HTML Directory</label>
													<div class="col-md-6">
														<select id="html_dir" name="html_dir" class="form-control select2" style="width: 100%" data-placeholder="- select html directory -" required>
															<option></option>
														{foreach $file_list as $file}	
															<option value="{$file['name']}">{$file['name']}</option>
														{/foreach}	
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">Rate Limit</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="rate" name="rate" placeholder="rate-limit example : 1M/1M, leave empty for unlimited">
													</div>
												</div>
											</div>
											<div class="tab-pane" id="login">
												<div class="form-group">
													<label class="col-md-2 control-label">Login By</label>
													<div style="padding-left:30px;" class="col-md-3">
														<input type="checkbox" name="login_by[]" value="http-chap" checked> HTTP CHAP<br>
														<input type="checkbox" name="login_by[]" value="http-pap" checked> HTTP PAP<br>
														<input id="https" type="checkbox" name="login_by[]" value="https" disabled> HTTPS<br>
														<input type="checkbox" name="login_by[]" value="mac" disabled> MAC
													</div>	
													<div style="padding-left:30px;" class="col-md-3">	
														<input type="checkbox" name="login_by[]" value="mac-cookie"> MAC Cookie<br>
														<input type="checkbox" name="login_by[]" value="cookie" disabled> Cookie<br>
														<input id="trial" type="checkbox" name="login_by[]" value="trial"> Trial
													</div>
												</div>
												<div style="display:none" id="ssl_cert">		
													<div class="form-group">
														<label class="col-md-2 control-label">SSL Certificate</label>
														<div class="col-md-6">
															<select id="ssl_cert" name="ssl_cert" class="form-control">
																<option value="" selected>- select ssl cert -</option>
																<option value="none">none</option>
															</select>
														</div>
													</div>
												</div>
												<div style="display:none" id="trial_uptime_limit">	
													<div class="form-group">
														<label class="col-md-2 control-label">Trial Uptime Limit</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="trial_uptime_limit" name="trial_uptime_limit" placeholder="example : 1h" value="1h">
															<span style="text-transform:lowercase;font-size:13px" class="help-block">m = minutes , h = hours , d = days</span>
														</div>
													</div>
												</div>
												<div style="display:none" id="trial_uptime_reset">	
													<div class="form-group">
														<label class="col-md-2 control-label">Trial Uptime Reset</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="trial_uptime_reset" name="trial_uptime_reset" placeholder="example : 1d" value="1d">
															<span style="text-transform:lowercase;font-size:13px" class="help-block">m = minutes , h = hours , d = days</span>
														</div>
													</div>
												</div>
												<div style="display:none" id="trial_profile">		
													<div class="form-group">
														<label class="col-md-2 control-label">Trial User Profile</label>
														<div class="col-md-6">
															<select id="trial_profile" name="trial_profile" class="form-control">
																<option value="default">default</option>
															{foreach $profile_list as $profile}	
																<option value="{$profile['name']}">{$profile['name']}</option>
															{/foreach}
															</select>
														</div>
													</div>
												</div>												
											</div>
											<div class="tab-pane" id="radius">
												<div class="form-group">
													<label class="col-md-2 control-label">Use Radius</label>
													<div class="col-md-6">
														<select id="use_radius" name="use_radius" class="form-control">
															<option id="use_radius_no" value="no">NO</option>
															<option id="use_radius_yes" value="yes">YES</option>
														</select>
													</div>
												</div>		
												<div style="display:none" id="default_domain">
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">Default Domain</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="default_domain" name="default_domain" placeholder="default domain">
															</div>
														</div>
													</div>
												</div>
												<div style="display:none" id="location_id">
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">Location ID</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="location_id" name="location_id" placeholder="location-id">
															</div>
														</div>
													</div>
												</div>
												<div style="display:none" id="location_name">
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">Location Name</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="location_name" name="location_name" placeholder="location-name">
															</div>
														</div>
													</div>
												</div>												
												<div style="display:none" id="mac_format">
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">MAC Format</label>
															<div class="col-md-6">
																<select id="mac_format" name="mac_format" class="form-control">
																	<option value="XX:XX:XX:XX:XX:XX">XX:XX:XX:XX:XX:XX</option>
																	<option value="XX-XX-XX-XX-XX-XX">XX-XX-XX-XX-XX-XX</option>
																	<option value="XX XX XX XX XX XX">XX XX XX XX XX XX</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<div style="display:none" id="nas_port">
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">NAS Port</label>
															<div class="col-md-6">
																<select id="nas_port" name="nas_port" class="form-control">
																	<option value="wireless-802.11">wireless-802.11</option>
																	<option value="ethernet">Ethernet</option>
																	<option value="cable">Cable</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<div style="display:none" id="accounting">
													<div class="col-md-3 col-sm-6">	
														<div class="form-group">
															<label class="col-md-2 control-label">Accounting</label>
															<div class="col-md-6">
																<select id="accounting" name="accounting" class="form-control">
																	<option id="acc_yes" value="yes">YES</option>
																	<option id="acc_no" value="no">NO</option>
																</select>
															</div>
														</div>
													</div>	
												</div>												
												<div style="display:none" id="interim_update">														
													<div class="form-group">
														<label class="col-md-2 control-label">Interim Update</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="interim_update" name="interim_update" placeholder="example : 1h">
														</div>
													</div>
												</div>												
											</div>											
										</div>
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button  class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Server Profile</button>
										</div>										
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
			<!--modal server-profile-add -->
			</div>

{include file="sections/footer.tpl"}
