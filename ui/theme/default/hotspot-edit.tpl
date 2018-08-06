{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Plan']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}services/edit-post">
										<input type="hidden" name="id" value="{$d['id']}">
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Name']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name" name="name" value="{$d['name_plan']}" readonly>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Owner']}</label>
												<div class="col-md-6">
												{if $_admin['user_type'] eq 'Admin'}
													<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" required>						
														<option value="{$d['owner_id']}">{$_L['Current']} : {$d['owner_name']}</option>
													{foreach $o as $os}
														<option value="{$os['id']}">{$os['username']}</option>
													{/foreach}						
													</select>
												{else}
													<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" readonly>
														<option value="{$_admin['id']}">{$_admin['username']}</option>							
													</select>
												{/if}
												</div>	
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Plan_Type']}</label>
											<div class="col-md-6">
												<input type="radio" id="Unlimited" name="typebp" value="Unlimited" {if $d['typebp'] eq 'Unlimited'} checked {/if}> {$_L['Unlimited']} 
												<input style="margin-left:10px" type="radio" id="Limited" name="typebp" value="Limited" {if $d['typebp'] eq 'Limited'} checked {/if}> {$_L['Limited']} 
											</div>
										</div>
										<div {if $d['typebp'] eq 'Unlimited'} style="display:none;" {/if} id="Type">
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Limit_Type']}</label>
												<div class="col-md-6">
													<input type="radio" id="Time_Limit" name="limit_type" value="Time_Limit" {if $d['limit_type'] eq 'Time_Limit'} checked {/if}> {$_L['Time_Limit']} 
													<input style="margin-left:10px" type="radio" id="Data_Limit" name="limit_type" value="Data_Limit" {if $d['limit_type'] eq 'Data_Limit'} checked {/if}> {$_L['Data_Limit']} 
													<input style="margin-left:10px" type="radio" id="Both_Limit" name="limit_type" value="Both_Limit" {if $d['limit_type'] eq 'Both_Limit'} checked {/if}> {$_L['Both_Limit']} 
												</div>
											</div>
										</div>
										<div {if $d['typebp'] eq 'Unlimited'} style="display:none;" {elseif ($d['time_limit']) eq '0'} style="display:none;" {/if} id="TimeLimit">
											<div class="col-md-3 col-sm-6">											
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Time_Limit']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="time_limit" name="time_limit" value="{$d['time_limit']}">
													</div>
												</div>
											</div>

											<div class="col-md-3 col-sm-6">	
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Time_Unit']}</label>
													<div class="col-md-6">
														<select class="form-control" id="time_unit" name="time_unit" >
															<option value="H" {if $d['time_unit'] eq 'H'} selected {/if}>{$_L['Hours']}</option>
															<option value="D" {if $d['time_unit'] eq 'D'} selected {/if}>{$_L['Days']}</option>
															<option value="M" {if $d['time_unit'] eq 'M'} selected {/if}>{$_L['Months']}</option>
														</select>
													</div>	
												</div>
											</div>
										</div>	
										<div {if $d['typebp'] eq 'Unlimited'} style="display:none;" {elseif ($d['data_limit']) eq '0'} style="display:none;" {/if} id="DataLimit">	
											<div class="col-md-3 col-sm-6">	
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Data_Limit']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="data_limit" name="data_limit" value="{$d['data_limit']}">
													</div>
												</div>
											</div>

											<div class="col-md-3 col-sm-6">		
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Data_Unit']}</label>
													<div class="col-md-2">
														<select class="form-control" id="data_unit" name="data_unit">
															<option value="M" {if $d['data_unit'] eq 'MB'} selected {/if}>MB</option>
															<option value="G" {if $d['data_unit'] eq 'GB'} selected {/if}>GB</option>
														</select>
													</div>
												</div>		
											</div>
										</div>
										<div class="col-md-3 col-sm-6">			
											<div class="form-group">
												<label class="col-md-2 control-label">Bandwidth</label>
												<div class="col-md-6">
													<select id="id_bw" name="id_bw" class="form-control">
														{foreach $b as $bs}
															<option value="{$bs['id']}" {if $d['id_bw'] eq $bs['id']} selected {/if}>{$bs['name_bw']}</option>
														{/foreach}
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">			
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Plan_Price']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="price" name="price" value="{$d['price']}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Plan_Validity']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="validity" name="validity" value="{$d['validity']}">
													<span class="help-block">{$_L['validity_help']}</span>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Time_Unit']}</label>
												<div class="col-md-6">
													<select class="form-control" id="validity_unit" name="validity_unit">
														<option value="H" {if $d['validity_unit'] eq 'H'} selected {/if}>{$_L['Hours']}</option>
														<option value="D" {if $d['validity_unit'] eq 'D'} selected {/if}>{$_L['Days']}</option>
														<option value="M" {if $d['validity_unit'] eq 'M'} selected {/if}>{$_L['Months']}</option>
													</select>
												</div>
											</div>
										</div>		
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Shared_Users']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="sharedusers" name="sharedusers" value="{$d['shared_users']}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Router_Name']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="routers" name="routers" value="{$d['routers']}" readonly>
											</div>
										</div>
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a onclick="window.history.back()" href="#back">{$_L['Cancel']}</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>	
				</section>
			</div>						

{include file="sections/footer.tpl"}
