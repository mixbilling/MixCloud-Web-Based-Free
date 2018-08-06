{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit PPPOE User</div>		
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/pppoe-save-user" >  
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="ppp_id" name="ppp_id" value="{$ppp_id}" readonly>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">			
											<div class="form-group">
												<label class="col-md-2 control-label">Username</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="ppp_name" name="ppp_name" value="{$ppp_name}" placeholder="insert new username" required>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">			
											<div class="form-group">
												<label class="col-md-2 control-label">Password</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="ppp_pass" name="ppp_pass" value="{$ppp_pass}" placeholder="insert new password" required>
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Profile</label>
												<div class="col-md-6">
													<select class="form-control select2" name="ppp_profile" style="width: 100%" data-placeholder="{$ppp_profile}">
													<option></option>
															<option value="{$ppp_profile}" selected='selected'>Current Profile : {$ppp_profile}</option>
														{foreach $profile_list as $profile}
															<option value="{$profile['.id']}">{$profile['name']}</option>
														{/foreach}
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Service</label>
												<div class="col-md-6">
													<select id="ppp_service" name="ppp_service" class="form-control" data-placeholder="{$ppp_service}" readonly>
														<option value="pppoe" selected='selected'>PPPOE</option>
													</select>
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Local Address</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="local_address" name="local_address" value="{$local_address}" placeholder="local-address">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Remote Address</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="remote_address" name="remote_address" value="{$remote_address}" placeholder="remote-address">
												</div>
											</div>
										</div>		
										<div class="form-group">
											<label class="col-md-2 control-label">Comment</label>
											<div class="col-md-6">
												{if $ppp_comment eq ''}
												<input type="text" class="form-control" name="ppp_comment" id="ppp_comment" value="add by mixpanel" placeholder="comment">
												{else}
												<input type="text" class="form-control" name="ppp_comment" id="ppp_comment" value="{$ppp_comment}" placeholder="comment">
												{/if}
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