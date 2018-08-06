{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Make Binding Hosts</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/ip-hosts-binding-save" >
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Mac Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="mac_address" name="mac_address" placeholder="mac address, D4:AA:2C:B3:F1:E1" value="{$mac_address}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">IP Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="address" name="address" placeholder="ip address, 192.168.1.1" value="{$address}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">To Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="to_address" name="to_address" placeholder="to address, 192.168.1.1" value="{$to_address}">
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Binding Type</label>
											<div class="col-md-6">
												<select id="type" name="type" class="form-control" required>
													<option value="" selected>- select binding type -</option>
													<option value="bypassed">BYPASSED</option>
													<option value="regular">REGULAR</option>
													<option value="blocked">BLOCKED</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Add Comment</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="comment" name="comment" placeholder="add comment" value="Binding -> {$mac_address}">
											</div>
										</div>
										<div  style="margin-bottom:-15px" class="form-group"></div>	
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