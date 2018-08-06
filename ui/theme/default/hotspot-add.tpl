{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Add_Hotspot_Plan']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}services/add-post" >
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Name']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name" name="name" placeholder="use different name">
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
											<label class="col-md-2 control-label">{$_L['Plan_Type']}</label>
											<div style="margin-top:7px;" class="col-md-6">
												<input type="radio" id="Unlimited" name="typebp" value="Unlimited" checked> {$_L['Unlimited']} 
												<input style="margin-left:10px;" type="radio" id="Limited" name="typebp" value="Limited"> {$_L['Limited']} 
											</div>
										</div>
										<div style="display:none;" id="Type">
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Limit_Type']}</label>
												<div style="margin-top:7px;" class="col-md-6">
													<input type="radio" id="Time_Limit" name="limit_type" value="Time_Limit" checked> {$_L['Time_Limit']} 
													<input style="margin-left:10px;" type="radio" id="Data_Limit" name="limit_type" value="Data_Limit"> {$_L['Data_Limit']} 
													<input style="margin-left:10px;" type="radio" id="Both_Limit" name="limit_type" value="Both_Limit"> {$_L['Both_Limit']} 
												</div>
											</div>
										</div>
										<div style="display:none;" id="TimeLimit">
											<div class="col-md-3 col-sm-6">	
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Time_Limit']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="time_limit" name="time_limit" value="0">
													</div>
												</div>
											</div>	
											<div class="col-md-3 col-sm-6">		
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Time_Unit']}</label>
													<div class="col-md-6">
														<select class="form-control" id="time_unit" name="time_unit">
															<option value="H">{$_L['Hours']}</option>
															<option value="D">{$_L['Days']}</option>
															<option value="M">{$_L['Months']}</option>
														</select>
													</div>
												</div>		
											</div>	
										</div>
										<div style="display:none;" id="DataLimit">
											<div class="col-md-3 col-sm-6">		
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Data_Limit']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="data_limit" name="data_limit" value="0">
													</div>
												</div>
											</div>	
											<div class="col-md-3 col-sm-6">
												<div class="form-group">	
													<label class="col-md-2 control-label">{$_L['Data_Unit']}</label>
													<div class="col-md-6">
														<select class="form-control" id="data_unit" name="data_unit">
															<option value="M">MB</option>
															<option value="G">GB</option>
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
														<option value="">- {$_L['Select_BW']} -</option>
														{foreach $d as $ds}
															<option value="{$ds['id']}">{$ds['name_bw']}</option>
														{/foreach}
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Plan_Price']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="price" name="price" placeholder="plan price">
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Plan_Validity']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="validity" name="validity" value="0">
													<span class="help-block">{$_L['validity_help']}</span>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">			
											<div class="form-group">									
												<label class="col-md-2 control-label">{$_L['Time_Unit']}</label>
												<div class="col-md-6">
													<select class="form-control" id="validity_unit" name="validity_unit">
														<option value="H">{$_L['Hours']}</option>
														<option value="D">{$_L['Days']}</option>
														<option value="M">{$_L['Months']}</option>
													</select>
												</div>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Shared_Users']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="sharedusers" name="sharedusers" value="1">
											</div>
										</div>									
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Router_Name']}</label>
											<div class="col-md-6">
												<select id="routers" name="routers" class="form-control">
													<option value=''>- {$_L['Select_Routers']} -</option>
													{foreach $r as $rs}
														<option value="{$rs['name']}">{$rs['name']}</option>
													{/foreach}
												</select>
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
