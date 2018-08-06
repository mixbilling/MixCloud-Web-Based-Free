{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}						
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Member']} Hotspot</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}customers/edit-post" >         
										<input type="hidden" name="id" value="{$d['id']}">
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Username']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="username" name="username" value="{$d['username']}" readonly>
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Routers']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="routers" name="routers" value="{$d['routers']}" placeholder="routers" readonly>
											</div>
										</div>
									</div>	
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Owner']}</label>
										<div class="col-md-6">
										{if $_admin['user_type'] eq 'Admin'}
											<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" required>						
												<option value="{$d['owner_id']}">{$_L['Current']} : {$d['owner_name']}</option>
											{foreach $o as $os}
												<option value="{$os['id']}">{$os['username']}</option>
											{/foreach}						
											</select>
										{else}
											<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" readonly>
												<option value="{$_admin['id']}">{$_admin['username']}</option>							
											</select>
										{/if}	
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Name']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="fullname" name="fullname" value="{$d['fullname']}" placeholder="fullname">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">Email</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="email" name="email" value="{$d['email']}" placeholder="example@email.com">
											</div>
										</div>
									</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Phone_Number']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="phonenumber" name="phonenumber" value="{$d['phonenumber']}" placeholder="0877-0229-9005">
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Address']}</label>
											<div class="col-md-6">
												<textarea rows="3" name="address" id="address"  class="form-control" value="{$d['address']}" placeholder="Jl. Ledjen Suprapto, Sidoharjo, Pacitan">{$d['address']}</textarea>
											</div>
										</div>
									<div class="col-md-3 col-sm-6">		
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Password']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="password" name="password" value="{$d['password']}" placeholder="new password">											
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Confirm_Password']}</label>
											<div class="col-md-6">
												<input type="password" class="form-control" id="cpassword" name="cpassword"  value="{$d['password']}" placeholder="confirm new password">
											</div>
										</div>
									</div>		
											
									{if {$d['type']} eq 'PPPOE'}		
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['IP_Address_Type']}</label>
											<div class="col-md-6">
												<select id="ip_address_type" name="ip_address_type" class="form-control">
												{if {$d['local_address']} neq 'Automatic' && {$d['remote_address']} neq 'Automatic' && {$d['type']} eq 'PPPOE'}
													<option value='static' id="current" selected>Current : {$_L['Static_IP']}</option>
												{else}
													<option value='automatic' id="current" selected>Current : {$_L['Automatic_IP']}</option>
												{/if}
													<option value='static' id="static" name="static">{$_L['Static_IP']}</option>
													<option value='automatic' id="automatic" name="automatic">{$_L['Automatic_IP']}</option>
												</select>
											</div>
										</div>
									{if {$d['local_address']} neq 'Automatic' && {$d['remote_address']} neq 'Automatic' && {$d['type']} eq 'PPPOE'}
										<div class="form-group" id="local_address">
									{else}
										<div class="form-group" style="display:none" id="local_address">
									{/if}
											<label class="col-md-2 control-label">Local Address</label>
											<div class="col-md-6">
											{if {$d['local_address']} neq 'Automatic' && {$d['remote_address']} neq 'Automatic' && {$d['type']} eq 'PPPOE'}
												<input type="text" class="form-control" id="local_address" name="local_address" value="{$d['local_address']}" placeholder="example: 10.50.75.1">
											{else}
												<input type="text" class="form-control" id="local_address" name="local_address" placeholder="example: 10.50.75.1">
											{/if}	
											</div>
										</div>
									{if {$d['local_address']} neq 'Automatic' && {$d['remote_address']} neq 'Automatic' && {$d['type']} eq 'PPPOE'}
										<div class="form-group" id="remote_address">
									{else}
										<div class="form-group" style="display:none" id="remote_address">
									{/if}		
											<label class="col-md-2 control-label">Remote Address</label>
											<div class="col-md-6">
											{if {$d['local_address']} neq 'Automatic' && {$d['remote_address']} neq 'Automatic' && {$d['type']} eq 'PPPOE'}
												<input type="text" class="form-control" id="remote_address" name="remote_address" value="{$d['remote_address']}" placeholder="example: 10.50.75.75">
											{else}
												<input type="text" class="form-control" id="remote_address" name="remote_address" placeholder="example: 10.50.75.75">
											{/if}	
											</div>
										</div>
									{/if}		
										<div  style="margin-bottom:-15px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a onclick="window.history.back()" href="#back">{$_L['Cancel']}</a>
										</div>
									</form>
								</div>	
							</div>
						</div>
					</div>
				</section>
			</div>								

{include file="sections/footer.tpl"}
