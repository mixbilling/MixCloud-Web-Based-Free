{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}						
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Administrator']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-settings/users-edit-post" name="postform" enctype="multipart/form-data">
										<div class="tabbable"> <!-- Only required for left/right tabs -->
											<ul class="nav nav-tabs">
												<li class="active"><a href="#account" data-toggle="tab">{$_L['Account']}</a></li>
												<li><a href="#permission" data-toggle="tab">{$_L['Advance_Permission']}</a></li>
												<li><a href="#photo" data-toggle="tab">{$_L['Photo']}</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" id="account">
													<input type="hidden" name="id" value="{$d['id']}">
													<div class="col-md-3 col-sm-6">	
														<div class="form-group">
															<label class="col-md-2 control-label">{$_L['Username']}</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="username" name="username" value="{$d['username']}" readonly>
															</div>
														</div>
													</div>
													<div class="col-md-3 col-sm-6">	
														<div class="form-group">
															<label class="col-md-2 control-label">{$_L['Name']}</label>
															<div class="col-md-6">
																<input type="text" class="form-control" id="fullname" name="fullname" value="{$d['fullname']}">
															</div>
														</div>
													</div>	
												{if ($_admin['id']) neq ($d['id'])}
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['User_Type']}</label>
														<div class="col-md-6">
															<select name="user_type" id="user_type" class="form-control">
																<option id="admin" name="admin" value="Admin" {if $d['user_type'] eq 'Admin'}selected="selected" {/if}>Full Administrator</option>
																<option id="sales" name="sales" value="Sales" {if $d['user_type'] eq 'Sales'}selected="selected" {/if}>Sales</option>
															</select>
														</div>
													</div>
												{if $d['user_type'] eq 'Admin'}
													<div style="display:none;" class="form-group" id="router_name">
														<label class="col-md-2 control-label">{$_L['Routers']}</label>
														<div class="col-md-6">
															<select id="router_name" name="router_name" class="form-control">
																<option value="{$d['router_name']}" selected>- {$_L['Select_Routers']} -</option>
															{foreach $r as $rs}
																<option value="{$rs['name']}">{$rs['name']}</option>
															{/foreach}
															</select>
														</div>
													</div>
												{else}
													<div class="form-group" id="router_name">
														<label class="col-md-2 control-label">{$_L['Routers']}</label>
														<div class="col-md-6">
															<select id="router_name" name="router_name" class="form-control">
																<option value="{$d['router_name']}" selected>Current Router : {$d['router_name']}</option>
															{foreach $r as $rs}
																<option value="{$rs['name']}">{$rs['name']}</option>
															{/foreach}
															</select>
														</div>
													</div>
												{/if}		
												{/if}
													<div class="col-md-3 col-sm-6">
														<div class="form-group">
															<label class="col-md-2 control-label">{$_L['Password']}</label>
															<div class="col-md-6">
																<input type="password" class="form-control" id="password" name="password" placeholder="{$_L['password_change_help']}">
															</div>
														</div>
													</div>
													<div class="col-md-3 col-sm-6">	
														<div class="form-group">
															<label class="col-md-2 control-label">{$_L['Confirm_Password']}</label>
															<div class="col-md-6">
																<input type="password" class="form-control" id="cpassword" name="cpassword">
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="permission">
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['Advance_Permission']}</label>
														<div class="col-md-6">
															<input type="text" class="form-control" id="current_permission" name="current_permission" value="{$d['permission']}" readonly>
														</div>
													</div>
												{if $d['user_type'] neq 'Admin'}	

													<div class="form-group" id="permission1">
														<label class="col-md-2 control-label">{$_L['Permission_Note']}</label>
														<div class="col-sm-6">	
															<input id="hotspot_manage" type="checkbox" name="permission[]" value="api_hotspot_manage" {if $d['permission']|strstr:"hotspot_manage"}checked{/if}> {$_L['API_Hotspot_Manage']}<br>
															<input id="hotspot_view" type="checkbox" name="permission[]" value="api_hotspot_view" {if $d['permission']|strstr:"hotspot_view"}checked{/if}> {$_L['API_Hotspot_View']}<br>
															<input id="pppoe_manage" type="checkbox" name="permission[]" value="api_pppoe_manage" {if $d['permission']|strstr:"pppoe_manage"}checked{/if}> {$_L['API_PPPOE_Manage']}
														</div>
														<div class="col-sm-6">		
															<input id="pppoe_view" type="checkbox" name="permission[]" value="api_pppoe_view" {if $d['permission']|strstr:"pppoe_view"}checked{/if}> {$_L['API_PPPOE_View']}<br>
															<input type="checkbox" name="permission[]" value="create_own_profile" {if $d['permission']|strstr:"create_own_profile"}checked{/if}> {$_L['Allow_Create_Profile']}
														</div>
													</div>
												{else}
													<div style="display:none;" class="form-group" id="permission_label">
														<label class="col-md-12 control-label">{$_L['Permission_Note']}</label>
													</div>
													<hr style="display:none;margin-top:-15px;margin-bottom:10px;" id="permission_separate">					
													<div style="display:none;" class="form-group" id="permission1">
														<label class="col-md-2 control-label"></label>						
														<div class="col-md-6">
															<input id="hotspot_manage" type="checkbox" name="permission[]" value="api_hotspot_manage" {if $d['permission']|strstr:"hotspot_manage"}checked{/if}> {$_L['API_Hotspot_Manage']}<br>
															<input id="hotspot_view" type="checkbox" name="permission[]" value="api_hotspot_view" {if $d['permission']|strstr:"hotspot_view"}checked{/if}> {$_L['API_Hotspot_View']}<br>
															<input id="pppoe_manage" type="checkbox" name="permission[]" value="api_pppoe_manage" {if $d['permission']|strstr:"pppoe_manage"}checked{/if}> {$_L['API_PPPOE_Manage']}
														</div>	
														<div class="col-sm-6">		
															<input id="pppoe_view" type="checkbox" name="permission[]" value="api_pppoe_view" {if $d['permission']|strstr:"pppoe_view"}checked{/if}> {$_L['API_PPPOE_View']}<br>
															<input type="checkbox" name="permission[]" value="create_own_profile" {if $d['permission']|strstr:"create_own_profile"}checked{/if}> {$_L['Allow_Create_Profile']}
														</div>
													</div>
												{/if}												
												</div>
												<div class="tab-pane" id="photo">
													<div class="form-group">
														<label class="col-md-2 control-label">{$_L['Photo_Image_Size']}<br></label>
														<div style="margin-top:10px" class="col-md-6">					
															<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
														</div>
													</div>
													<hr>
													<img alt="no image" style="max-width:100px;max-height: 100px" src="{$_theme}/images/admin/{$d['profile_img']}">												
												</div>											
											</div>
											<div style="margin-bottom:-10px" class="form-group"></div>	
											<hr>
											<div>									
												<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a href="{$_url}home-settings/users/">{$_L['Cancel']}</a>
											</div>										
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					
		
<script>
$('#hotspot_manage').change(function() {
    $('#hotspot_view').attr('disabled',this.checked)
});

$('#pppoe_manage').change(function() {
    $('#pppoe_view').attr('disabled',this.checked)
});
</script>		

{include file="sections/home-footer.tpl"}
