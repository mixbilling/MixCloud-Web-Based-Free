{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-12">
							<div class="panel">
								<div class="panel-heading">Edit Routers</div>
								{include file="sections/navbar-c-usermanager.tpl"}
								<div class="panel-body">
									<form class="form-horizontal" method="post" role="form" action="{$_url}user-manager/c-routers-save" >
										<div class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Name</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" value="{$name}" placeholder="router name, example : RB750" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">IP Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="ip_address" name="ip_address" value="{$ip_address}" placeholder="ip address, example : 192.168.1.1" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Shared Secret</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="shared_secret" name="shared_secret" value="{$shared_secret}" placeholder="shared secret" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Customer</label>
											<div class="col-md-6">
												<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="Select Customer" required>
												<option value="{$customer}" selected>Current : {$customer}</option>
												<option></option>
													{foreach $usm_customers as $customers}
														<option value="{$customers['login']}" name=>{$customers['login']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<br>
										<div class="form-group">
											<label class="col-md-2 control-label">Log Events</label>
											<div class="col-md-6">
												<div class="col-md-6">		
													<input type="checkbox" name="log[]" value="auth-ok" {if $log|strstr:'auth-ok'} checked {/if}> Authorization success<br>
													<input type="checkbox" name="log[]" value="auth-fail" {if $log|strstr:'auth-fail'} checked {/if}> Authorization failure
												</div>
												<div class="col-md-6">		
													<input type="checkbox" name="log[]" value="acct-ok" {if $log|strstr:'acct-ok'} checked {/if}> Accounting success<br>
													<input type="checkbox" name="log[]" value="acct-fail" {if $log|strstr:'acct-fail'} checked {/if}> Accounting failure
												</div>										
											</div>	
										</div>
										<br>							
										<div class="form-group">
											<label class="col-md-2 control-label">Disabled</label>
											<div class="col-md-6">
												<select id="disabled" name="disabled" class="form-control">
												{if $disabled eq 'false'}
													<option value="{$disabled}" selected>Current : NO</option>
												{else}
													<option value="{$disabled}" selected>Current : YES</option>
												{/if}
													<option value="yes">YES</option>
													<option value="no">NO</option>										
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
