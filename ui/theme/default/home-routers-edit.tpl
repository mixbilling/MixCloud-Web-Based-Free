{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Router']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-routers/edit-post" > 
										<input type="hidden" name="id" value="{$d['id']}">
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Name']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" value="{$d['name']}" readonly>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['IP_Address']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="ip_address" name="ip_address" value="{$d['ip_address']}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Port']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="port" name="port" value="{$d['port']}">
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Username']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="username" name="username" value="{$d['username']}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Router_Secret']}</label>
												<div class="col-md-6">
													<input type="password" class="form-control" id="password" name="password" value="{$d['password']}">
												</div>
											</div>
										</div>		
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Hotspot_Domain']}</label>
											<div class="col-md-6">
												<input class="form-control" id="hotspot_domain" name="hotspot_domain" value="{$d['hotspot_domain']}" placeholder="hotspot url without http://">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">User Manager</label>
											<div class="col-md-6">
												<select id="usermanager" name="usermanager" class="form-control" required>
												{if $d['usermanager'] eq 'Yes'}
													<option value="{$d['usermanager']}" selected>Current : {$_L['Yes']}</option>
												{else}
													<option value="{$d['usermanager']}" selected>Current : {$_L['No']}</option>
												{/if}	
													<option value="Yes" name="userman_router">{$_L['Yes']}</option>
													<option value="No" name="hotspot_router">{$_L['No']}</option>
												</select>
											</div>
										</div>					
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

{include file="sections/home-footer.tpl"}
