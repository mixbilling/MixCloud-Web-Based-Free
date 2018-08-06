{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-12">
							<div class="panel">
								<div class="panel-heading">Edit Profiles</div>
								{include file="sections/navbar-usermanager.tpl"}		
								<div class="panel-body">
									<form class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-profiles-save" >
										<div class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Name</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" placeholder="profile name" value="{$name}" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Owner</label>
											<div class="col-md-6">
												<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- select owner" required>
												<option value="{$owner}" selected>Current : {$owner}</option>
												<option></option>
													{foreach $usm_customers as $owner}
														<option value="{$owner['login']}" name=>{$owner['login']}</option>
													{/foreach}
												</select>
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Validity</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="validity" name="validity" value="{$validity}" placeholder="validity time" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Start At</label>
											<div class="col-md-6">
												<select id="starts_at" name="starts_at" class="form-control">
												{if {$starts_at} eq 'logon'}
													<option value="{$starts_at}" selected>Current : ON LOGIN</option>
												{else}
													<option value="{$starts_at}" selected>Current : NOW</option>
												{/if}											
													<option value="logon">ON LOGIN</option>
													<option value="now">NOW</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Shared Users</label>
											<div class="col-md-6">
												<select id="shared_users" name="shared_users" class="form-control">
												{if $shared_users eq 'off'}	
													<option value="{$shared_users}" selected>Current : OFF</option>
												{else}
													<option value="{$shared_users}" selected>Current : {$shared_users}</option>
												{/if}
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="off">OFF</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Plan Price</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="price" name="price" value="{$price}" placeholder="plan price" value="0.00">
											</div>
										</div>							
										<div class="form-group">
											<div id="col-lg-offset-2" class="col-lg-offset-2 col-lg-10">
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