{include file="sections/header.tpl"}

			<script>
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("limitation").setAttribute("action", "{$_url}user-manager/remove-selected-limitations");
						document.forms['limitation'].submit();
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
								<div class="panel-heading">Limitations List</div>							
								{include file="sections/navbar-c-usermanager.tpl"}
								<div class="panel-body">								
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#usm-limitations-add" data-toggle="modal" data-target="#usm-limitations-add" title="ADD NEW LIMITATION"><i class="ion ion-ios-sunny"></i> New Limitation</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"><i class="ion ion-ios-sunny"></i> Remove Selected</a></li>											
											</ul>
										</div>
									</div>								
									<hr/>								
									<div class="adv-table table-responsive">
										<form id="limitation" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
												<thead>
													<tr style="font-size:13px;">
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>													
														<th>Owner</th>													
														<th>Uptime Limit</th>
														<th>RX-TX : Max-Min</th>
														<th>Quota Limit</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $limitations as $limitation}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$limitation['.id']}">
														</td>
														<td>{$limitation['name']}</td>													
														<td>{$limitation['owner']}</td>
													{if $limitation['uptime-limit'] eq '0s'}
														<td>Unlimited</td>
													{else}	
														<td>{$limitation['uptime-limit']}</td>
													{/if}	
														<td>{$limitation['rate-limit-rx']|formatBytes}/{$limitation['rate-limit-tx']|formatBytes} , {$limitation['rate-limit-min-rx']|formatBytes}/{$limitation['rate-limit-min-tx']|formatBytes}</td>
														<td>{$Limitation['upload-limit']|formatBytes}-{$limitation['download-limit']|formatBytes}</td>
														<td>
															<a href="{$_url}user-manager/c-limitations-edit&id={$limitation['.id']}&name={$limitation['name']}" id="{$limitation['.id']}" title="EDIT THIS LIMITATION" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}user-manager/c-limitations-remove&id={$limitation['.id']}&name={$limitation['name']}" id="{$limitation['.id']}" title="REMOVE THIS LIMITATION" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
														</td>
													</tr>
												{/foreach}
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

		<!--modal usm-limitations-add -->
			<div class="modal fade" id="usm-limitations-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Limitation</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/usm-limitations-add" >
								<div class="form-group">
									<label class="col-md-2 control-label">Name</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="name" name="name" placeholder="limitation name" required>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label">Owner</label>
										<div class="col-md-6">
											<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- select owner -" required>
											<option></option>
												{foreach $usm_customers as $owner}
													<option value="{$owner['login']}" name=>{$owner['login']}</option>
												{/foreach}
											</select>
										</div>
									</div>
								</div>		
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Uptime Limit</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="uptime_limit" name="uptime_limit" placeholder="uptime limit" required>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Uptime Unit</label>
										<div class="col-md-6">
											<select class="form-control" id="uptime_unit" name="uptime_unit">
												<option value="h">HOURS</option>
												<option value="d">DAYS</option>
												<option value="w">WEEKS</option>								
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">					
									<div class="form-group">
										<label class="col-md-2 control-label">Upload Rate</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="rate_rx" name="rate_rx" placeholder="512K" value="0M">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">					
									<div class="form-group">
										<label class="col-md-2 control-label">Download Rate</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="rate_tx" name="rate_tx" placeholder="1M" value="0M">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">					
									<div class="form-group">
										<label class="col-md-2 control-label">Upload Min</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="rate_min_rx" name="rate_min_rx" placeholder="128K" value="0M">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Download Min</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="rate_min_tx" name="rate_min_tx" placeholder="256K" value="0M">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">					
									<div class="form-group">
										<label class="col-md-2 control-label">Upload Bytes</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="upload_limit" name="upload_limit" placeholder="512M" value="0M">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">Download Bytes</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="download_limit" name="download_limit" placeholder="1G" value="0M">
										</div>
									</div>
								</div>					
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label class="col-md-2 control-label">IP Pool</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="ip_pool" name="ip_pool" placeholder="ip pool" value="">
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Group Name</label>
										<div class="col-md-6">
											<select id="group_name" name="group_name" class="form-control">										
												{foreach $profile_list as $profile}
													<option value="{$profile['name']}" name=>{$profile['name']}</option>
												{/foreach}
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">			
									<div class="form-group">
										<label class="col-md-2 control-label">Priority</label>
										<div class="col-md-6">
											<select id="rate_priority" name="rate_priority" class="form-control">
												<option value="0" selected>0 -- NOT SPECIFIED</option>
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
								</div>
								<div  style="margin-bottom:-10px" class="form-group"></div>	
								<hr>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Limitation</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal usm-limitations-add -->				

{include file="sections/footer.tpl"}