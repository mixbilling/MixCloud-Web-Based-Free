{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("usm_users").setAttribute("action", "{$_url}mikrotik/enable-selected-usm_users");
					document.forms['usm_users'].submit();
				}
				function disable() {
					document.getElementById("usm_users").setAttribute("action", "{$_url}mikrotik/disable-selected-usm_users");
					document.forms['usm_users'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("usm_users").setAttribute("action", "{$_url}mikrotik/remove-selected-usm_users");
						document.forms['usm_users'].submit();
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
								<div class="panel-heading">Users List</div>	
								{include file="sections/navbar-usermanager.tpl"}
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-users-add" data-toggle="modal" data-target="#usm-users-add" title="ADD NEW USER"><i class="ion ion-ios-sunny"></i> New Users</a></li>
												<li><a href="{$_url}mikrotik/usm-print-voucher" target="_blank" title="OPEN PRINT PAGE"><i class="ion ion-ios-sunny"></i> Open Print Page</a></li>										
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>												
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>
											</ul>
										</div>
									</div>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="usm_users" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="usm-users">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Username</th>
														<th>Password</th>
														<th>Customer</th>
														<th>Actual Profile</th>
														<th>Last Seen</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
											</table>
										</form>	
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

		<!--modal usm-users-add -->
			<div class="modal fade" id="usm-users-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Create User</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-users-add" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">User Mode</label>
										<div class="col-md-6">
											<select id="create_mode" name="create_mode" class="form-control" required>
												<option value="" id="createMode" selected>- select create mode -</option>
												<option value="singleUser" id="singleUser" name="singleUser">Single User</option>
												<option value="batchUser" id="batchUser" name="batchUser">Batch User</option>
											</select>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Customer</label>
										<div class="col-md-6">
											<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="- select customer -" required>
											<option></option>
												{foreach $usm_customers as $customers}
													<option value="{$customers['login']}" name=>{$customers['login']}</option>
												{/foreach}
											</select>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Profile</label>
									<div class="col-md-6">
										<select id="profile" name="profile" class="form-control" required>
											<option value="" selected>- select profile -</option>
											{foreach $usm_profiles as $profiles}
												<option value="{$profiles['name']}" name=>{$profiles['name']}</option>
											{/foreach}
										</select>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Shared Users</label>
										<div class="col-md-6">
											<select id="shared_users" name="shared_users" class="form-control">							<option value="unlimited">Unlimited</option>
												<option value="1" selected>1</option>
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
								</div>
								<div class="col-md-3 col-sm-6">				
									<div class="form-group">
										<label class="col-md-2 control-label">Login Method</label>
										<div class="col-md-6">
											<select id="loginmethod" name="loginmethod" class="form-control">
												<option id="usm_select" selected>- select login method -</option>
												<option id="usm_useronly" value="usm_useronly" name="usm_useronly">Voucher Code</option>
												<option id="usm_userpass" value="usm_userpass" name="usm_userpass">Username and Password</option>
											</select>
										</div>
									</div>
								</div>							
								<div style="display:none;" id="usm_user">
									<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Username']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="usm_user" name="usm_user" placeholder="create username">
										</div>
									</div>
								</div>
								<div style="display:none;" id="usm_pass">
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Password']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="usm_pass" name="usm_pass" placeholder="create password">
										</div>
									</div>
								</div>
								<div style="display:none;" id="batch_user">
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">Number Users</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="numberuser" name="numberuser" placeholder="how much" >
											</div>
										</div>
									</div>	
									<div class="col-md-3 col-sm-6">		
										<div class="form-group">
											<label class="col-md-2 control-label">Length Code</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="lengthcode" name="lengthcode" placeholder="length code" >
											</div>
										</div>
									</div>
								</div>
								<div style="display:none;" id="code_combination">
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">Voucher Prefix</label>
											<div class="col-md-6">
												<input type="text" class="form-control" name="userprefix" placeholder="Insert Voucher Prefix">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">				
										<div class="form-group">
											<label class="col-md-2 control-label">Combination</label>
											<div class="col-md-6">
												<select id="combination" name="combination" class="form-control">
													<option value="type1" selected>Uppercase and Numbers</option>									
													<option value="type2">Lowercase and Numbers</option>
													<option value="type3">Uppercase Only</option>
													<option value="type4">Lowercase Only</option>
												</select>
											</div>
										</div>
									</div>	
								</div>		
								<div  style="margin-bottom:-10px" class="form-group"></div>	
								<hr>
								<div>									
									<button class="btn btn-success waves-effect waves-light" type="submit" name="add">Create User</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-single-users-add -->	

{include file="sections/footer.tpl"}