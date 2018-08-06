{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-12">
							<div class="panel">
								<div class="panel-heading">Edit Users</div>
								{include file="sections/navbar-usermanager.tpl"}			
								<div class="panel-body">
									<form class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-users-save" >
									
										<div class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" placeholder="customer id" value="{$id}" readonly>
											</div>
										</div>						
										<div class="form-group">
											<label class="col-md-2 control-label">Username</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="username" name="username" value="{$username}" placeholder="username" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Password</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="password" name="password" value="{$password}" placeholder="password" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Profile</label>
											<div class="col-md-6">
												<select id="profile" name="profile" class="form-control">										
													<option value="" selected>Current : {$actual_profile}</option>
												{foreach $usm_profiles as $profiles}	
													<option value="{$profiles['name']}">{$profiles['name']}</option>
												{/foreach}	
												</select>
												<span class="help-block">* select another profile to add more profile for user (auto recharge)</span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Customer</label>
											<div class="col-md-6">
												<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="- select customer -" required>
												<option value="{$customer}" selected>Current : {$customer}</option>
												<option></option>
													{foreach $usm_customers as $customers}
														<option value="{$customers['login']}" name=>{$customers['login']}</option>
													{/foreach}
												</select>									
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">Shared Users</label>
											<div class="col-md-6">
												<select id="shared_users" name="shared_users" class="form-control">
													<option value="{$shared_users}" selected>Current : {$shared_users}</option>
													<option value="unlimited">Unlimited</option>
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