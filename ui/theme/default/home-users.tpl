{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">{$_L['Manage_Administrator']}</div>
								<div class="panel-body">
									<a class="btn btn-success waves-effect" href="#add-administrator" data-toggle="modal" data-target="#add-administrator" title="ADD NEW ADMIN USER OR SALES USER"><i class="ion ion-android-add"> </i> {$_L['Add_Administrator']}</a>
									<hr/>
									<div class="adv-table table-responsive">								
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-0">
											<thead>
												<tr>	
													<th>{$_L['Full_Name']}</th>
													<th>{$_L['Username']}</th>
													<th>{$_L['Type']}</th>
													<th>{$_L['Routers']}</th>
													<th>{$_L['Advance_Permission']}</th>
													<th>{$_L['Last_Login']}</th>
													<th>{$_L['Manage']}</th>
												</tr>
											</thead>
											<tbody>
											{foreach $d as $ds}
												<tr>
													<td>{$ds['fullname']}</td>
													<td>{$ds['username']}</td>
													<td>{$ds['user_type']}</td>
													<td>{$ds['router_name']}</td>
												{if $ds['permission'] eq 'Full Administrator' || $ds['permission'] eq 'Default Permission'}	
													<td>{$ds['permission']}</td>
												{else}
													<td><a href="#" title="{$ds['permission']|strtoupper}">{$_L['Custom']}</a></td>
												{/if}	
													<td>{$ds['last_login']}</td>
													<td>
															<a href="{$_url}home-settings/users-edit/{$ds['id']}" title="EDIT THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
														{if ($_admin['username']) neq ($ds['username'])}
															<a onClick="return confirm('{$_L['Remove_Alert']}')" href="{$_url}home-settings/users-delete/{$ds['id']}" id="{$ds['id']}" title="REMOVE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
														{/if}
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
					
			<!--modal add admin -->
				<div class="modal fade" id="add-administrator" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel">{$_L['Add_New_Administrator']}</h4>
							</div>
							<div class="modal-body">
								<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-settings/users-post" enctype="multipart/form-data">
									<div class="tabbable"> <!-- Only required for left/right tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#account" data-toggle="tab">{$_L['Account']}</a></li>
											<li><a href="#permission" data-toggle="tab">{$_L['Advance_Permission']}</a></li>
											<li><a href="#photo" data-toggle="tab">{$_L['Photo']}</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="account">
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['Username']}</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="username" name="username" placeholder="username">
														</div>
													</div>
												</div>
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['Name']}</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="fullname" name="fullname" placeholder="fullname">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['User_Type']}</label>
													<div class="col-md-6">
														<select name="user_type" id="user_type" class="form-control">
															<option id="router_select" selected>- {$_L['Select_User_Type']} -</option>
															<option id="admin" name="admin" value="Admin">{$_L['Full_Administrator']}</option>
															<option id="sales" name="sales" value="Sales">{$_L['Sales']}</option>
														</select>
													</div>
												</div>
												<div style="display:none;" class="form-group" id="router_name">
													<label class="col-md-2 control-label">{$_L['Routers']}</label>
													<div class="col-md-6">
														<select id="router_name" name="router_name" class="form-control">
															<option value="" selected>- {$_L['Select_Routers']} -</option>
														{foreach $r as $rs}
															<option value="{$rs['name']}">{$rs['name']}</option>
														{/foreach}
														</select>
													</div>
												</div>					
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['Password']}</label>
														<div class="col-md-6">
															<input type="password" class="form-control" id="password" name="password" placeholder="password">
														</div>
													</div>
												</div>
												<div class="col-md-3 col-sm-6">	
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['Confirm_Password']}</label>
														<div class="col-md-6">
															<input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="repeat password">
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="permission">
												<div style="display:none;" class="form-group" id="full_admin_label">
													<label style="text-align:center" class="col-md-2 control-label">{$_L['Admin_Permission_Note']}</label>
												</div>												
												<div style="display:none;" class="form-group" id="permission_label">
													<label class="col-md-2 control-label">{$_L['Permission_Note']}</label>
												</div>
												<div style="display:none;" class="form-group" id="permission1">							
													<div class="col-sm-6">	
														<input id="hotspot_manage" type="checkbox" name="permission[]" value="api_hotspot_manage"> {$_L['API_Hotspot_Manage']}<br>
														<input id="hotspot_view" type="checkbox" name="permission[]" value="api_hotspot_view"> {$_L['API_Hotspot_View']}<br>
														<input id="pppoe_manage" type="checkbox" name="permission[]" value="api_pppoe_manage"> {$_L['API_PPPOE_Manage']}
													</div>	
													<div class="col-sm-6">	
														<input id="pppoe_view" type="checkbox" name="permission[]" value="api_pppoe_view"> {$_L['API_PPPOE_View']}<br>
														<input type="checkbox" name="permission[]" value="create_own_profile"> {$_L['Allow_Create_Profile']}
													</div>
												</div>												
											</div>
											<div class="tab-pane" id="photo">
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Photo_Image_Size']}<br></label>
													<div style="margin-top:10px" class="col-md-6">					
														<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
													</div>
												</div>											
											</div>										
										</div>
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Create_Account']}</button>
										</div>										
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>	
			<!--modal add admin -->	

<script>
$('#hotspot_manage').change(function() {
    $('#hotspot_view').attr('disabled',this.checked)
});

$('#pppoe_manage').change(function() {
    $('#pppoe_view').attr('disabled',this.checked)
});
</script>			

{include file="sections/home-footer.tpl"}
