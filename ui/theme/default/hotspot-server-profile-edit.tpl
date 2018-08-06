{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Server Profile</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/server-profile-save" >
										<div class="tabbable"> <!-- Only required for left/right tabs -->
											<ul class="nav nav-tabs">
												<li class="active"><a href="#general" data-toggle="tab">General</a></li>
												<li><a href="#login" data-toggle="tab">Login</a></li>
												<li><a href="#radius" data-toggle="tab">Radius</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" id="general">
													<div hidden class="form-group">
														<label class="col-md-2 control-label">ID</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
														</div>
													</div>										
													<div class="form-group">
														<label class="col-md-2 control-label">Name</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="name" name="name" placeholder="server profile name" value="{$name}" required>
														</div>
													</div>
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">Hotspot Address</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="address" name="address" placeholder="ip address of hotspot server" value="{$address}" required>
															</div>
														</div>
													</div>
													<div class="col-md-3 col-sm-6">	
														<div class="form-group">
															<label class="col-md-2 control-label">DNS Name</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="dns_name" name="dns_name" placeholder="hotspot url/dns name" value="{$dns_name}" required>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">HTML Directory</label>
														<div class="col-md-6">
															<select id="html_dir" name="html_dir" class="form-control select2" style="width: 100" required>
																<option value="{$html_dir}" selected>Current : {$html_dir}</option>
															{foreach $file_list as $file}	
																<option value="{$file['name']}">{$file['name']}</option>
															{/foreach}	
															</select>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">Rate Limit</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="rate" name="rate" placeholder="rate-limit example : 1M/1M, leave empty for unlimited" value="{$rate}">
														</div>
													</div>
												</div>
												<div class="tab-pane" id="login">
													<div class="form-group">
														<label class="col-md-2 control-label">Login By</label>
														<div style="padding-left:30px;" class="col-md-3">
															<input {if $login_by|strstr:"http-chap"}checked{/if} type="checkbox" name="login_by[]" value="http-chap"> HTTP CHAP<br>
															<input {if $login_by|strstr:"http-pap"}checked{/if} type="checkbox" name="login_by[]" value="http-pap"> HTTP PAP<br>
															<input id="https" type="checkbox" name="login_by[]" value="https" disabled> HTTPS<br>
															<input type="checkbox" name="login_by[]" value="mac" disabled> MAC
														</div>	
														<div style="padding-left:30px;" class="col-md-3">	
															<input {if $login_by|strstr:"mac-cookie"}checked{/if} type="checkbox" name="login_by[]" value="mac-cookie"> MAC Cookie<br>
															<input type="checkbox" name="login_by[]" value="cookie" disabled> Cookie<br>
															<input {if $login_by|strstr:"trial"}checked{/if} id="trial" type="checkbox" name="login_by[]" value="trial"> Trial
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
													
													<div {if $login_by|strstr:"trial"}style="display:block"{else}style="display:none"{/if} id="trial_uptime_limit">	
														<div class="form-group">
															<label class="col-md-2 control-label">Trial Uptime Limit</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="trial_uptime_limit" name="trial_uptime_limit" placeholder="example : 1h" value="{$trial_uptime_limit}">
																<span style="text-transform:lowercase;font-size:13px" class="help-block">m = minutes , h = hours , d = days</span>
															</div>
														</div>
													</div>
													<div {if $login_by|strstr:"trial"}style="display:block"{else}style="display:none"{/if} id="trial_uptime_reset">	
														<div class="form-group">
															<label class="col-md-2 control-label">Trial Uptime Reset</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="trial_uptime_reset" name="trial_uptime_reset" placeholder="example : 1d" value="{$trial_uptime_reset}">
																<span style="text-transform:lowercase;font-size:13px" class="help-block">m = minutes , h = hours , d = days</span>
															</div>
														</div>
													</div>
													<div {if $login_by|strstr:"trial"}style="display:block"{else}style="display:none"{/if} id="trial_profile">		
														<div class="form-group">
															<label class="col-md-2 control-label">Trial User Profile</label>
															<div class="col-md-6">
																<select id="trial_profile" name="trial_profile" class="form-control">
																	<option value="{$trial_profile}" selected>Current : {$trial_profile}</option>
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
																<option {if $use_radius eq 'false'}selected{/if} id="use_radius_no" value="no">NO</option>
																<option {if $use_radius eq 'true'}selected{/if} id="use_radius_yes" value="yes">YES</option>
															</select>
														</div>
													</div>		
													<div {if $use_radius eq 'true'}style="display:block"{else}style="display:none"{/if} id="default_domain">
														<div class="col-md-3 col-sm-6">
															<div class="form-group">
																<label class="col-md-2 control-label">Default Domain</label>
																<div class="col-md-6">
																	<input type="text" class="form-control" id="default_domain" name="default_domain" placeholder="default domain" value="{$default_domain}">
																</div>
															</div>
														</div>
													</div>
													<div {if $use_radius eq 'true'}style="display:block"{else}style="display:none"{/if} id="location_id">
														<div class="col-md-3 col-sm-6">
															<div class="form-group">
																<label class="col-md-2 control-label">Location ID</label>
																<div class="col-md-6">
																	<input type="text" class="form-control" id="location_id" name="location_id" placeholder="location-id" value="{$location_id}">
																</div>
															</div>
														</div>
													</div>
													<div {if $use_radius eq 'true'}style="display:block"{else}style="display:none"{/if} id="location_name">
														<div class="col-md-3 col-sm-6">
															<div class="form-group">
																<label class="col-md-2 control-label">Location Name</label>
																<div class="col-md-6">
																	<input type="text" class="form-control" id="location_name" name="location_name" placeholder="location-name" value="{$location_name}">
																</div>
															</div>
														</div>
													</div>												
													<div {if $use_radius eq 'true'}style="display:block"{else}style="display:none"{/if} id="mac_format">
														<div class="col-md-3 col-sm-6">
															<div class="form-group">
																<label class="col-md-2 control-label">MAC Format</label>
																<div class="col-md-6">
																	<select id="mac_format" name="mac_format" class="form-control">
																		<option value="{$mac_format}">Current : {$mac_format}</option>
																		<option value="XX:XX:XX:XX:XX:XX">XX:XX:XX:XX:XX:XX</option>
																		<option value="XX-XX-XX-XX-XX-XX">XX-XX-XX-XX-XX-XX</option>
																		<option value="XX XX XX XX XX XX">XX XX XX XX XX XX</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div {if $use_radius eq 'true'}style="display:block"{else}style="display:none"{/if} id="nas_port">
														<div class="col-md-3 col-sm-6">
															<div class="form-group">
																<label class="col-md-2 control-label">NAS Port</label>
																<div class="col-md-6">
																	<select id="nas_port" name="nas_port" class="form-control">
																		<option value="{$nas_port}">Current : {$nas_port}</option>
																		<option value="wireless-802.11">wireless-802.11</option>
																		<option value="ethernet">Ethernet</option>
																		<option value="cable">Cable</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div {if $use_radius eq 'true'}style="display:block"{else}style="display:none"{/if} id="accounting">
														<div class="col-md-3 col-sm-6">	
															<div class="form-group">
																<label class="col-md-2 control-label">Accounting</label>
																<div class="col-md-6">
																	<select id="accounting" name="accounting" class="form-control">
																		<option {if $accounting eq 'true'}selected{/if} id="acc_yes" value="yes">YES</option>
																		<option {if $accounting eq 'false'}selected{/if} id="acc_no" value="no">NO</option>
																	</select>
																</div>
															</div>
														</div>	
													</div>												
													<div {if $use_radius eq 'true' && $accounting eq 'true'}style="display:block"{else}style="display:none"{/if} id="interim_update">														
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
												<button class="btn btn-success waves-effect waves-light" type="submit" name="save">Save Changes</button>
												Or <a onclick="window.history.back()" href="#back">Cancel</a>
											</div>										
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>	
				</section>
			</div>									
				
{include file="sections/footer.tpl"}				