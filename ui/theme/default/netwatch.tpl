{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("netwatch").setAttribute("action", "{$_url}mikrotik/enable-selected-netwatch");
					document.forms['netwatch'].submit();
				}
				function disable() {
					document.getElementById("netwatch").setAttribute("action", "{$_url}mikrotik/disable-selected-netwatch");
					document.forms['netwatch'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("netwatch").setAttribute("action", "{$_url}mikrotik/remove-selected-netwatch");
						document.forms['netwatch'].submit();
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
								<div class="panel-heading">Netwatch List</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-netwatch" data-toggle="modal" data-target="#add-netwatch" title="ADD NEW NETWATCH"><i class="ion ion-ios-sunny"></i> New Netwatch</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>								
									<hr>
									<div class="adv-table table-responsive">
										<form id="netwatch" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Host</th>
														<th>Timeout</th>
														<th>Interval</th>
														<th>since</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $netwatch as $netwatch_list}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$netwatch_list['.id']}">
														</td>
														<td>{$netwatch_list['host']}</td>
														<td>{$netwatch_list['timeout']}</td>
														<td>{$netwatch_list['interval']}</td>
														<td>{$netwatch_list['since']}</td>
														<td>	
													{if {$netwatch_list['disabled']} eq 'true' }
														<a href="{$_url}mikrotik/enable-netwatch&id={$netwatch_list['.id']}&host={$netwatch_list['host']}" id="{$netwatch_list['.id']}" title="ENABLE THIS NETWATCH"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
													{else}													
														<a href="{$_url}mikrotik/disable-netwatch&id={$netwatch_list['.id']}&host={$netwatch_list['host']}" id="{$netwatch_list['.id']}" title="DISABLE THIS NETWATCH"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>
													{/if}
												
													{if {$netwatch_list['status']} eq 'up' }
														<a href="#" id="{$netwatch_list['.id']}" title="Link Up" style="width:65px;" class="btn btn-success btn-sm cdelete">Up</a>
													{else}
														<a href="#" id="{$netwatch_list['.id']}" title="Link Down" style="width:65px;" class="btn btn-danger btn-sm cdelete">Down</a>
													{/if}
														</td>
														<td>
															<a href="{$_url}mikrotik/edit-netwatch&id={$netwatch_list['.id']}&host={$netwatch_list['host']}" id="{$netwatch_list['.id']}" title="EDIT THIS NETWATCH" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true">
															</a>
															<a href="{$_url}mikrotik/remove-netwatch&id={$netwatch_list['.id']}&host={$netwatch_list['host']}" id="{$netwatch_list['.id']}" title="REMOVE THIS NETWATCH" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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
				
		<!--modal add netwatch -->
			<div class="modal fade" id="add-netwatch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Netwatch</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-netwatch" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Host</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="host" id="host" placeholder="example, 192.168.1.1" required>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">						
									<div class="form-group">
										<label class="col-md-2 control-label">Comment</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="comment" id="comment" value="add by mixbill-manager">
										</div>
									</div>
								</div>		
								<div class="col-md-3 col-sm-6">						
									<div class="form-group">
										<label class="col-md-2 control-label">Interval</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="interval" id="interval" placeholder="example, 06:00:00" required>
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Timeout</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="timeout" id="timeout" value="00:00:01" placeholder="example, 443" required>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Up Script</label>
									<div class="col-md-6">
										<textarea name="up_script" id="up_script"  class="form-control" placeholder="insert script name or write script command here ..."></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Down Script</label>
									<div class="col-md-6">
										<textarea name="down_script" id="down_script"  class="form-control" placeholder="insert script name or write script command here ..."></textarea>
									</div>
								</div>	
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Netwatch</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add netwatch -->				

{include file="sections/footer.tpl"}
