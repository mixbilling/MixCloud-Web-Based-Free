{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">{$_L['Routers']}</div>
								<div class="panel-body">
									<a class="btn btn-success waves-effect" href="#add-router" data-toggle="modal" data-target="#add-router" title="ADD NEW MIKROTIK ROUTER"><i class="ion ion-android-add"> </i> {$_L['Add_Router']}</a>
									<hr/>
									<div class="adv-table table-responsive">
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-0">
											<thead>
												<tr>
													<th>{$_L['Router_Name']}</th>
													<th>{$_L['IP_Address']}</th>
													<th>{$_L['Port']}</th>
													<th>{$_L['Username']}</th>
													<th>{$_L['Router_Secret']}</th>
													<th>{$_L['Hotspot_Domain']}</th>
													<th>UserManager</th>
													<th>{$_L['Manage']}</th>
												</tr>
											</thead>
											<tbody>
											{foreach $d as $ds}
												<tr>
													<td>{$ds['name']}</td>
													<td>{$ds['ip_address']}</td>
													<td>{$ds['port']}</td>
													<td>{$ds['username']}</td>
													<td>••••••</td>
													<td>{$ds['hotspot_domain']}</td>
												{if {$ds['usermanager']} eq 'Yes'}
													<td>YES</td>
												{else}
													<td>NO</td>
												{/if}
													<td>
														<a href="{$_url}home-routers/edit/{$ds['id']}" title="EDIT THIS MIKROTIK ROUTER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														<a onClick="return confirm('{$_L['Remove_Alert']}')" href="{$_url}home-routers/delete/{$ds['id']}" title="REMOVE THIS MIKROTIK ROUTER" id="{$ds['id']}" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
													</td>
												</tr>
											{/foreach}
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					
					
			<!--modal add router -->
				<div class="modal fade" id="add-router" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
					<div  class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel">{$_L['Add_Router']}</h4>
							</div>
							<div class="modal-body">
								<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-routers/add-post" >
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Name']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="example : RB750">
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['IP_Address']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="ip_address" name="ip_address" placeholder="192.168.1.1 or example.com">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Port']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="port" name="port" placeholder="your api port">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Username']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="username" name="username" placeholder="router username">
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Router_Secret']}</label>
											<div class="col-md-6">
												<input type="password" class="form-control" id="password" name="password" placeholder="router password">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Hotspot_Domain']}</label>
										<div class="col-md-6">
											<input class="form-control" id="hotspot_domain" name="hotspot_domain" placeholder="hotspot url without http://">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">User Manager</label>
										<div class="col-md-6">
											<select id="usermanager" name="usermanager" class="form-control" required>
												<option value="" selected>{$_L['Is_This_As_Usermanager']}</option>
												<option value="Yes" name="userman_router">{$_L['Yes']}</option>
												<option value="No" name="hotspot_router">{$_L['No']}</option>
											</select>
										</div>
									</div>
									<hr/>
									<div>									
										<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['add_Router']}</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
			<!--modal add router -->					

{include file="sections/home-footer.tpl"}
