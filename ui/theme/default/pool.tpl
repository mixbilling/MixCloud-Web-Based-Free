{include file="sections/header.tpl"}

			<script>		
				function remove() {
					if(confirm('{$_L["Remove_Alert"]}')){
						document.getElementById("pool").setAttribute("action", "{$_url}pool/remove-selected");
						document.forms['pool'].submit();
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
								<div class="panel-heading">IP Pool</div>
								<div class="panel-body">								
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="#add-pool" data-toggle="modal" data-target="#add-pool" title="ADD NEW IP POOL"><i class="ion ion-plus"> </i> {$_L['Add_Pool']}</a>
												<li><a href="#" onclick="remove();" title="REMOVE SELECTED IP POOL"><i class="ion ion-trash-a"></i> {$_L['Remove_Selected']}</a></li>
											</ul>
										</div>
									</div>									
									<br>									
									<hr>
								<div class="adv-table table-responsive">
									<form id="pool" method="post" role="form">
										<table  class="display table table-bordered table-bordered" id="dynamic-table">
											<thead>
												<tr>
													<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
													<th>{$_L['Pool_Name']}</th>
													<th>{$_L['Range_IP']}</th>
													<th>{$_L['Routers']}</th>
													<th>{$_L['Owner']}</th>
													<th>{$_L['Manage']}</th>
												</tr>
											</thead>
											<tbody>
											{foreach $d as $ds}
												<tr>
													<td align="center">													
													{if $ds['owner_name'] eq $_admin['username'] || $_admin['user_type'] eq 'Admin'}
														<input type="checkbox" name="checked[]" value="{$ds['id']}">
													{else}	
														<input disabled type="checkbox">
													{/if}
													</td>
													<td>{$ds['pool_name']}</td>
													<td>{$ds['range_ip']}</td>
													<td>{$ds['routers']}</td>
													<td>{$ds['owner_name']}</td>
													<td>
													{if $ds['owner_name'] eq $_admin['username'] || $_admin['user_type'] eq 'Admin'}
														<a href="{$_url}pool/edit/{$ds['id']}" title="EDIT THIS IP POOL" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														<a onClick="return confirm('{$_L['Remove_Alert']}')" href="{$_url}pool/delete/{$ds['id']}" id="{$ds['id']}" title="REMOVE THIS IP POOL" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
													{else}
														<a href="#" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-ban disabled" aria-hidden="true"></a>
													{/if}
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
				</section>
			</div>						
					
		<!--modal add bandwidth -->
			<div class="modal fade" id="add-pool" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">{$_L['Add_Pool']}</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}pool/add-post" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Name']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="pool-name">
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Owner']}</label>
										<div class="col-md-6">
										{if $_admin['user_type'] eq 'Admin'}
											<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" required>						
												<option></option>
											{foreach $o as $os}
												<option value="{$os['id']}">{$os['username']}</option>
											{/foreach}						
											</select>
										{else}
											<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" readonly>
												<option value="{$_admin['id']}">{$_admin['username']}</option>
											</select>
										{/if}	
										</div>
									</div>
								</div>									
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Range_IP']}</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="ip_address" name="ip_address" placeholder="example : 192.168.88.2-192.168.88.254">
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Routers']}</label>
									<div class="col-md-6">
										<select id="routers" name="routers" class="form-control">
												<option selected>- {$_L['Select_Routers']} -</option>
											{foreach $r as $rs}
												<option value="{$rs['name']}">{$rs['name']}</option>
											{/foreach}
										</select>
									</div>
								</div>
								<hr/>
								<div>									
									<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Add_Pool']}</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add bandwidth -->					

{include file="sections/footer.tpl"}