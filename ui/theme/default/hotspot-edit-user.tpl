{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Hotspot User</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/hotspot-save-user" >  
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="hs_id" name="hs_id" value="{$hs_id}" readonly>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Username</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="hs_name" name="hs_name" value="{$hs_name}" placeholder="insert new username" required>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Password</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="hs_pass" name="hs_pass" value="{$hs_pass}" placeholder="insert new password" required>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Profile</label>
											<div class="col-md-6">
												<select class="form-control select2" name="hs_profile" style="width: 100%" data-placeholder="{$hs_profile}">
													<option value="{$hs_profile}" name="hs_profile" selected='selected'>Current : {$hs_profile}</option>
													{foreach $profile_list as $profile}
														<option value="{$profile['.id']}" name="hs_profile">{$profile['name']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Limit Uptime</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="hs_limit_uptime" name="hs_limit_uptime" value="{$hs_limit_uptime}" placeholder="example : 1d or 6h">
												<span style="text-transform:lowercase;font-size:13px" class="help-block">m = minutes , h = hours , d = days</span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Comment</label>
											<div class="col-md-6">
												{if $hs_comment eq ''}
												<input type="text" class="form-control" name="nw_comment" id="nw_comment" value="add by mixpanel" placeholder="comment">
												{else}
												<input type="text" class="form-control" name="hs_comment" id="hs_comment" value="{$hs_comment}" placeholder="comment">
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