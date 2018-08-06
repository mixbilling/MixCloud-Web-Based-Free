{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("walled").setAttribute("action", "{$_url}mikrotik/enable-selected-walled");
					document.forms['walled'].submit();
				}
				function disable() {
					document.getElementById("walled").setAttribute("action", "{$_url}mikrotik/disable-selected-walled");
					document.forms['walled'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("walled").setAttribute("action", "{$_url}mikrotik/remove-selected-walled");
						document.forms['walled'].submit();
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
								<div class="panel-heading">Walled Garden List</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#" data-toggle="modal" data-target="#add-walled-list"  title="ADD NEW WALLED IP"><i class="ion ion-ios-sunny"></i> New Walled IP</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="walled" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Dst Address</th>
														<th>Protocol</th>
														<th>Dst Port</th>
														<th>Action</th>													
														<th>Comment</th>													
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $walled_list as $walled}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$walled['.id']}">
														</td>
														<td>{$walled['dst-address']}</td>
														<td align="center">{$walled['protocol']}</td>
														<td align="center">{$walled['dst-port']}</td>
														<td align="center">{$walled['action']}</td>													
														<td>{$walled['comment']}</td>
													{if {$walled['disabled']} eq 'true' }
														<td>
														<a href="{$_url}mikrotik/enable-walled-list&id={$walled['.id']}" id="{$walled['.id']}" title="ENABLE THIS WALLED IP"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>
														</td>
													{else}
														<td>
														<a href="{$_url}mikrotik/disable-walled-list&id={$walled['.id']}" id="{$walled['.id']}" title="DISABLE THIS WALLED IP ?"><span style="width:65px;" class="btn btn-success btn-sm cdelete">Enable</span></a>													
														</td>
													{/if}													
														<td>
															<a href="{$_url}mikrotik/edit-walled-list&id={$walled['.id']}" id="{$walled['.id']}" title="EDIT THIS WALLED IP" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm cdelete fa fa-pencil-square-o" aria-hidden="true"></a>													
															<a href="{$_url}mikrotik/remove-walled-list&id={$walled['.id']}" id="{$walled['.id']}" title="REMOVE THIS WALLED IP" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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

		<!--modal add walled garden -->
			<div class="modal fade" id="add-walled-list" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Walled IP</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-walled-list" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Dst Address</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="dst_address" id="dst_address" placeholder="192.168.1.1"> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Dst Host</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="dst_host" id="dst_host" placeholder="topsetting.com">
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">Protocol</label>
									<div class="col-md-6">
										<select id="protocol" name="protocol" class="form-control">
											<option value="">- select protocol -</option>
											<option id="tcp" value="tcp">TCP</option>
											<option id="udp" value="udp">UDP</option>
											<option id="icmp" value="icmp">ICMP</option>
											<option id="gre" value="gre">GRE</option>
											<option id="ospf" value="ospf">OSPF</option>
											<option id="encap" value="encap">ENCAP</option>
										</select>
									</div>
								</div>
								<div class="form-group" id="dst_port">
									<label class="col-md-2 control-label">Dst Port</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="dst_port" id="dst_port" placeholder="single port, example : 443">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Action</label>
									<div class="col-md-6">
										<select id="action" name="action" class="form-control" required>
											<option value="">- select action -</option>
											<option value="accept">ACCEPT</option>
											<option value="drop">DROP</option>
											<option value="reject">REJECT</option>
										</select>
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Walled</button>								
								</div>
							</form>
						</div>	
					</div>
				</div>
			</div>
		<!--modal add walled garden -->				

{include file="sections/footer.tpl"}