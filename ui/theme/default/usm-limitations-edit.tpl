{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-12">
							<div class="panel">
								<div class="panel-heading">Edit Limitations</div>
								{include file="sections/navbar-usermanager.tpl"}		
								<div class="panel-body">
									<form class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-limitations-save" >
										<div class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Name</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" placeholder="limitation name" value="{$name}" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Customer</label>
											<div class="col-md-6">
												<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="Select Owner" required>
												<option value="{$owner}" selected>Current : {$owner}</option>
												<option></option>
													{foreach $usm_customers as $owner}
														<option value="{$owner['login']}" name=>{$owner['login']}</option>
													{/foreach}
												</select>
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Uptime Limit</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="uptime_limit" name="uptime_limit" placeholder="1d" value="{$uptime_limit}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">RX Rate</label>
											<div style="width:150px;" class="col-md-4">
												<input style="text-transform:uppercase" type="text" class="form-control" id="rate_rx" name="rate_rx" placeholder="512K" value="{$rate_rx|formatBytes}">
											</div>
											<label style="text-align:left" class="col-md-2 control-label">TX Rate</label>
											<div style="width:150px;" class="col-md-4">
												<input style="text-transform:uppercase" type="text" class="form-control" id="rate_tx" name="rate_tx" placeholder="1M" value="{$rate_tx|formatBytes}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">RX Min</label>
											<div style="width:150px;" class="col-md-4">
												<input style="text-transform:uppercase" type="text" class="form-control" id="rate_min_rx" name="rate_min_rx" placeholder="128K" value="{$rate_min_rx|formatBytes}">
											</div>
											<label style="text-align:left" class="col-md-2 control-label">TX Min</label>
											<div style="width:150px;" class="col-md-4">
												<input style="text-transform:uppercase" type="text" class="form-control" id="rate_min_tx" name="rate_min_tx" placeholder="256K" value="{$rate_min_tx|formatBytes}">
											</div>
										</div>
											<!--<div class="form-group">
												<label class="col-md-2 control-label">RX Burst</label>
												<div style="width:200px;" class="col-md-4">
													<input style="text-transform:uppercase" type="text" class="form-control" id="rate_burts_rx" name="rate_burts_rx" placeholder="1M" value="{$rate_min_tx}">
												</div>
												<label style="width:185px;" class="col-md-2 control-label">TX Burst</label>
												<div style="width:200px;" class="col-md-4">
													<input style="text-transform:uppercase" type="text" class="form-control" id="rate_burts_tx" name="rate_burts_tx" placeholder="2M" value="0M">
												</div>
											</div>
				
											<div class="form-group">
												<label class="col-md-2 control-label">RX Burst Threshold</label>
												<div style="width:200px;" class="col-md-4">
													<input style="text-transform:uppercase" type="text" class="form-control" id="rate_burts_treshold_rx" name="rate_burts_treshold_rx" placeholder="768K" value="0">
												</div>
												<label style="width:185px;" class="col-md-2 control-label">TX Burst Threshold</label>
												<div style="width:200px;" class="col-md-4">
													<input style="text-transform:uppercase" type="text" class="form-control" id="rate_burts_treshold_tx" name="rate_burts_treshold_tx" placeholder="1536K" value="0">
												</div>
											</div>	
				
											<div class="form-group">
												<label class="col-md-2 control-label">RX Burst Time</label>
												<div style="width:200px;" class="col-md-4">
													<input type="text" class="form-control" id="rate_burts_time_rx" name="rate_burts_time_rx" placeholder="10s" value="0">
												</div>
												<label style="width:185px;" class="col-md-2 control-label">TX Burst Time</label>
												<div style="width:200px;" class="col-md-4">
													<input type="text" class="form-control" id="rate_burts_time_tx" name="rate_burts_time_tx" placeholder="10s" value="0">
												</div>
											</div>-->
										<div class="form-group">
											<label class="col-md-2 control-label">RX Bytes Limit</label>
											<div style="width:150px;" class="col-md-4">
												<input style="text-transform:uppercase" type="text" class="form-control" id="upload_limit" name="upload_limit" placeholder="512M" value="{$upload_limit|formatBytes}">
											</div>
											<label style="text-align:left" class="col-md-2 control-label">TX Bytes Limit</label>
											<div style="width:150px;" class="col-md-4">
												<input style="text-transform:uppercase" type="text" class="form-control" id="download_limit" name="download_limit" placeholder="1G" value="{$download_limit|formatBytes}">
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">Group Name</label>
											<div class="col-md-6">
												<select id="group_name" name="group_name" class="form-control">
														<option value="{$group_name}" name=>Current : {$group_name}</option>
													{foreach $profile_list as $profile}
														<option value="{$profile['name']}" name=>{$profile['name']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">IP Pool</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="ip_pool" name="ip_pool" placeholder="ip pool" value="{$ip_pool}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Priority</label>
											<div class="col-md-6">
												<select id="rate_priority" name="rate_priority" class="form-control">
												{if $rate_priority	eq '0'}
													<option value="{$rate_priority}" selected>Current : NOT SPECIFIED</option>
												{else}
													<option value="{$rate_priority}" selected>Current : {$rate_priority}</option>
												{/if}	
													<option value="0">0 -- NOT SPECIFIED</option>
													<option value="1">1 -- HIGHEST</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8 -- LOWEST</option>
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