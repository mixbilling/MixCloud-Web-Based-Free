{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-12">
							<div class="panel">
								<div class="panel-heading">Edit Customers</div>					
								{include file="sections/navbar-c-usermanager.tpl"}					
								<div class="panel-body">						
									<form class="form-horizontal" method="post" role="form" action="{$_url}user-manager/c-customers-save" >								
										<div class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" placeholder="customer id" value="{$id}" readonly>
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Login</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="login" name="login" value="{$login}" placeholder="customer username" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Password</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="password" name="password" value="{$password}" placeholder="customer password" required>
											</div>
										</div>		
										<div class="form-group">
											<label class="col-md-2 control-label">Permissions</label>
											<div class="col-md-6">
											{if {$c_permissions} eq 'read-write' || {$c_permissions} eq 'read-only'}
												<select id="permissions" name="permissions" class="form-control" readonly>
												{if $permissions eq 'read-write'}	
													<option value="{$permissions}" selected>Current : READ WRITE</option>
												{else if $permissions eq 'read-only'}
													<option value="{$permissions}" selected>Current : READ ONLY</option>
												{/if}	
												</select>
											{else}
												<select id="permissions" name="permissions" class="form-control">
												{if $permissions eq 'owner'}		
													<option value="{$permissions}" selected>Current : OWNER</option>
												{else if $permissions eq 'full' }
													<option value="{$permissions}" selected>Current : FULL</option>	
												{else if $permissions eq 'read-write'}
													<option value="{$permissions}" selected>Current : READ WRITE</option>
												{else if $permissions eq 'read-only'}
													<option value="{$permissions}" selected>Current : READ ONLY</option>
												{/if}
													<option value="full">FULL</option>
													<option value="read-write">READ WRITE</option>
													<option value="read-only">READ ONLY</option>
												</select>
											{/if}									
											</div>
										</div>									
										<div class="form-group">
											<label class="col-md-2 control-label">Backup Allowed</label>
											<div class="col-md-6">
											{if {$c_permissions} eq 'read-write' || {$c_permissions} eq 'read-only'}
												<select id="backup_allowed" name="backup_allowed" class="form-control" readonly>
												{if $backup_allowed eq true}
													<option value="{$backup_allowed}" selected>Current : YES</option>
												{else}
													<option value="{$backup_allowed}" selected>Current : NO</option>
												{/if}
												</select>
											{else}	
												<select id="backup_allowed" name="backup_allowed" class="form-control">
												{if $backup_allowed eq true}
													<option value="{$backup_allowed}" selected>Current : YES</option>
												{else}
													<option value="{$backup_allowed}" selected>Current : NO</option>
												{/if}
													<option value="yes">YES</option>
													<option value="no">NO</option>								
												</select>
											{/if}	
											</div>
										</div>									
									{if {$permissions}	eq 'owner'}
										<div class="form-group">
											<label class="col-md-2 control-label">Parent</label>
											<div class="col-md-6">
												<select id="parent" name="parent" class="form-control select2" style="width: 100%" data-placeholder="Current : NOT REQUIRED" disabled>
													<option></option>
												{foreach $usm_customers as $customers}
													<option type="text" class="form-control" value="{$customers['login']}">{$customers['login']}</option>	
												{/foreach}	
												</select>
											</div>
										</div>	
									{else}
										<div class="form-group">
											<label class="col-md-2 control-label">Parent</label>
											<div class="col-md-6">
											{if {$c_permissions} eq 'read-write' || {$c_permissions} eq 'read-only'}
												<select id="parent" name="parent" class="form-control" readonly>	
													<option value="{$parent}" selected>Current : {$parent}</option>
												</select>
											{else}
												<select id="parent" name="parent" class="form-control" required>	
													<option value="{$parent}" selected>Current : {$parent}</option>
												{foreach $usm_customers as $customers}																
													<option type="text" class="form-control" value="{$customers['login']}">{$customers['login']}</option>	
												{/foreach}	
												</select>
											{/if}	
											</div>
										</div>	
									{/if}									
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