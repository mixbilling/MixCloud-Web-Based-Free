{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit IP Binding</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/save-binding" >  
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Mac Address</label>
											<div class="col-md-6">
											{if !$mac_address}
												<input type="text" class="form-control" id="mac_address" name="mac_address" value="" placeholder="empty">
											{else}
												<input type="text" class="form-control" id="mac_address" name="mac_address" value="{$mac_address}" placeholder="D4:AA:2C:B3:F1:E1">
											{/if}	
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Address</label>
											<div class="col-md-6">
											{if $address eq ''}
												<input type="text" class="form-control" id="address" name="address" value="" placeholder="empty">
											{else}
												<input type="text" class="form-control" id="address" name="address" value="{$address}" placeholder="192.168.1.1">
											{/if}
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Server</label>
											<div class="col-md-6">
												<select id="server" name="server" class="form-control" required>
													<option value="all">Current : {$c_server}</option>
												{foreach $server as $hs_server}
													<option value="all">ALL</option>
													<option value="{$hs_server['name']}">{$hs_server['name']}</option>
												{/foreach}	
												</select>
											</div>
										</div>									
										<div class="form-group">
											<label class="col-md-2 control-label">Binding Type</label>
											<div class="col-md-6">
												<select id="type" name="type" class="form-control" required>
												{if $type eq 'bypassed'}
													<option value="{$type}" name="type">Current : BYPASSED</option>
												{else if $type eq 'blocked'}}
													<option value="{$type}" name="type">Current : BLOCKED</option>
												{else if !$type}}
													<option value="regular" name="type">Current : REGULAR</option>
												{else}
													<option value="" name="type">- select type -</option>
												{/if}	
													<option value="bypassed">BYPASSED</option>
													<option value="blocked">BLOCKED</option>
													<option value="regular">REGULAR</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Comment</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="comment" name="comment" placeholder="comment" value="{$comment}">
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