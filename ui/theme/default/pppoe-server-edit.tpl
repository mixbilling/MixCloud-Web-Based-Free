{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit PPPOE Server</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/pppoe-server-save" >
										<div hidden class="form-group">
											<label class="col-md-2 control-label">Server ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>								
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Server Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name" name="name" value="{$name}" placeholder="pppoe-server name">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Max Session</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="max_session" name="max_session" placeholder="max-session, default is empty" value="{$max_session}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Default Profile</label>
												<div class="col-md-6">
													<select class="form-control select2" name="interface" style="width: 100%" data-placeholder="- select profile -" required>
														<option value="{$profile}">Current : {$profile}</option>
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
													<option value="{$interface}">Current : {$interface}</option>
														{foreach $interface_list as $interface}
															<option value="{$interface['name']}">{$interface['name']}</option>
														{/foreach}
													</select>
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Max MTU</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="max_mtu" name="max_mtu" placeholder="max-mtu, default is 1480" value="{$max_mtu}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Max MRU</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="max_mru" name="max_mru" placeholder="max-mru, default is 1480" value="{$max_mru}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">KeepAlive TimeOut</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="keepalive" name="keepalive" placeholder="keepalive-timeout, default is 10" value="{$keepalive}">
												</div>
											</div>
										</div>									
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">One Session Per Host</label>
												<div class="col-md-6">
													<select id="host_session" name="host_session" class="form-control">
														<option id="no" value="no" {if $host_session eq 'false'}selected{/if}>NO</option>
														<option id="yes" value="yes" {if $host_session eq 'true'}selected{/if}>YES</option>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Authentication</label>
											<div style="padding-left:30px;" class="col-md-3">
												<input type="checkbox" name="auth[]" value="pap" {if $auth|strstr:"pap"}checked{/if}> PAP<br>
												<input type="checkbox" name="auth[]" value="chap" {if $auth|strstr:"chap"}checked{/if}> CHAP<br>
											</div>	
											<div style="padding-left:30px;" class="col-md-3">	
												<input type="checkbox" name="auth[]" value="mschap1" {if $auth|strstr:"mschap1"}checked{/if}> MSChap1<br>
												<input type="checkbox" name="auth[]" value="mschap2" {if $auth|strstr:"mschap2"}checked{/if}> MSChap2<br>
											</div>
										</div>									
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit" name="save">Save Changes</button>
											Or <a onclick="window.history.back()" href="#back">Cancel</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>										
				
{include file="sections/footer.tpl"}				