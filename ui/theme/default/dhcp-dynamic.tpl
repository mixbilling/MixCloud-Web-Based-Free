{include file="sections/header.tpl"}

			<script>				
				function mac_static() {
					document.getElementById("dynamic_lease").setAttribute("action", "{$_url}mikrotik/mac-static-selected");
					document.forms['dynamic_lease'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("dynamic_lease").setAttribute("action", "{$_url}mikrotik/remove-selected-dynamic");
						document.forms['dynamic_lease'].submit();
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
								<div class="panel-heading">DHCP Dynamic</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Lease</li>
												<li><a href="{$_url}mikrotik/dynamic-lease" title="DYNAMIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Dynamic Lease</a></li>	
												<li><a href="{$_url}mikrotik/static-lease" title="STATIC DHCP LEASE"><i class="ion ion-ios-sunny"></i> Static Lease</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="mac_static();"  href="#mac-static" title="MAC STATIC SELECTED"><i class="ion ion-ios-sunny"></i> Mac Static Selected</a></li>	
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>								
									<hr>								
									<div class="adv-table table-responsive">
										<form id="dynamic_lease" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>IP Address</th>
														<th>MAC Address</th>
														<th>Hostname</th>
														<th>Bound</th>
														<th>Make Static</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $dhcp_dynamic as $dynamic_ip}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$dynamic_ip['.id']}">
														</td>
														<td>{$dynamic_ip['address']}</td>
														<td>{$dynamic_ip['mac-address']}</td>
														<td>{$dynamic_ip['host-name']}</td>
													{if {$dynamic_ip['status']} eq 'bound' }
														<td>Bound</td>
													{else}
														<td>Waiting</td>
													{/if}
														<td>
														<a href="{$_url}mikrotik/make-static-lease&id={$dynamic_ip['.id']}&mac={$dynamic_ip['mac-address']}" id="{$dynamic_ip['.id']}" onClick="return confirm('MAKE STATIC THIS ADDRESS ?')" title="MAKE STATIC THIS ADDRESS"><span style="width:80px" class="btn btn-success btn-sm ">Make Static</span></a>
														</td>
														<td>										
															<a href="{$_url}mikrotik/remove-dynamic-lease&id={$dynamic_ip['.id']}&mac={$dynamic_ip['mac-address']}" id="{$dynamic_ip['.id']}" onClick="return confirm('{$_L['API_Remove_Alert']}')" title="REMOVE THIS ADDRESS" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
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

{include file="sections/footer.tpl"}
 