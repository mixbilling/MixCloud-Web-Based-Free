{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Script</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/dhcp-static-save" >  
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="lease_id" name="lease_id" value="{$lease_id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Mac Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="lease_mac" name="lease_mac" value="{$lease_mac}">
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="lease_address" name="lease_address" value="{$lease_address}" placeholder="new ip address, example : 192.168.1.1" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Server</label>
											<div class="col-md-6">
												<select class="form-control select2" name="lease_server" style="width: 100%" data-placeholder="{$lease_server}">
													<option value="{$lease_server}" name="lease_server" selected='selected'>Current : {$lease_server}</option>
													{foreach $dhcp_server as $dhcp_servers}
													<option value="{$dhcp_servers['.id']}" name="lease_server">{$dhcp_servers['name']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Comment</label>
											<div class="col-md-6">
												{if $lease_comment eq ''}
												<input type="text" class="form-control" name="lease_comment" id="lease_comment" value="add by mixpanel">
												{else}
												<input type="text" class="form-control" name="lease_comment" id="lease_comment" value="{$lease_comment}">
												{/if}
											</div>
										</div>	
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit" name="save">{$_L['Save_Changes']}</button> Or <a onclick="window.history.back()" href="#back">{$_L['Cancel']}</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}
