{include file="sections/header.tpl"}

			<script>				
				function print() {
					document.getElementById("voucher").setAttribute("target", "_blank");
					document.getElementById("voucher").setAttribute("action", "{$_url}manage-voucher/selected-voucher-print");						
					document.forms['voucher'].submit();
				}
				function remove() {
					if(confirm('{$_L["Remove_Alert"]}')){
						document.getElementById("voucher").removeAttribute("target", "_blank");
						document.getElementById("voucher").setAttribute("action", "{$_url}manage-voucher/remove-selected");
						document.forms['voucher'].submit();
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
								<div class="panel-heading">{$_L['Manage_Vouchers']}</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="#add-voucher" data-toggle="modal" data-target="#add-voucher" title="GENERATE NEW VOUCHER"><i class="ion ion-plus"> </i> {$_L['Add_Voucher']}</a></li>
												<li><a href="#print-voucher" data-toggle="modal" data-target="#print-voucher" title="PRINT ALL NEW VOUCHER" target="_blank"><i class="ion ion-android-print"></i> {$_L['Print_Voucher']}</a></li>	
												<li><a href="#print-prefix" data-toggle="modal" data-target="#print-prefix" title="PRINT VOUCHER BASED ON PREFIX"><i class="ion ion-android-print"></i> {$_L['Print_Prefix']}</a></li>
												<li><a href="#print-selected" onclick="print();" title="PRINT SELECTED VOUCHER"><i class="ion ion-android-print"></i> {$_L['Print_Selected']}</a></li>
												<li><a href="#remove-selected" onclick="remove();" title="REMOVE SELECTED VOUCHER"><i class="ion ion-trash-a"></i> {$_L['Remove_Selected']}</a></li>													
											</ul>
										</div>						
									</div>
									<br>
									<br>
									Note :
									<ul>
										<li>{$_L['Note_1']}</li>
									{if $_c['voucher_report'] eq 'on-create'}
										<li><a onClick="return confirm('{$_L['Remove_Alert']}');" href="{$_url}manage-voucher/delete-new-voucher" title="{$_L['Note_2']}"> {$_L['Remove_New_Voucher']}</a> , {$_L['Note_2']}</li>
										<li><a onClick="return confirm('{$_L['Remove_Alert']}');" href="{$_url}manage-voucher/delete-old-voucher" title="{$_L['Note_3']}"> {$_L['Remove_Old_Voucher']}</a> , {$_L['Note_3']}</li>
									{/if}	
									</ul>
									<hr>
									<div class="adv-table table-responsive">
										<form id="voucher" method="post" role="form" action="{$_url}manage-voucher/selected-voucher-print" >
											<table  class="display table table-bordered table-bordered" id="voucher-list">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Id</th>
														<th>{$_L['Owner']}</th>
														<th>{$_L['Type']}</th>
														<th>{$_L['Routers']}</th>
														<th>{$_L['Plan_Name']}</th>
														<th>{$_L['Code_Voucher']}</th>
														<th>{$_L['Password']}</th>
														<th>{$_L['Created_Date']}</th>
														<th style="max-width:130px">Status - {$_L['Manage']}</th>
													</tr>
												</thead>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						
				
			<div>
		<!--modal add voucher -->
			<div class="modal fade" id="add-voucher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">{$_L['Generate_Vouchers']}</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}manage-voucher/voucher-post" >
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label style="margin-top:-4px;" class="col-md-2 control-label">{$_L['Type']}</label>
										<div style="margin-top:3px;" class="col-md-6">
											<input type="radio" id="Hot" name="type" value="Hotspot"> HOTSPOT
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
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Routers']}</label>
										<div class="col-md-6">
											<select id="server" name="server" class="form-control">
												<option value=''>- {$_L['Select_Routers']} -</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">		
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Service_Plan']}</label>
										<div class="col-md-6">
											<select class="form-control select2" name="plan" id="plan" style="width: 100%" data-placeholder="- {$_L['Select_Plans']} -" required>
												<option value=''>- {$_L['Select_Plans']} -</option>
											</select>
										</div>
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Login_Method']}</label>
									<div class="col-md-6">
										<select id="loginmethod" name="loginmethod" class="form-control">
											<option value="" selected>- {$_L['Select_Login_Method']} -</option>
											<option value="voucher_code" name="voucher_code">{$_L['Voucher_Code']}</option>
											<option value="username_and_password" name="username_and_password">{$_L['Username_and_Password']}</option>
										</select>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Voucher_Prefix']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="userprefix" placeholder="{$_L['Insert_Voucher_Prefix']}">
										</div>
									</div>
								</div>					
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Number_of_Vouchers']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="numbervoucher" value="1">
										</div>
									</div>
								</div>	
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Length_Code']}</label>
										<div class="col-md-6">
											<input type="text" class="form-control" name="lengthcode" value="6">
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">			
									<div class="form-group">
										<label class="col-md-2 control-label">{$_L['Code_Combination']}</label>
										<div class="col-md-6">
											<select id="combination" name="combination" class="form-control">
												<option value="type1" selected>{$_L['Uppercase_Numbers']}</option>
												<option value="type2">{$_L['Lowercase_Numbers']}</option>
												<option value="type3">{$_L['Uppercase']}</option>
												<option value="type4">{$_L['Lowercase']}</option>											</select>
										</div>
									</div>
								</div>						
								<div  style="margin-bottom:-10px" class="form-group"></div>	
								<hr>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" type="submit">Generate</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add voucher -->	
			<div>
				
			<div>
		<!--modal print-prefix -->
			<div class="modal fade" id="print-prefix" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">{$_L['Print_Based_Prefix']}</h4>
						</div>
						<div class="modal-body">
							<form target="_blank" id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}manage-voucher/prefix-voucher-print" >
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
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Voucher_Prefix']}</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="voucher_prefix" placeholder="{$_L['Voucher_Prefix_which_to_be_Print']}">
									</div>
								</div>					
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" type="submit" name="prefix">{$_L['Print_Voucher']}</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal print-prefix -->	
			<div>

			<div>
		<!--modal print-voucher -->
			<div class="modal fade" id="print-voucher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">{$_L['Print_Voucher']}</h4>
						</div>
						<div class="modal-body">
							<form target="_blank" id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}manage-voucher/print-voucher" >
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
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Type']}</label>
									<div class="col-md-6">
										<select class="form-control" id="type" name="type" required>
											<option value="" selected="">- {$_L['Select_Type']} -</option>
											<option value="Hotspot">HOTSPOT</option>
											<option value="PPPOE">PPPOE</option>
										</select>
									</div>
								</div>				
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" type="submit" name="print-voucher">{$_L['Print_Voucher']}</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal print-voucher -->	
			<div>					

{include file="sections/footer.tpl"}