{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Hotspot Server</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/hotspot-server-save" >
										<div hidden class="form-group">
											<label class="col-md-2 control-label">Server ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Server Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name" name="name" value="{$name}" placeholder="hotspot-server name">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">Interface</label>
												<div class="col-md-6">
													<select class="form-control select2" style="width: 100%" data-placeholder="- select interface -" name="interface" required>
													<option value="{$interface}">Current : {$interface}</option>
														{foreach $interface_list as $interface}
															<option value="{$interface['name']}" name=>{$interface['name']}</option>
														{/foreach}
													</select>
												</div>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">Address Pool</label>
											<div class="col-md-6">
												<select id="pool" name="pool" class="form-control" required>
													<option value="{$pool}">Current : {$pool}</option>
												{foreach $pool_list as $pool}
													<option value="{$pool['name']}">{$pool['name']}</option>
												{/foreach}	
												</select>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">Server Profile</label>
											<div class="col-md-6">
												<select id="profile" name="profile" class="form-control" required>
													<option value="{$profile}">Current : {$profile}</option>
												{foreach $profile_list as $profile}
													<option value="{$profile['name']}">{$profile['name']}</option>
												{/foreach}	
												</select>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">Address Per MAC</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="address_per_mac" name="address_per_mac" placeholder="address-per-mac" value="{$address_per_mac}">
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