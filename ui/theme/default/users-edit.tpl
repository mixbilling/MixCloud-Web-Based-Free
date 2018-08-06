{include file="sections/header.tpl"}

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
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}settings/users-edit-post" enctype="multipart/form-data">
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
													<option value="Admin" {if $d['user_type'] eq 'Admin'}selected="selected" {/if}>Full Administrator</option>
													<option value="Sales" {if $d['user_type'] eq 'Sales'}selected="selected" {/if}>Sales</option>
												</select>
											</div>
										</div>
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
										<div class="form-group">
											<label class="col-md-2 control-label">Permission</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="current_permission" name="current_permission" value="{$d['permission']}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label style="padding-left: 0" class="col-md-2 control-label"><label class="col-md-2 control-label">{$_L['Photo_Image_Size']}<br></label><br></label>
											<div style="margin-top:10px" class="col-md-6">					
												<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
											</div>
										</div>
										<hr>
										<img alt="no image" style="max-width:100px;max-height: 100px" src="{$_theme}/images/admin/{$d['profile_img']}">																				
										<div style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a href="{$_url}dashboard">{$_L['Cancel']}</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}